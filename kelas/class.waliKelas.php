<?php
 require("class.db.php");
 class waliKelas extends db
 {
 
	function tambahData ($kolom,$data){
		// penggunaan fungsi di class db
		// $variable --> simpan ($tabel,$kolom, $data)
		
		$this->simpan("tabel1",$kolom,$data);
		}
		
	function tampilData(){
		$conn = $this->koneksi();
		$sql = "SELECT `TAHUN_AJARAN` , `walikelas`.`KODE_KELAS` , `kelas`.`NAMA_KELAS` , `walikelas`.`NIG` , `guru`.`NAMA` FROM `walikelas` , `kelas` , `guru` WHERE kelas.KODE_KELAS = walikelas.KODE_KELAS && guru.NIG = walikelas.NIG";
		$res = $conn->query($sql);
		if ($res->num_rows > 0) {
			$data = [];
			while($row = $res->fetch_assoc()){
				array_push($data , $row);
			}
			return $data;
		}
		else{
			return "Tidak Ada Hasil";
		}
	}

	function pilih($id){
		$conn = $this->koneksi();
		$sql = "SELECT walikelas.* , guru.NAMA , kelas.NAMA_KELAS FROM walikelas, guru , kelas WHERE kelas.KODE_KELAS = walikelas.KODE_KELAS && guru.NIG = walikelas.NIG && walikelas.NIG = '{$id}'";

		$qry = $conn->query($sql);
		if( $qry->num_rows > 0 ){
			$res = $qry->fetch_assoc();
		}else{
			return "Nihil";
			exit();
		}
		return $res;
	}
	
}
?>
