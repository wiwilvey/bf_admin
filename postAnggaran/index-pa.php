<!--
<!DOCTYPE html>
<html lang="en">
<head>
  <title>POST ANGGARAN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container"> -->
	<?php 	
		//require('../kelas/class.db.php');
		//$cit = new db();
	?>
	<h1>TABEL POST ANGGARAN</h1>
	<a class="btn btn-primary" href="formulir-pa.php?modus=input">Tambah Post Anggaran</a>
	<table class="table">
		<thead>
			<tr>
				<th>KODE_BIAYA</th>
				<th>NAMA_POSTING</th>
				<th>KELOMPOK</th>
				<th>BESARAN</th>
				<th>Kontrol</th>
			</tr>
		</thead>
		<tbody>
		<?php
		$tbpostanggaran = $cit->tampil("*","tbpostanggaran",1,'KODE_BIAYA',0);
		for($i = 0 ; $i < COUNT($tbpostanggaran) ; $i++ ){
			echo
			"
				<tr>
					<td>".$tbpostanggaran[$i]['KODE_BIAYA']."</td>
					<td>".$tbpostanggaran[$i]['NAMA_POSTING']."</td>
					<td>".$tbpostanggaran[$i]['KELOMPOK']."</td>
					<td>".$tbpostanggaran[$i]['BESARAN']."</td>
					<td>
						<a href='formulir-pa.php?modus=update&id=".$tbpostanggaran[$i]['KODE_BIAYA']."'>Edit</a>
						<a href='./postAnggaran/hapus.php?id=".$tbpostanggaran[$i]['KODE_BIAYA']."'>Hapus</a>
					</td>
				</tr>
			";
		}
		?>
		</tbody>
	</table>
</div>

</body>
</html>
