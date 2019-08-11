<?php
 require("class.db.php");
 class waliMurid extends db
 {
 
	function tambahData ($kolom,$data){
		// penggunaan fungsi di class db
		// $variable --> simpan ($tabel,$kolom, $data)
		
		$this->simpan("tabel1",$kolom,$data);
		}
		
	function tampilData($urut,$baris,$kondisi){
		$data = $this->tampil("*","tabel1",$kondisi,$urut,$baris);
		return $data;
	}
	
}
?>
