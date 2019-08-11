<!-- FORM ANGGOTA -->
<?php

if($_GET['modus'] == "input" ){
	echo "Modus input data";
	$KODE_BIAYA = "";
	$NAMA_POSTING ="";
	$KELOMPOK ="";
	$BESARAN ="";
	$modus = "simpan";
}else{
	require('../kelas/class.db.php');
	$cit = new db();
	$id  = $_GET['id'];
	
	// fungsi tampil($kolom,$tabel,$kondisi,$urut,$baris)
	$data = $cit->tampil("*","tbpostanggaran","KODE_BIAYA= '$id'","NAMA_POSTING",0);
	
	//print_r($data);
	// outputnya Array ( [0] => Array ( [nomor] => 1 [nama] => Abdulah Jongos ) )
	
	$KODE_BIAYA = $data[0]['KODE_BIAYA'];
	$NAMA_POSTING  = $data[0]['NAMA_POSTING'];
	$KELOMPOK  = $data[0]['KELOMPOK'];
	$BESARAN  = $data[0]['BESARAN'];
	$modus = "update";
}

?>

<form action="aksi-pa.php" method="POST">
	<input type="hidden" name="modus" value="<?php echo $modus; ?>" />
	
	<div class="form-group">
		<label>KODE BIAYA</label>
		<input type="text" class="form-control" name="KODE_BIAYA" 
		value="<?php echo $KODE_BIAYA; ?>" />
	</div>
	
	<div class="form-group">
		<label>NAMA POSTING</label>
		<input type="text" class="form-control" name="NAMA_POSTING" 
		value="<?php echo $NAMA_POSTING; ?>" />
	</div>
	
	<div class="form-group">
		<label>KELOMPOK</label>
		<input type="text" class="form-control" name="KELOMPOK" 
		value="<?php echo $KELOMPOK; ?>" />
	</div>
	
	<div class="form-group">
		<label>BESARAN</label>
		<input type="text" class="form-control" name="BESARAN" 
		value="<?php echo $BESARAN; ?>" />
	</div>
	
	<div style="text-align:right">
		<input type="submit" value="Simpan" class="btn btn-primary" />
	</div>
</form>
