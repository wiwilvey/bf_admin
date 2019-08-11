<!DOCTYPE html>
<html lang="en">
<head>
  <title>Judul Website</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/bukuTamu.js"></script>
</head>
<body>
  <div class="container">
    <div class="row">
      <h2>FORMULIR BUKU TAMU</h2>
      <?php
      include "forms/formTamu.php";
      ?>
    </div>

    <div class="row">
    <H2>DAFTAR TAMU</H2>
    <?php
      include "tables/tblTamu.php";
      ?>
    </div>

  </div>
</body>
</html>
