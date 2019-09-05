<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$wkl = new db();
$conn = $wkl->koneksi();

$sql = "SELECT DATE_FORMAT(`TANGGAL`,'%d-%m-%Y') TANGGAL,`tbpemasukan`.`KODE_POST`,`tbpostanggaran`.`NAMA_POSTING` , `JUMLAH` FROM `tbpemasukan` , `tbpostanggaran` WHERE `NIS`= {$_GET['nis']} && `tbpostanggaran`.`KODE_BIAYA` = `tbpemasukan`.`KODE_POST` ORDER BY `tbpemasukan`.`TANGGAL`";
// echo $sql;
$qry = $conn->query($sql);
$datariwayat = [];
while( $res = $qry->fetch_assoc()){
    array_push($datariwayat,$res);
}

$sql = "SELECT NAMA_POSTING , SUM(JUMLAH) JUMLAH FROM tbpemasukan , tbpostanggaran WHERE NIS = '{$_GET['nis']}' && tbpostanggaran.KODE_BIAYA = tbpemasukan.KODE_POST GROUP BY KODE_POST";
$qry = $conn->query($sql);
$dataresume = [];
while( $res = $qry->fetch_assoc()){
    array_push($dataresume,$res);
}

$output = ['riwayat'=>$datariwayat , 'resume'=>$dataresume];
echo json_encode($output);