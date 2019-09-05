<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$wkl = new db();
$conn = $wkl->koneksi();

$sql = "SELECT NIS, NAMA FROM `tbsiswa` WHERE KELAS = '{$_GET['kelas']}'";
// echo $sql;
$qry = $conn->query($sql);
$data = [];
while( $res = $qry->fetch_assoc()){
    array_push($data,$res);
}

echo json_encode($data);