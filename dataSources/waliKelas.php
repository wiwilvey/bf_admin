<?php
require "../kelas/class.waliKelas.php";
$wk = new waliKelas();
$wali = $wk->tampilData();
echo json_encode($wali,JSON_PRETTY_PRINT);