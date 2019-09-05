<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$wkl = new db();
$conn = $wkl->koneksi();
$sql = "SELECT DATE_FORMAT(v_spp.TANGGAL,'%d-%m-%Y') TANGGAL , v_spp.JUMLAH , v_spp.NIS , v_spp.KELAS , tbsiswa.NAMA FROM `v_spp` , tbsiswa WHERE `v_spp`.`KELAS`='{$_GET['kelas']}' && LEFT(v_spp.TANGGAL,7) = '{$_GET['bulan']}' && tbsiswa.NIS = v_spp.NIS ORDER BY tbsiswa.NAMA";
$qry = $conn->query($sql);
$data = [];
while( $res = $qry->fetch_assoc()){
    array_push($data,$res);
}

echo json_encode($data);