<!-- FORM SISWA-->
<?php

if($_GET['modus'] == "input" ){
	echo "Input Data Siswa";
	$NIS = "";
	$NAMA  = "";
	$TINGKAT  = "";
	$JURUSAN  = "";
	$KELAS  = "";
	$ORANG_TUA  = "";
	$ALAMAT  = "";
	$WALI_KELAS  = "";
	$modus = "simpan";
	
}else{
	//require('./kelas/class.db.php');
	//$cit = new db();
	$id  = $_GET['id'];
	
	// fungsi tampil($kolom,$tabel,$kondisi,$urut,$baris)
	$data = $cit->tampil("*","tbsiswa","NIS = '$id'","NAMA",0);
	
	//print_r($data);
	// outputnya Array ( [0] => Array ( [nomor] => 1 [nama] => Abdulah Jongos ) )
	
	$NIS = $data[0]['NIS'];
	$NAMA  = $data[0]['NAMA'];
	$TINGKAT  = $data[0]['TINGKAT'];
	$JURUSAN  = $data[0]['JURUSAN'];
	$KELAS  = $data[0]['KELAS'];
	$ORANG_TUA  = $data[0]['ORANG_TUA'];
	$ALAMAT  = $data[0]['ALAMAT'];
	$WALI_KELAS  = $data[0]['WALI_KELAS'];
	$modus = "update";
}


?>

<form action="siswa/aksi-siswa.php" method="POST">
	<input type="hidden" name="modus" value="<?php echo $modus; ?>" />
	
	<div class="form-group">
		<label>NIS</label>
		<input type="text" class="form-control" name="NIS" 
		value="<?php echo $NIS; ?>"  />
	</div>
	
	<div class="form-group">
		<label>NAMA</label>
		<input type="text" class="form-control" name="NAMA" 
		value="<?php echo $NAMA; ?>" />
	</div>
	
	<div class="form-group">
		<label>TINGKAT</label>
		<input type="text" class="form-control" name="TINGKAT" 
		value="<?php echo $TINGKAT; ?>" />
	</div>
	
	<div class="form-group">
		<label>JURUSAN</label>
		<input type="text" class="form-control" name="JURUSAN" 
		value="<?php echo $JURUSAN; ?>" />
	</div>
	
	<div class="form-group">
		<label>KELAS</label>
		<input type="text" class="form-control" name="KELAS" 
		value="<?php echo $KELAS; ?>" />
	</div>
	
	<div class="form-group">
		<label>ORANG TUA</label>
		<input type="text" class="form-control" name="ORANG_TUA" 
		value="<?php echo $ORANG_TUA; ?>" />
	</div>
	
	<div class="form-group">
		<label>ALAMAT</label>
		<input type="text" class="form-control" name="ALAMAT" 
		value="<?php echo $ALAMAT; ?>" />
	</div>
	
	<div class="form-group">
		<label>WALI KELAS</label>
		<input type="text" class="form-control" name="WALI_KELAS" 
		value="<?php echo $WALI_KELAS; ?>" />
	</div>
	
	<div style="text-align:right">
		<input type="submit" value="Simpan" class="btn btn-primary" />
	</div>
</form>
