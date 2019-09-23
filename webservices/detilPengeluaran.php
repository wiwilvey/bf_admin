<?php
header("Access-Control-Allow-Origin: *");
error_reporting(E_ALL & ~E_NOTICE);
require "../kelas/class.db.php";
$bayar = new db();

$conn = $bayar->koneksi();
list($b,$t)=explode("-",$_GET['bl']);
$bulan = "$t-$b";
$sql = "SELECT DATE_FORMAT(TANGGAL,'%d-%m-%Y') TANGGAL,`PENERIMA`,`JUMLAH`,`BERITA` FROM `tbpengeluaran` WHERE KODE_BIAYA='{$_GET['kb']}' && TANGGAL LIKE '{$bulan}%'";

$qry = $conn->query($sql);
$data = [];
while($res = $qry->fetch_assoc()){
    array_push($data,$res);
}

echo json_encode($data);