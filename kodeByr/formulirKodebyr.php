<!-- FORM KODE BAYAR -->
<?php

if($_GET['modus'] == "input" ){
	echo "Modus input data";
	$KODE_POST = "";
	$KET_POST  = "";
	$modus = "simpan";
}else{
	require('../kelas/class.db.php');
	$cit = new db();
	$id  = $_GET['id'];
	
	// fungsi tampil($kolom,$tabel,$kondisi,$urut,$baris)
	$data = $cit->tampil("*","kodebyr","KODE_POST = '$id'","KET_POST",0);
	
	//print_r($data);
	// outputnya Array ( [0] => Array ( [nomor] => 1 [nama] => Abdulah Jongos ) )
	
	$KODE_POST = $data[0]['KODE_POST'];
	$KET_POST  = $data[0]['KET_POST'];
	$modus = "update";
}

?>

<form action="aksi-kodebyr.php" method="POST">
	<input type="hidden" name="modus" value="<?php echo $modus; ?>" />
	
	<div class="form-group">
		<label>KODE POST</label>
		<input type="text" class="form-control" name="KODE_POST" 
		value="<?php echo $KODE_POST; ?>" />
	</div>
	
	<div class="form-group">
		<label>KETERANGAN POST</label>
		<input type="text" class="form-control" name="KET_POST" 
		value="<?php echo $KET_POST; ?>" />
	</div>
	
	<div style="text-align:right">
		<input type="submit" value="Simpan" class="btn btn-primary" />
	</div>
</form>
