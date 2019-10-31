<?php 
	include "koneksi.php";
//DELETE FROM `users` WHERE `users`.`id` = 1"?
	$sql = "DELETE FROM $_GET[table] WHERE id = '$_GET[id]'";
	$query = mysqli_query($con, $sql);
	if ($query) {
		$status = "success";
		$message = "Berhasil";
	}else{
		$status = "error";
		$message = "Gagal!";
	}

	$result = compact('status','message');
	echo json_encode($result);
?>