<?php
	require ("../kelas/class.db.php");
	$db = new db();
	
	$tabel = 'tbpostAnggaran';
	$kondisi = "KODE_BIAYA=".$_GET['id'];
	$db -> hapus($tabel,$kondisi);
?>
