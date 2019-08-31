<?php
	/* ===== www.dedykuncoro.com ===== */
/*
	include 'koneksi.php';
	
	class usr{}
	
	$username = $_POST["username"];
	$password = $_POST["password"];
	
	if ((empty($username)) || (empty($password))) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom tidak boleh kosong"; 
		die(json_encode($response));
	}
	
	$query = mysql_query("SELECT * FROM users WHERE username='$username' AND password='$password'");
	
	$row = mysql_fetch_array($query);
	
	if (!empty($row)){
		$response = new usr();
		$response->success = 1;
		$response->message = "Selamat datang ".$row['username'];
		$response->id = $row['id'];
		$response->username = $row['username'];
		die(json_encode($response));
		
	} else { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Username atau password salah";
		die(json_encode($response));
	}
	
	mysql_close();
*/


	//=================== KALAU PAKAI MYSQLI YANG ATAS SEMUA DI REMARK, TERUS YANG INI RI UNREMARK ========
	include_once "config.php";

/*
	class usr{}
	
	$email = $_POST["email"];
	$password = $_POST["password"];
	
	if ((empty($email)) || (empty($password))) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom tidak boleh kosong";
		die(json_encode($response));
		echo(json_encode($response));
	}
	
	$query = mysqli_query($con, "SELECT * FROM tb_user WHERE email='$email' AND password='$password'");
	
	$row = mysqli_fetch_array($query);
	
	if (!empty($row)){
		$response = new usr();
		$response->success = 1;
		$response->message = "Selamat datang ".$row['nama'];
		$response->iduser = $row['iduser'];
		$response->username = $row['nama'];
		$response->email = $row['email'];
		$response->password = $row['password'];
		die(json_encode($response));
		
	} else { 
		$response = new usr();
		$response->success = 0;
		$response->message = "email atau password salah";
		$response->id = $row['iduser'];
		$response->username = $row['nama'];
		die(json_encode($response));
	}
	
	mysqli_close($con);
*/


$email = $_GET['email'];
$password = $_GET['password'];

$result = mysqli_query($con, "SELECT * FROM tb_user WHERE email = '$email'");

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        if ($password == $row['password']) {
            echo json_encode(['result' => 'true']);
        } else {
            echo json_encode(['result' => 'false']);
        }
    }
} else {
    echo json_encode(['result' => 'false']);
}

header('Content-Type: application/json');
mysqli_close($conn);

?>