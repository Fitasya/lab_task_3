<?php
require 'conn.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Country List</title>
</head>

<body>
    <h1>LIST OF COUNTRIES</h1>
    <form method="POST">
        <div>Region:</div>
        <select name="region" id="region">
            <option value="All">All</option>}
            <option value="Asia & Pacific">Asia & Pacific</option>
            <option value="South/Latin America">South/Latin America</option>
            <option value="North America">North America</option>
            <option value="Europe">Europe</option>
            <option value="Africa">Africa</option>
        </select>
        <br><br>
        <div>North-South Divide:</div>
        <select name="divide" id="divide">
            <option value="All">All</option>}
            <option value="Global North">Global North</option>
            <option value="Global South">Global South</option>
        </select>
        <br><br>
        <input type="submit" value="Filter">
        <br><br>
    </form>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Name</th>
            <th>Region</th>
            <th>North-South Divide</th>
            <th>Action</th>
        </tr>
        <?php
        if (isset($_POST['region'])) {
            $region = $_POST['region'];
            $divide = $_POST['divide'];
        } else {
            $region = 'All';
            $divide = 'All';
        }
        if ($region == 'All' && $divide == 'All') {
            $sql = "SELECT * FROM countrylist";
        } else if ($region == 'All') {
            $sql = "SELECT * FROM countrylist WHERE divide = '$divide'";
        } else if ($divide == 'All') {
            $sql = "SELECT * FROM countrylist WHERE region = '$region'";
        } else {
            $sql = "SELECT * FROM countrylist WHERE region = '$region' AND divide = '$divide'";
        }

        if ($result = $conn->query($sql)) {
            while ($row = $result->fetch_object()) {
        ?>
                <tr>
                    <td><?php echo $row->countryname; ?></td>
                    <td><?php echo $row->region; ?></td>
                    <td><?php echo $row->divide; ?></td>
                    <td>
                        <a href="details.php?idcountry=<?php echo $row->idcountry; ?>">More Details</a>
                    </td>
                </tr>
        <?php

            }
        }
        ?>
    </table>
</body>

</html>