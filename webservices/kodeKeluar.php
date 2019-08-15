<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$bayar = new db();
// tampil($kolom,$tabel,$kondisi,$urut,$baris)
$kolom = "*";
$tabel = "kodebyr";
$kondisi = "KODE_POST LIKE 'K%'";
$urut = "KODE_POST";
$baris = 0;

$kode = $bayar->tampil($kolom,$tabel,$kondisi,$urut,$baris);
echo json_encode($kode,JSON_PRETTY_PRINT);
