<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$spp = new db();
// tampil($kolom,$tabel,$kondisi,$urut,$baris)
$kolom = "KODE_TERIMA , tbpemasukan.NIS , NAMA , KELAS , JUMLAH , TANGGAL , BERITA";
$tabel = "tbpemasukan , tbsiswa";
$kondisi = "tbsiswa.NIS = tbpemasukan.NIS && KODE_POST = 'M01'";
$urut = "TANGGAL DESC";
$baris = 0;

$rekord = $spp->tampil($kolom,$tabel,$kondisi,$urut,$baris);
echo json_encode($rekord,JSON_PRETTY_PRINT);
