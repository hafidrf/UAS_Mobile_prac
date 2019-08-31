<?php 
	
require "config.php";

$kategori = $_GET['idkategori'];

//$result = mysqli_query($con, "SELECT * FROM tb_artikel WHERE idkategori = $kategori");

$result = mysqli_query($con, "SELECT * FROM tb_artikel a JOIN tb_kategori b USING(idkategori) WHERE a.idkategori='$kategori'");
$arr = array();

if ($result) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $arr[] = $row;
    }
    echo json_encode(['result' => $arr]);
}

header('Content-Type: application/json');
mysqli_close($conn);
	
?>