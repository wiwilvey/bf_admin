<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$bayar = new db();
// tampil($kolom,$tabel,$kondisi,$urut,$baris)
$kolom = "tbpengeluaran.KODE_BAYAR,tbpengeluaran.TANGGAL , tbpengeluaran.JUMLAH , tbpengeluaran.PENERIMA , tbpengeluaran.BERITA , kodebyr.KET_POST";
$tabel = "tbpengeluaran , kodebyr";
$kondisi = "kodebyr.KODE_POST = tbpengeluaran.KODE_BIAYA";
$urut = "TANGGAL DESC";
$baris = 0;
$keluar = $bayar->tampil($kolom,$tabel,$kondisi,$urut,$baris);
echo json_encode($keluar,JSON_PRETTY_PRINT);
