<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$wkl = new db();
$conn = $wkl->koneksi();

$sql = "SELECT DATE_FORMAT(v_du.TANGGAL,'%d-%m-%Y') TANGGAL , v_du.JUMLAH , v_du.NIS , v_du.KELAS , tbsiswa.NAMA FROM `v_du` , tbsiswa WHERE `v_du`.`kelas` = '{$_GET['kelas']}' && LEFT(v_du.TANGGAL,7) = '{$_GET['bulan']}' && tbsiswa.NIS = v_du.NIS ORDER BY tbsiswa.NAMA";
// echo $sql;
$qry = $conn->query($sql);
$data = [];
while( $res = $qry->fetch_assoc()){
    array_push($data,$res);
}

echo json_encode($data);