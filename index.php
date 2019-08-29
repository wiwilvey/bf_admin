<?php
	//error_reporting(0);
	if($_GET['page'] == false || $_GET['page'] == ''){
		header("Location: ./?page=halaman1");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>APP KEUANGAN SMK BINA MANDIRI</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/kp2.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <style>
	  html,body {
				background-color:#1AA9E7
				}
		  
	  .container {
		  background-color:#E5E5E5
		  }
		
	.jumbotron {
		  background-color:#1E5AFF
		  }
		  
	  #konten {height: auto;}
	  
	  /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
  </style>
   <body>
<?php 	
	// require('./kelas/class.db.php');
	// $cit = new db();
?>
	<div class="container">
	<!--HEADER-->
	<div class="jumbotron">
		<div>
		<h2> SMK BINA MANDIRI PURWAREJA KLAMPOK</h2>
		<i><h5>TEKNIK SEPEDA MOTOR - PERBANKAN - TEKNIK KOMPUTER DAN JARINGAN</h5>
				<H7>Jl.Raya Kaliwinasuh-Purwareja Klampok Telp. (0286)479669 Banjarnegara 53474 </H7>
				<H7>Email :<mark> binamandiri447@yahoo.co.id</mark><H7></i>
		</div>
	</div>
	 
<!--KONTAINER-->
<!--NAVIGASI & KONTEN-->
<div class="row" id="konten">
	<!--navigasi-->
	<div class="col-lg-2"><!-- A vertical navbar --> <?php include("navbar.php");?></div>
	<!--KONTen-->
	<div class="col-lg-10"><?php include("konten.php");?></div>
</div>


	 <!--FOOTER-->
	 <footer class="container-fluid text-center"> 
		<div class="col-lg-8">
			@Copy.2019 SMK Bina Mandiri Purwareja Klampok</marquee></div>
		<div class="col-lg-4">
		<div class="row">
			<div class="col-md-4">
				<a href="https://www.instagram.com/explore/tags/smkbinamandiriklampok/">Instagram</a>
			</div>
			
			<div class="col-md-4">Twiter
			</div>
			<div class="col-md-4">Facebook</div>	
		</div>
	</footer>

 </body>
</html>
