function addToFavorites(championId) {
    console.log("Adding to favorites:", championId);
    $.ajax({
        url: addToFavoritesUrl,
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ championId: championId }),
        success: function (data) {
            if (data.success) {
                fetchUpdatedFavorites();
            } else {
                console.error('Add to favorites failed:', data.message);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error adding to favorites:', textStatus, errorThrown);
        }
    });
}

function removeFromFavorites(championId) {
    console.log("Removing from favorites:", championId);
    $.ajax({
        url: removeFromFavoritesUrl,
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ championId: championId }),
        success: function (data) {
            if (data.success) {
                fetchUpdatedFavorites();
            } else {
                console.error('Remove from favorites failed:', data.message);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error removing from favorites:', textStatus, errorThrown);
        }
    });
}


function fetchUpdatedFavorites() {
    fetch('/Home/GetUpdatedFavorites')
        .then(response => response.json())
        .then(data => {
            updateFavoritesGrid(data); // Function to update the grid with new data
        });
}

function updateFavoritesGrid(favorites) {
    // Logic to update the favorites grid with new data

    // Clear existing favorite containers
    document.querySelectorAll('.favorite-champion-container').forEach(container => {
        container.innerHTML = ''; // Clear the existing content
    });

    // Populate each container with updated favorites
    favorites.forEach(champion => {
        // Create new favorite champion cell
        let cell = createFavoriteCell(champion);

        // Append cell to appropriate containers based on sorting
        document.getElementById('favoriteContainerByName').appendChild(cell.cloneNode(true));
        document.getElementById('favoriteContainerByNameDesc').appendChild(cell.cloneNode(true));
        document.getElementById('favoriteContainerByReleaseDate').appendChild(cell.cloneNode(true));
        document.getElementById('favoriteContainerByReleaseDateDesc').appendChild(cell.cloneNode(true));
    });
}

function createFavoriteCell(champion) {
    // Create elements for the champion cell
    let cell = document.createElement('div');
    cell.className = 'champion-cell';
    cell.onclick = function () { removeFromFavorites(champion.ChampionId); };

    let img = document.createElement('img');
    img.src = champion.ImageUrl;
    img.alt = champion.Name;

    let nameSpan = document.createElement('span');
    nameSpan.className = 'champion-name';
    nameSpan.textContent = champion.Name;

    let dateSpan = document.createElement('span');
    dateSpan.className = 'champion-release-date';
    dateSpan.textContent = new Date(champion.ReleaseDate).toISOString().split('T')[0];

    // Append elements to the cell
    cell.appendChild(img);
    cell.appendChild(nameSpan);
    cell.appendChild(dateSpan);

    return cell;
}
