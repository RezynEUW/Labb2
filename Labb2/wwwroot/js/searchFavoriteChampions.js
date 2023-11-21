function searchFavoriteChampions() {
    var input, filter, cells, i, txtValue;
    input = document.getElementById("searchFavoriteInput");
    filter = input.value.toUpperCase();
    cells = document.getElementsByClassName("favorite-champion-cell");

    // Loop through all favorite cells and hide those who don't match the search query
    for (i = 0; i < cells.length; i++) {
        txtValue = cells[i].getElementsByClassName("champion-name")[0].textContent ||
            cells[i].getElementsByClassName("champion-name")[0].innerText;

        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            cells[i].style.display = ""; // Show the cell
        } else {
            cells[i].style.display = "none"; // Hide the cell
        }
    }
}
