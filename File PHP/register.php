<?php
/* ===== www.dedykuncoro.com ===== */
/*
	include 'koneksi.php';
	
	class usr{}
	
	$username = $_POST["username"];
	$password = $_POST["password"];
	$confirm_password = $_POST["confirm_password"];
	
	if ((empty($username))) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom username tidak boleh kosong"; 
		die(json_encode($response));
	} else if ((empty($password))) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom password tidak boleh kosong"; 
		die(json_encode($response));
	} else if ((empty($confirm_password)) || $password != $confirm_password) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Konfirmasi password tidak sama"; 
		die(json_encode($response));
	} else {
		if (!empty($username) && $password == $confirm_password){
			$num_rows = mysql_num_rows(mysql_query("SELECT * FROM users WHERE username='".$username."'"));

			if ($num_rows == 0){
				$query = mysql_query("INSERT INTO users (id, username, password) VALUES(0,'".$username."','".$password."')");

				if ($query){
					$response = new usr();
					$response->success = 1;
					$response->message = "Register berhasil, silahkan login.";
					die(json_encode($response));

				} else {
					$response = new usr();
					$response->success = 0;
					$response->message = "Username sudah ada";
					die(json_encode($response));
				}
			} else {
				$response = new usr();
				$response->success = 0;
				$response->message = "Username sudah ada";
				die(json_encode($response));
			}
		}
	}

	mysql_close();
*/


	/* ========= KALAU PAKAI MYSQLI YANG ATAS SEMUA DI REMARK, TERUS YANG INI DI UNREMARK ======== */
	include_once "config.php";
	
	$email = $_GET['email'];
	$nama = $_GET['nama'];
	$alamat = $_GET['alamat'];
	$notelp = $_GET['notelp'];
	$jeniskelamin = $_GET['jeniskelamin'];
	$pekerjaan = $_GET['pekerjaan'];
	$password = $_GET['password'];
	
	$result = mysqli_query($con, "INSERT INTO tb_user (email, nama, alamat, notelp, jeniskelamin, pekerjaan, password) VALUES ('$email', '$nama', '$alamat', '$notelp', '$jeniskelamin', '$pekerjaan', '$password')");
	
	if ($result) {
	    echo json_encode(['result' => 'sukses']);
	} else {
	    echo json_encode(['result' => 'gagal']);
	}
	
	mysqli_close($conn);

/*
	class usr{}

	$email = $_POST["email"];
	$nama =  $_POST["nama"];
	$alamat =  $_POST["alamat"];
	$notelp =  $_POST["notelp"];
	$jeniskelamin =  $_POST["jeniskelamin"];
	$pekerjaan =  $_POST["pekerjaan"];
	$password = $_POST["password"];
	$confirm_password = $_POST["confirm_password"];

	if ((empty($email))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom Email tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($password))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom password tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($confirm_password)) || $password != $confirm_password) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Konfirmasi password tidak sama";
		die(json_encode($response));
	} else {
		if (!empty($email) && $password == $confirm_password){
			$num_rows = mysqli_num_rows(mysqli_query($con, "SELECT * FROM tb_user WHERE email='".$email."'"));

			if ($num_rows == 0){
				$query = mysqli_query($con, "INSERT INTO tb_user (iduser, email, nama, alamat, notelp, jeniskelamin, pekerjaan, password) VALUES(0,'".$email."','".$nama."','".$alamat."','".$notelp."','".$jeniskelamin."','".$pekerjaan."','".$password."')");

				if ($query){
					$response = new usr();
					$response->success = 1;
					$response->message = "Register berhasil, silahkan login.";
					die(json_encode($response));

				} else {
					$response = new usr();
					$response->success = 0;
					$response->message = "email sudah ada";
					die(json_encode($response));
				}
			} else {
				$response = new usr();
				$response->success = 0;
				$response->message = "email sudah ada";
				die(json_encode($response));
			}
		}
	}

	mysqli_close($con);
*/






?>	