<?php
	require ("../kelas/class.db.php");
	$db = new db();
	
	$tabel = 'kodeByr';
	$kondisi = "KODE_POST=".$_GET['id'];
	$db -> hapus($tabel,$kondisi);
?>
