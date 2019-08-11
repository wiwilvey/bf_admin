<?php
	require ("../kelas/class.db.php");
	$db = new db();
	
	$tabel = 'waliKelas';
	$kondisi = "KODE_GURU=".$_GET['id'];
	$db -> hapus($tabel,$kondisi);
?>
