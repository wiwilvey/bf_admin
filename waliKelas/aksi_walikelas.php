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
	$tabel = "walikelas"; $kolom = "NIG,NAMA_GURU,KELAS";
	
	// sesuaikan format data
	$NIG = $_POST['NIG'];
	$NAMA_GURU  = $_POST['NAMA_GURU'];
	$KELAS  = $_POST['KELAS'];
	
	$data ="'$NIG','$NAMA_GURU','$KELAS'";
	
	$ci->simpan($tabel,$kolom,$data);
	
	
}elseif($_POST['modus'] == 'update' ){
	
	// sesuaikan format data
	$NIG = $_POST['NIG'];
	$NAMA_GURU  = $_POST['NAMA_GURU'];
	$KELAS  = $_POST['KELAS'];
	
	$dataset = "NAMA_GURU = '$NAMA_GURU',KELAS = '$KELAS'";
	$kondisi = "NIG= '$NIG'";
	
	//update data anggota
	// $ci->update($tabel,$dataset,$kondisi);
	
	$ci->update('walikelas',$dataset,$kondisi);
	
	
}
// arahkan kembali ke file formulirAnggota

echo "<hr/><a href='./indexWalikelas.php'>Kembali ..</a>";
?>

