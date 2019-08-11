<?php

	$page=$_GET['page'];
	switch($page){
		case 'halaman1' : include("halaman1.php"); break;
		case 'indexWalikelas' : include("waliKelas/indexWalikelas.php"); break;
		case 'indexKodebyr' : include("kodeByr/indexKodebyr.php"); break;
		case 'index-pa' : include("postAnggaran/index-pa.php"); break;
		case 'index-siswa' : include("siswa/index-siswa.php"); break;
		case 'formulir-siswa' : include("siswa/formulir-siswa.php"); break;
		case 'fwk' : include("waliKelas/formulirWakel.php"); break;
		case 'halaman5' : include("halaman5.php"); break;
	}
?>
