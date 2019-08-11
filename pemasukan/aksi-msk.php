<?php
//print_r($_POST);
//Array ( [modus] => simpan [nomor] => [nama] => )

// panggil file class.db.php
require("../kelas/class.db.php");

// buat objek dari class.db
$ci = new db();

if($_POST['modus'] == 'simpan'){
	// simpan data anggota
	// $ci->simpan($tabel,$kolom,$data)
	$tabel = "tbpemasukan"; $kolom = "KODE_TERIMA,NIS,TANGGAL,KODE_POST,JUMLAH,KASIR,BERITA";
	
	// sesuaikan format data
	$KODE_TERIMA = $_POST['KODE_TERIMA'];
	$NIS  = $_POST['NIS'];
	$TANGGAL  = $_POST['TANGGAL'];
	$KODE_POST  = $_POST['KODE_POST'];
	$JUMLAH  = $_POST['JUMLAH'];
	$KASIR  = $_POST['KASIR'];
	$BERITA  = $_POST['BERITA'];
	
	$data ="'$KODE_TERIMA','$NIS','$TINGKAT','$TANGGAL','$KODE_POST','$JUMLAH','$KASIR','$BERITA'";
	
	$ci->simpan($tabel,$kolom,$data);
	
	
}elseif($_POST['modus'] == 'update' ){
	
	// sesuaikan format data
	$KODE_TERIMA = $_POST['KODE_TERIMA'];
	$NIS  = $_POST['NIS'];
	$TANGGAL  = $_POST['TANGGAL'];
	$KODE_POST  = $_POST['KODE_POST'];
	$JUMLAH  = $_POST['JUMLAH'];
	$KASIR  = $_POST['KASIR'];
	$BERITA  = $_POST['BERITA'];
	
	$dataset = "NIS = '$NIS', TANGGAL = '$TANGGAL', KODE_POST = '$KODE_POST', JUMLAH = '$JUMLAH', KASIR = '$KASIR', BERITA = '$BERITA'";
	$kondisi = "KODE_TERIMA= '$KODE_TERIMA'";
	
	//update data anggota
	// $ci->update($tabel,$dataset,$kondisi);
	
	$ci->update('tbpemasukan',$dataset,$kondisi);
	
	
}
// arahkan kembali ke file formulirAnggota

echo "<hr/><a href='./index-msk.php'>Kembali ..</a>";
?>
 
