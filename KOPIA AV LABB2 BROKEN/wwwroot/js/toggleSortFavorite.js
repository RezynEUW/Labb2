function toggleSortFavorite(sortType) {
    // Get the current state of the sorting buttons for favorites
    var nameSortButton = document.getElementById('toggleFavoriteNameSort');
    var releaseSortButton = document.getElementById('toggleFavoriteReleaseSort');

    // Hide all favorite containers initially
    document.getElementById('favoriteContainerByName').style.display = 'none';
    document.getElementById('favoriteContainerByNameDesc').style.display = 'none';
    document.getElementById('favoriteContainerByReleaseDate').style.display = 'none';
    document.getElementById('favoriteContainerByReleaseDateDesc').style.display = 'none';

    // Determine which favorite container to show based on the sortType and current button text
    if (sortType === 'Name') {
        if (nameSortButton.textContent.includes('Z-A')) {
            document.getElementById('favoriteContainerByNameDesc').style.display = 'grid';
            nameSortButton.textContent = 'A-Z';
        } else {
            document.getElementById('favoriteContainerByName').style.display = 'grid';
            nameSortButton.textContent = 'Z-A';
        }
    } else if (sortType === 'ReleaseDate') {
        if (releaseSortButton.textContent.includes('New')) {
            document.getElementById('favoriteContainerByReleaseDateDesc').style.display = 'grid';
            releaseSortButton.textContent = 'Old';
        } else {
            document.getElementById('favoriteContainerByReleaseDate').style.display = 'grid';
            releaseSortButton.textContent = 'New';
        }
    }
}
