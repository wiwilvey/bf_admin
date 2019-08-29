<?php
 require("class.db.php");
 class user extends db
 {
 
	function tambahData ($kolom,$data){
		// penggunaan fungsi di class db
		// $variable --> simpan ($tabel,$kolom, $data)
		
		$this->simpan("user",$kolom,$data);
		}
		
	function tampilData($urut,$baris,$kondisi){
		$data = $this->tampil("*","user",$kondisi,$urut,$baris);
		return $data;
	}

	function updateData($dataset,$kondisi){
		$this->update("user",$dataset,$kondisi);
	}

	function updatePassword($password,$nig){
		$this->update('user',"PASSWORD = '${password}'" , "NIG = '{$nig}'");
	}

	function pecatUser($nig){
		$this->hapus("user","NIG = '{$nig}'");
	}

	function login($u,$p){
		$data = $this->tampil("NIG,NAMA,JABATAN","user","USERNAME = '{$u}' && PASSWORD = '{$p}'","NAMA",0);
		return $data;
	}

	function kamusJabatan($kode){
		$jab = [
			'ks'=>"Kepala Sekolah" , 
			'wks'=>"Wakil KS",
			'bnd'=>"Bendahara",
			'wkl'=>"Wali Kelas"
		];
		return $jab[$kode];
	}
}










?>
