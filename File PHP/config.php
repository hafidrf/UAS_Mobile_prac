<?php
	
$con=mysqli_connect("localhost","hafidrfc_praktikum","kopiSUSU123456789","hafidrfc_android_praktikum");

if (!$con) {
    echo json_encode(['result' => 'gagal']);
}


?>