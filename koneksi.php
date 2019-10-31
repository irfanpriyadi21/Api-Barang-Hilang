<?php 
  $con = mysqli_connect('localhost','root','','db_barang_hilang');
  if (!$con) {
    echo "koneksi error!";
    die();
  }
?>