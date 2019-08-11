<!--
<!DOCTYPE html>
<html lang="en">
<head>
  <title>KODE PEMBAYARAN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
-->
	<?php 	
		//require('../kelas/class.db.php');
		//$cit = new db();
	?>
	<h1>KODE PEMBAYARAN/POST</h1>
	<a class="btn btn-primary" href="formulirKodebyr.php?modus=input">Tambah Kode Pembayaran</a>
	<table class="table">
		<thead>
			<tr>
				<th>KODE_POST</th>
				<th>KET_POST</th>
				<th>Kontrol</th>
			</tr>
		</thead>
		<tbody>
		<?php
		$kodebyr = $cit->tampil("*","kodebyr",1,'KODE_POST',0);
		for($i = 0 ; $i < COUNT($kodebyr) ; $i++ ){
			echo
			"
				<tr>
					<td>".$kodebyr[$i]['KODE_POST']."</td>
					<td>".$kodebyr[$i]['KET_POST']."</td>
					<td>
						<a href='formulirKodebyr.php?modus=update&id=".$kodebyr[$i]['KODE_POST']."'>Edit</a>
						<a href='./kodeByr/hapus.php?id=".$kodebyr[$i]['KODE_POST']."'>Hapus</a>
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
