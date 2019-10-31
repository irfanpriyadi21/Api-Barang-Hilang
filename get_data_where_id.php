<?php 
	include "koneksi.php";

	$sql = "SELECT * FROM $_GET[table] WHERE id = $_GET[id]";
	$query = mysqli_query($con, $sql);
	if ($query) {
		$status = "success";
		$data = [];
		$data = mysqli_fetch_assoc($query);
		$message = "Berhasil";
	}else{
		$status = "error";
		$data = [];
		$message = "Gagal!";
	}

	$result = compact('status','data','message');
	echo json_encode($result);
?>