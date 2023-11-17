function sortByName(tableId) {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById(tableId);
    switching = true;
    while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            // Assuming the name is in the first column
            x = rows[i].getElementsByTagName("TD")[0];
            y = rows[i + 1].getElementsByTagName("TD")[0];
            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                shouldSwitch = true;
                break;
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}

function sortByReleaseDate(tableId) {
    var table, rows, switching, i, x, y, shouldSwitch, xDate, yDate;
    table = document.getElementById(tableId);
    switching = true;
    while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            x = rows[i].getElementsByTagName("TD")[1]; // Assuming release date is in the second column
            y = rows[i + 1].getElementsByTagName("TD")[1];
            xDate = new Date(x.innerHTML.trim());
            yDate = new Date(y.innerHTML.trim());
            if (xDate > yDate) {
                shouldSwitch = true;
                break;
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}

function toggleTables(tableSide) {
    var leftTable = document.getElementById('leftTable');
    var rightTable = document.getElementById('rightTable');
    if (tableSide === 'left') {
        leftTable.style.display = 'block';
        rightTable.style.display = 'none';
    } else {
        leftTable.style.display = 'none';
        rightTable.style.display = 'block';
    }
}
