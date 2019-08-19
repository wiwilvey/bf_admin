<?php
header("Access-Control-Allow-Origin: *");
// print_r($_POST);
/*
 *  [tgl] => 2019-08-15
    [nis] => 16539
    [dbln] => 2019-08-01
    [sbln] => 2019-08-31
    [jml] => 135000
    * 
kolom
KODE_TERIMA
NIS
TANGGAL
KODE_POST
JUMLAH
KASIR
varchar(30)
BERITA
*/
require "../kelas/class.db.php";
$spp = new db();
$tabel = 'tbpemasukan';
$kolom = 'NIS,TANGGAL,KODE_POST,JUMLAH,KASIR,BERITA';
$berita= "Pembayaran SPP " . ymd2dmy($_POST['dbln'])." hingga ". ymd2dmy($_POST['sbln']);
$data  = "'{$_POST['nis']}','{$_POST['tgl']}','M01','{$_POST['jml']}','Wiwi','{$berita}'";

$spp->simpan($tabel,$kolom,$data);

function ymd2dmy($tgl){
    list($th,$bl,$hr) = explode("-",$tgl);
    return "$hr-$bl-$th";
}