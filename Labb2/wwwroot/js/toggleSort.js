function toggleSort(sortType) {
    // Get the current state of the sorting buttons
    var nameSortButton = document.getElementById('toggleNameSort');
    var releaseSortButton = document.getElementById('toggleReleaseSort');

    // Hide all containers initially
    document.getElementById('championContainerByName').style.display = 'none';
    document.getElementById('championContainerByNameDesc').style.display = 'none';
    document.getElementById('championContainerByRelease').style.display = 'none';
    document.getElementById('championContainerByReleaseDesc').style.display = 'none';

    // Determine which container to show based on the sortType and current button text
    if (sortType === 'name') {
        if (nameSortButton.textContent.includes('Z-A')) {
            document.getElementById('championContainerByNameDesc').style.display = 'grid';
            nameSortButton.textContent = 'A-Z';
        } else {
            document.getElementById('championContainerByName').style.display = 'grid';
            nameSortButton.textContent = 'Z-A';
        }
        // Reset the Release button to its default state
        // releaseSortButton.textContent = 'New';
    } else if (sortType === 'release') {
        if (releaseSortButton.textContent.includes('New')) {
            document.getElementById('championContainerByReleaseDesc').style.display = 'grid';
            releaseSortButton.textContent = 'Old';
        } else {
            document.getElementById('championContainerByRelease').style.display = 'grid';
            releaseSortButton.textContent = 'New';
        }
        // Reset the Name button to its default state
        // nameSortButton.textContent = 'A-Z';
    }
}
