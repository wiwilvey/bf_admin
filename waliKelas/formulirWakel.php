<!-- FORM WALI KELAS -->
<?php

if($_GET['modus'] == "input" ){
	echo "Modus input data";
	$NIG = "";
	$NAMA_GURU  = "";
	$KELAS  = "";
	$modus = "simpan";
}else{
	//require('./kelas/class.db.php');
	//$cit = new db();
	$id  = $_GET['id'];
	
	// fungsi tampil($kolom,$tabel,$kondisi,$urut,$baris)
	//$data = $cit->tampil("*","walikelas","KODE_GURU = '$id'","KODE_GURU",0);
	$data = $cit->tampil("walikelas.*,guru.NAMA,kelas.NAMA_KELAS","walikelas,guru,kelas",
				"kelas.KODE_KELAS=walikelas.KODE_KELAS && 
				guru.NIG=walikelas.KODE_GURU && walikelas.KODE_GURU='{$id}'",'KODE_GURU',0);
	
	// print_r($data);
	// Array ( [0] => Array ( [TAHUN_AJARAN] => 2018-2019 [KODE_KELAS] => T3 [KODE_GURU] => gr010 ) ) 
	
	$NIG = $data[0]['KODE_GURU'];
	$NAMA_GURU  = $data[0]['NAMA'];
	$KELAS  = $data[0]['KODE_KELAS'];
	$modus = "update";
}

?>

<form action="aksi_walikelas.php" method="POST">
	<input type="hidden" name="modus" value="<?php echo $modus; ?>" />
	
	<div class="form-group">
		<label>NIG</label>
		<input type="text" class="form-control" name="NIG" 
		value="<?php echo $NIG; ?>" />
	</div>
	
	<div class="form-group">
		<label>NAMA GURU</label>
		<input type="text" class="form-control" name="NAMA_GURU" 
		value="<?php echo $NAMA_GURU; ?>" />
	</div>
	
	<div class="form-group">
		<label>KELAS</label>
		<!--input type="text" class="form-control" name="KELAS" 
		value="<?php echo $KELAS; ?>" /-->
		<select class="form-control" name="KELAS" >
		<?php
		$kelas=$cit->tampil("*","kelas",1,"NAMA_KELAS",0);
		//print_r($kelas);
		for($i=0;$i<count($kelas);$i++){
			echo "<option value=".$kelas[$i]['KODE_KELAS'].">".$kelas[$i]['NAMA_KELAS']."</option>";
		}
		?>
		</select>
	</div>
	
	<div style="text-align:right">
		<input type="submit" value="Simpan" class="btn btn-primary" />
	</div>
</form>
