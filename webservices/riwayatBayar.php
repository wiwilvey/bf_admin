<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$wkl = new db();
$conn = $wkl->koneksi();

$sql = "SELECT DATE_FORMAT(`TANGGAL`,'%d-%m-%Y') TANGGAL,`tbpemasukan`.`KODE_POST`,`tbpostanggaran`.`NAMA_POSTING` , `JUMLAH` FROM `tbpemasukan` , `tbpostanggaran` WHERE `NIS`= {$_GET['nis']} && `tbpostanggaran`.`KODE_BIAYA` = `tbpemasukan`.`KODE_POST` ORDER BY `tbpemasukan`.`TANGGAL`";
// echo $sql;
$qry = $conn->query($sql);
$data = [];
while( $res = $qry->fetch_assoc()){
    array_push($data,$res);
}

echo json_encode($data);