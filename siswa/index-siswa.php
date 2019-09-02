<!--DOCTYPE html>
<html lang="en">
<head>
  <title>APLIKASI KEUANGAN SMK BINA MANDIRI PURWAREJA KLAMPOK</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container"-->
	<?php 	
		require('./kelas/class.db.php');
		$cit = new db();
	?>
	<h1>DAFTAR SISWA SMK BINA MANDIRI PURWAREJA KLAMPOK</h1>
	<!--<a class="btn btn-primary" href="formulir-siswa.php?modus=input" >Tambah Siswa</a>
	<br> -->
	
    
	<div class="form-group">
		<!-- TAMBAH SISWA -->
		<a class="btn btn-primary" style="background-color:##ADD8E6" 
					href="./?page=formulir-siswa&modus=input" >Tambah Siswa
		</a>
		
		<!-- FUNGSI UNTUK MENCETAK -->
		<a href="dataSiswa.php">
			<button class="btn btn-primary" style="background-color:##0000FF"
					onClick="window.print();">
					<i style="font-size:16px" class="fa">&#xf02f; </i> Cetak
					</button>
		</a>
		
		<!-- filter data -->
		<h3><CENTER>PENCARIAN</CENTER></h5>
		<label class="col-sm-2 control-label">Pilih Kelas</label>
		<div class="col-sm-6"></div
				<div class="col-sm-4">
			<select class="form-control" id="e_kls" />
				<option value='#'>--Silahkan pilih kelas</option>
				<option>X PKM</option>
				<option>X TKJ 1</option>
				<option>X TKJ 2</option>
				<option>X TBSM</option>
				<option>XI PKM</option>
				<option>XI TKJ</option>
				<option>XI TBSM</option>
				<option>XII AKP</option>
				<option>XII TKJ</option>
				<option>XII TSM 1</option>
				<option>XII TSM 2</option>
			</select>
			</div>
			
	 <table class="table table-bordered">
		<thead>
			<tr class="table-primary">
				<th>NIS</th>
				<th>NAMA</th>
				<!--th>TINGKAT</th>
				<th>JURUSAN</th-->
				<th>KELAS</th>
				<th>ORANG TUA</th>
				<th>ALAMAT</th>
				<th>WALI KELAS</th>
				<th width='100'>kontrol</th>
			</tr>
		</thead>
		<tbody id="dftSiswa">
			
		<?php
		$baris=($_GET['p']-1) *40;
		$tbsiswa = $cit->tampil("*","tbsiswa",1,'NIS',$baris);
		for($i = 0 ; $i < COUNT($tbsiswa) ; $i++ ){
			echo
			"
				<tr>
					<td>".$tbsiswa[$i]['NIS']."</td>
					<td>".$tbsiswa[$i]['NAMA']."</td>
					<!--td>".$tbsiswa[$i]['TINGKAT']."</td>
					<td>".$tbsiswa[$i]['JURUSAN']."</td-->
					<td>".$tbsiswa[$i]['KELAS']."</td>
					<td>".$tbsiswa[$i]['ORANG_TUA']."</td>
					<td>".$tbsiswa[$i]['ALAMAT']."</td>
					<td>".$tbsiswa[$i]['WALI_KELAS']."</td>
					<td>
						<a  class='btn btn-primary' href='./?page=formulir-siswa&modus=update&id=".$tbsiswa[$i]['NIS']."'>
						<span class='glyphicon glyphicon-pencil'></span></a>
						<a  class='btn btn-danger' href='./siswa/hapus.php?id=".$tbsiswa[$i]['NIS']."'>
						<span class='glyphicon glyphicon-remove'></span></a>
							
					</td>
				</tr>
			";
		}
		?>
		</tbody>
	</table>
	<?php nomorHalaman(); ?> <!-- fungsi -->
</div>

</body>
</html>
<?php
// untuk membuat fungsi tampil pada halaman berikutnya dan sebelumnya-->
function nomorHalaman()
	{
		$halSekarang = $_GET['p'];
		$halSebelum = $halSekarang-1;
		$halBerikut = $halSekarang+1;
		if ($halSekarang == 1) /*== untuk membandingkan, biar bisa membaca perintah */
			{
				$halSebelum = 1;
			}
			
		echo '<a href="./?page=index-siswa&p='.$halSebelum.'">Halaman Sebelumnya </a>';
		echo '<a href="./?page=index-siswa&p='.$halBerikut.'">Halaman Berikutnya </a>';
			
	}
?>
		
		
	
