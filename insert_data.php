<?php 
	include "koneksi.php";

	$field = explode(',', $_GET['field']);

	$sql = "INSERT INTO `$_GET[table]` (";
	foreach ($field as $key => $value) {
		$sql .= "`$value`,";
	}
	$sql = rtrim($sql, ",").")";

	$sql .= " VALUES (";
	foreach ($field as $key => $value) {
		$sql .= "'$_POST[$value]',";
	}
	$sql = rtrim($sql, ",").");";

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