<?php
header("Access-Control-Allow-Origin: *");
error_reporting(E_ALL & ~E_NOTICE);
require "../kelas/class.db.php";
$bayar = new db();

$conn = $bayar->koneksi();

$sql = "SELECT DATE_FORMAT(TANGGAL,'%d-%m-%Y') TANGGAL,`PENERIMA`,`JUMLAH`,`BERITA` FROM `tbpengeluaran` WHERE KODE_BIAYA='{$_GET['kb']}' && TANGGAL LIKE '{$_GET['bl']}%'";

$qry = $conn->query($sql);
$data = [];
while($res = $qry->fetch_assoc()){
    array_push($data,$res);
}

echo json_encode($data);