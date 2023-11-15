function addToFavorites(championId) {
    $.ajax({
        url: addToFavoritesUrl,
        type: 'POST',
        data: { championId: championId },
        success: function (response) {
            if (response.success) {
                alert("Added to favorites successfully!");
            }
        },
        error: function () {
            alert("Error adding to favorites");
        }
    });
}
