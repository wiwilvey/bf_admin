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
	$tabel = "kodebyr"; $kolom = "KODE_POST,KET_POST";
	
	// sesuaikan format data
	$KODE_POST = $_POST['KODE_POST'];
	$KET_POST  = $_POST['KET_POST'];
	
	$data ="'$KODE_POST','$KET_POST'";
	
	$ci->simpan($tabel,$kolom,$data);
	
	
}elseif($_POST['modus'] == 'update' ){
	
	// sesuaikan format data
	$KODE_POST = $_POST['KODE_POST'];
	$KET_POST  = $_POST['KET_POST'];
	
	$dataset = "KET_POST = '$KET_POST'";
	$kondisi = "KODE_POST= '$KODE_POST'";
	
	//update data anggota
	// $ci->update($tabel,$dataset,$kondisi);
	
	$ci->update('kodebyr',$dataset,$kondisi);
	
	
}
// arahkan kembali ke file formulirAnggota

echo "<hr/><a href='./indexKodebyr.php'>Kembali ..</a>";
?>
 
