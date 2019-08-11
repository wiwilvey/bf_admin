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
	$tabel = "tbsiswa"; $kolom = "NIS,NAMA,TINGKAT,JURUSAN,KELAS,ORANG_TUA,ALAMAT,WALI_KELAS";
	
	// sesuaikan format data
	$NIS = $_POST['NIS'];
	$NAMA  = $_POST['NAMA'];
	$TINGKAT  = $_POST['TINGKAT'];
	$JURUSAN  = $_POST['JURUSAN'];
	$KELAS  = $_POST['KELAS'];
	$ORANG_TUA  = $_POST['ORANG_TUA'];
	$ALAMAT  = $_POST['ALAMAT'];
	$WALI_KELAS  = $_POST['WALI_KELAS'];
	
	$data ="'$NIS','$NAMA','$TINGKAT','$JURUSAN','$KELAS','$ORANG_TUA','$ALAMAT','$WALI_KELAS'";
	
	$ci->simpan($tabel,$kolom,$data);
	
	
}elseif($_POST['modus'] == 'update' ){
	
	// sesuaikan format data
	$NIS = $_POST['NIS'];
	$NAMA  = $_POST['NAMA'];
	$TINGKAT  = $_POST['TINGKAT'];
	$JURUSAN  = $_POST['JURUSAN'];
	$KELAS  = $_POST['KELAS'];
	$ORANG_TUA  = $_POST['ORANG_TUA'];
	$ALAMAT  = $_POST['ALAMAT'];
	$WALI_KELAS  = $_POST['WALI_KELAS'];
	
	$dataset = "NAMA = '$NAMA', TINGKAT = '$TINGKAT', JURUSAN = '$JURUSAN', KELAS = '$KELAS', ORANG_TUA = '$ORANG_TUA', ALAMAT = '$ALAMAT', WALI_KELAS = '$WALI_KELAS'";
	$kondisi = "NIS= '$NIS'";
	
	//update data anggota
	// $ci->update($tabel,$dataset,$kondisi);
	
	$ci->update('tbsiswa',$dataset,$kondisi);
	
	
}
// arahkan kembali ke file formulirAnggota

echo "<hr/><a href='../?page=index-siswa&p=1'>Kembali ..</a>";
?>
 
