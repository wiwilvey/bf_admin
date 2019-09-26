<!-- FORM WALI KELAS -->
<?php
require('./kelas/class.waliKelas.php');
$wk = new waliKelas();

if($_GET['modus'] == "input" ){
	$NIG = "";
	$NAMA_GURU  = "";
	$KELAS  = "";
	$modus = "simpan";
}else{
	$id  = $_GET['id'];
	
	$data = $wk->pilih($id);
	$NIG = $data['NIG'];
	$NAMA_GURU  = $data['NAMA'];
	$KELAS  = $data['KODE_KELAS'];
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
		$kelas=$wk->tampil("*","kelas",1,"NAMA_KELAS",0);
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
