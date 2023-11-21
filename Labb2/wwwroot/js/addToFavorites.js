function addToFavorites(championId) {
    console.log("Adding to favorites:", championId);
    $.ajax({
        url: addToFavoritesUrl,
        type: 'POST',
        data: { championId: championId },
        success: function (response) {
            if (response.success) {
                fetchUpdatedFavorites();
            } else {
                console.error('Add to favorites failed:', response.message);
            }
        },
        error: function () {
            console.error('Error adding to favorites');
        }
    });
}

function removeFromFavorites(championId) {
    console.log("Removing from favorites:", championId);
    $.ajax({
        url: removeFromFavoritesUrl,
        type: 'POST',
        data: { championId: championId },
        success: function (response) {
            if (response.success) {
                fetchUpdatedFavorites();
            } else {
                console.error('Remove from favorites failed:', response.message);
            }
        },
        error: function () {
            console.error('Error removing from favorites');
        }
    });
}

function fetchUpdatedFavorites() {
    fetch('/Home/GetUpdatedFavorites')
        .then(response => response.json())
        .then(data => {
            console.log("Received data:", data); // Log data for debugging
            updateFavoritesGrid(data);
        });
}

function updateFavoritesGrid(favorites) {
    // Clear existing favorite containers
    ['favoriteContainerByName', 'favoriteContainerByNameDesc', 'favoriteContainerByReleaseDate', 'favoriteContainerByReleaseDateDesc']
        .forEach(containerId => {
            const container = document.getElementById(containerId);
            container.innerHTML = ''; // Clear the existing content

            // Repopulate with updated favorites
            favorites.forEach(champion => {
                let cell = createFavoriteCell(champion);
                container.appendChild(cell);
            });
        });
}



function createFavoriteCell(champion) {
    let cell = document.createElement('div');
    cell.className = 'favorite-champion-cell';
    cell.onclick = function () { removeFromFavorites(champion.championId); };

    let img = document.createElement('img');
    img.src = champion.imageUrl || '/path/to/valid/default/image.jpg'; // Replace with a valid default image path
    img.alt = champion.name || 'Unknown Champion';

    let nameSpan = document.createElement('span');
    nameSpan.className = 'champion-name';
    nameSpan.textContent = champion.name || 'Unknown';

    let dateSpan = document.createElement('span');
    dateSpan.className = 'champion-release-date';

    if (champion.releaseDate && !isNaN(new Date(champion.releaseDate).getTime())) {
        // Parse the date as UTC
        const releaseDate = new Date(champion.releaseDate + 'Z');
        dateSpan.textContent = releaseDate.toISOString().split('T')[0];
    } else {
        dateSpan.textContent = 'Unknown Date';
    }

    cell.appendChild(img);
    cell.appendChild(nameSpan);
    cell.appendChild(dateSpan);

    return cell;
}





