<?php 
	include "koneksi.php";

	$field = explode(',', $_GET['field']);

	$sql = "UPDATE $_GET[table] SET ";
	foreach ($field as $key => $value) {
		$sql .= "$value = '$_POST[$value]',";
	}
	$sql = rtrim($sql, ",")." WHERE id = '$_GET[id]';";

	$query = mysqli_query($con, $sql);
	if ($query) {
		$status = "success";
		$message = "Berhasil";
	}else{
		$status = "error";
		$message = "Gagal!";
		$error = mysqli_error($con);
	}

	$result = compact('status','message','error');
	echo json_encode($result);
?>