<?php
	require ("../kelas/class.db.php");
	$db = new db();
	
	$tabel = 'tbsiswa';
	$kondisi = "NIS=".$_GET['id'];
	$db -> hapus($tabel,$kondisi);
?>
