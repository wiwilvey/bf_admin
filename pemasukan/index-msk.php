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
		//require('../kelas/class.db.php');
		//$cit = new db();
	?>
	<h1>DAFTAR SISWA SMK BINA MANDIRI PURWAREJA KLAMPOK</h1>
	<!--<a class="btn btn-primary" href="formulir-siswa.php?modus=input" >Tambah Siswa</a>
	<br> -->
	
    
	<div class="form-group">
		<a class="btn btn-primary" href="formulir-msk.php?modus=input" >Tambah PEMASUKAN</a>
		
	<table class="table">
		<thead>
			<tr>
				<th>KODE_TERIMA</th>
				<th>NIS</th>
				<th>TANGGAL</th>
				<th>KODE_POST</th>
				<th>JUMLAH</th>
				<th>KASIR</th>
				<th>BERITA</th>
			</tr>
		</thead>
		<tbody>
			
		<?php
		$baris=($_GET['p']-1) *40;
		$tbpemasukan = $cit->tampil("*","tbpemasukan",1,'KODE_BAYAR',$baris);
		for($i = 0 ; $i < COUNT($tbpemasukan) ; $i++ ){
			echo
			"
				<tr>
					<td>".$tbpemasukan[$i]['KODE_TERIMA']."</td>
					<td>".$tbpemasukan[$i]['NIS']."</td>
					<td>".$tbpemasukan[$i]['TANGGAL']."</td>
					<td>".$tbpemasukan[$i]['KODE_POST']."</td>
					<td>".$tbpemasukan[$i]['JUMLAH']."</td>
					<td>".$tbpemasukan[$i]['KASIR']."</td>
					<td>".$tbpemasukan[$i]['BERITA']."</td>
					<td>
						<a href='formulir-msk.php?modus=update&id=".$tbpemasukan[$i]['KODE_BAYAR']."'>Edit</a>
						<a href='./pemasukan/hapus.php?id=".$tbpemasukan[$i]['KODE_BAYAR']."'>Hapus</a>
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
			
		echo '<a href="./?page=index-msk&p='.$halSebelum.'">Halaman Sebelumnya </a>';
		echo '<a href="./?page=index-msk&p='.$halBerikut.'">Halaman Berikutnya </a>';
			
	}
?>
		
		
	
