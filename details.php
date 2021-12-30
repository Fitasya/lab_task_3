<?php
require 'conn.php';
$idcountry = $_GET['idcountry'];
$sql = "SELECT * FROM countrylist WHERE idcountry = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $idcountry);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_object();
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
    <h1><?php echo $row->countryname; ?> Details</h1>
    <table border="0" cellpadding="8" cellspacing="0">
        <tr>
            <td>Name:</td>
            <td>
                <?php echo $row->countryname; ?>
            </td>
        </tr>
        <tr>
            <td>Head:</td>
            <td>
                <?php echo $row->ruler; ?>
            </td>
        </tr>
        <tr>
            <td>Capital:</td>
            <td>
                <?php echo $row->capital; ?>
            </td>
        </tr>
        <tr>
            <td>Population:</td>
            <td>
                <?php echo $row->population; ?>
            </td>
        </tr>
        <tr>
            <td>World Share:</td>
            <td>
                <?php echo $row->worldshare; ?>
            </td>
        </tr>
        <tr>
            <td>Land Area:</td>
            <td>
                <?php echo $row->landarea; ?>
            </td>
        </tr>
        <tr>
            <td>North-South Divide:</td>
            <td>
                <?php echo $row->divide; ?>
            </td>
        </tr>
        <tr>
            <td>Currency:</td>
            <td>
                <?php echo $row->currency; ?>
            </td>
        </tr>
        <tr>
            <td>ISO Code:</td>
            <td>
                <?php echo $row->isocode; ?>
            </td>
        </tr>
        <tr>
            <td>Region:</td>
            <td>
                <?php echo $row->region; ?>
            </td>
        </tr>
    </table>
    <br>
    <a href="index.php">Back</a>
</body>

</html>