<?php
	require ("../kelas/class.db.php");
	$db = new db();
	
	$tabel = 'tbpemasukan';
	$kondisi = "KODE_TERIMA=".$_GET['id'];
	$db -> hapus($tabel,$kondisi);
?>
