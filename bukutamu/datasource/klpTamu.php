<?php
//select($cols,$table,$key,$start=0
require_once "../lib/class.crud.inc.php";
$bt = new dbcrud();

$klpTamu = $bt->select("*","kelompok","namaKelompok",0);
echo json_encode($klpTamu);


?>