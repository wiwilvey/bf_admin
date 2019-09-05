<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$wkl = new db();
$conn = $wkl->koneksi();

$sql = "SELECT kelas.NAMA_KELAS FROM kelas,walikelas WHERE walikelas.NIG='{$_GET['nig']}' && walikelas.KODE_KELAS = kelas.KODE_KELAS";
$qry = $conn->query($sql);
$res = $qry->fetch_assoc();
echo $res['NAMA_KELAS'];