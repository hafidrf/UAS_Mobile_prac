<?php

require "config.php";

$id = $_GET['id'];

$result = mysqli_query($con, "SELECT * FROM tb_artikel WHERE idartikel = '$id'");
if ($result) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        echo json_encode($row);
    }
}

header('Content-Type: application/json');
mysqli_close($conn);