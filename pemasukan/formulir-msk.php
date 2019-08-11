<!-- FORM SISWA-->
<?php

if($_GET['modus'] == "input" ){
	echo "Modus input data";
	$KODE_TERIMA = "";
	$NIS  = "";
	$TANGGAL  = "";
	$KODE_POST  = "";
	$JUMLAH  = "";
	$KASIR  = "";
	$BERITA  = "";
	$modus = "simpan";
	
}else{
	require('../kelas/class.db.php');
	$cit = new db();
	$id  = $_GET['id'];
	
	// fungsi tampil($kolom,$tabel,$kondisi,$urut,$baris)
	$data = $cit->tampil("*","tbpemasukan","KODE_TERIMA = '$id'","JUMLAH",0);
	
	//print_r($data);
	// outputnya Array ( [0] => Array ( [nomor] => 1 [nama] => Abdulah Jongos ) )
	
	$KODE_TERIMA = $data[0]['KODE_TERIMA'];
	$NIS  = $data[0]['NIS'];
	$TANGGAL  = $data[0]['TANGGAL'];
	$KODE_POST  = $data[0]['KODE_POST'];
	$JUMLAH  = $data[0]['JUMLAH'];
	$KASIR  = $data[0]['KASIR'];
	$BERITA  = $data[0]['BERITA'];
	$modus = "update";
}


?>

<form action="aksi-msk.php" method="POST">
	<input type="hidden" name="modus" value="<?php echo $modus; ?>" />
	
	<div class="form-group">
		<label>KODE_TERIMA</label>
		<input type="text" class="form-control" name="KODE_TERIMA" 
		value="<?php echo $KODE_TERIMA; ?>"  />
	</div>
	
	<div class="form-group">
		<label>NIS</label>
		<input type="text" class="form-control" name="NIS" 
		value="<?php echo $NIS; ?>" />
	</div>
	
	<div class="form-group">
		<label>TANGGAL</label>
		<input type="text" class="form-control" name="TANGGAL" 
		value="<?php echo $TANGGAL; ?>" />
	</div>
	
	<div class="form-group">
		<label>KODE_POST</label>
		<input type="text" class="form-control" name="KODE_POST" 
		value="<?php echo $KODE_POST; ?>" />
	</div>
	
	<div class="form-group">
		<label>JUMLAH</label>
		<input type="text" class="form-control" name="JUMLAH" 
		value="<?php echo $JUMLAH; ?>" />
	</div>
	
	<div class="form-group">
		<label>KASIR</label>
		<input type="text" class="form-control" name="KASIR" 
		value="<?php echo $KASIR; ?>" />
	</div>
	
	<div class="form-group">
		<label>BERITA</label>
		<input type="text" class="form-control" name="BERITA" 
		value="<?php echo $BERITA; ?>" />
	</div>
	
	<div style="text-align:right">
		<input type="submit" value="Simpan" class="btn btn-primary" />
	</div>
</form>
