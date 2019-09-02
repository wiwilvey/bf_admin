<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$kelas = new db();

$conn = $kelas->koneksi();

$sql = "SELECT NAMA_KELAS FROM kelas ORDER BY NAMA_KELAS";
$qry = $conn->query($sql);
$kls = [];
while($res = $qry->fetch_assoc()){
    array_push($kls,$res);
}

echo json_encode($kls);