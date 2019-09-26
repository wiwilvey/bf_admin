<!--<!DOCTYPE html>
<html lang="en">
<head>
  <title>WALI KELAS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container"> 
-->
	
	<h1>TABEL WALI KELAS</h1>
	<a class="btn btn-primary" href="./?page=fwk&&modus=input">Tambah Wali Kelas</a>
	<table class="table">
		<thead>
			<tr>
				<th>NIG</th>
				<th>NAMA GURU</th>
				<th>KELAS</th>
				<th>Kontrol</th>
			</tr>
		</thead>
		<tbody id="dftwk">
		
		</tbody>
	</table>
</div>
<script>
$(document).ready(function(){
	$.getJSON("dataSources/waliKelas.php",function(wk){
		$("#dftwk tr").remove();
		$.each(wk,function(i,data){
			$("#dftwk").append(
			"<tr>"+
			"<td>"+data.NIG+"</td>"+
			"<td>"+data.NAMA+"</td>"+
			"<td>"+data.NAMA_KELAS+"</td>"+
			"<td>"+
			"<a href='./?page=fwk&modus=update&id="+data.NIG+"'>edit</a> hapus</td>"+
			"</tr>"
			);
		});
	});
});
</script>
</body>
</html>
