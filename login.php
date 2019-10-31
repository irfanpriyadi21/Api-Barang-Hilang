<?php 
	include "koneksi.php";

	$sql = "SELECT * FROM users WHERE username = '$_POST[username]' AND password = '$_POST[password]'";
	$query = mysqli_query($con, $sql);
	$cek = mysqli_num_rows($query);

	if ($query) {
			if($cek > 0){
				$status = "success";
				$data = mysqli_fetch_assoc($query);
				$message = "Selamat datang $data[name]";
			}else{
				$status = "error";
		        $message = "Username atau password salah!";
			}
		
	}else{
		$status = "error";
	
		$message = "Terjadi Kesalahan !";
	}

	$result = compact('status','data','message');
	echo json_encode($result);
?>