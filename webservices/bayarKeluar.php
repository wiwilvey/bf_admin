<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$bayar = new db();
// kolom: TANGGAL,KODE_BIAYA,JUMLAH,PENERIMA,KASIR,BERITA
// function simpan($tabel,$kolom,$data)
$tabel = 'tbpengeluaran';
$kolom = 'TANGGAL,KODE_BIAYA,JUMLAH,PENERIMA,KASIR,BERITA';
$data  = "'{$_POST['tgl']}','{$_POST['kdb']}','{$_POST['jml']}','{$_POST['trm']}','Wiwi','{$_POST['berita']}'";
$bayar->simpan($tabel,$kolom,$data);
