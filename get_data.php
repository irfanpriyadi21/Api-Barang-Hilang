<?php 
	include "koneksi.php";

	$sql = "SELECT * FROM $_GET[table]";
	$query = mysqli_query($con, $sql);
	if ($query) {
		$status = "success";
		$data = [];
		while ($row = mysqli_fetch_assoc($query)) {
			$data[] = $row; 
		}
		$message = "Berhasil";
	}else{
		$status = "error";
		$data = [];
		$message = "Gagal!";
	}

	$result = compact('status','data','message');
	echo json_encode($result);
?>