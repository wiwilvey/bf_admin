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
	$tabel = "tbpostanggaran"; $kolom = "KODE_BIAYA,NAMA_POSTING,KELOMPOK,BESARAN";
	
	// sesuaikan format data
	$KODE_BIAYA = $_POST['KODE_BIAYA'];
	$NAMA_POSTING  = $_POST['NAMA_POSTING'];
	$KELOMPOK  = $_POST['KELOMPOK'];
	$BESARAN = $_POST['BESARAN'];
	
	$data ="'$KODE_BIAYA','$NAMA_POSTING','$KELOMPOK','$BESARAN'";
	
	$ci->simpan($tabel,$kolom,$data);
	
	
}elseif($_POST['modus'] == 'update' ){
	
	// sesuaikan format data
	$KODE_BIAYA = $_POST['KODE_BIAYA'];
	$NAMA_POSTING  = $_POST['NAMA_POSTING'];
	$KELOMPOK  = $_POST['KELOMPOK'];
	$BESARAN = $_POST['BESARAN'];
	
	$dataset = "NAMA_POSTING = '$NAMA_POSTING',KELOMPOK= '$KELOMPOK',BESARAN = '$BESARAN'";
	$kondisi = "KODE_BIAYA= '$KODE_BIAYA'";
	
	//update data anggota
	// $ci->update($tabel,$dataset,$kondisi);
	
	$ci->update('tbpostanggaran',$dataset,$kondisi);
	
	
}
// arahkan kembali ke file formulir-pa

echo "<hr/><a href='./index-pa.php'>Kembali ..</a>";
?>
 
