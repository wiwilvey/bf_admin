<?php
//pickone($cols,$table,$key,$data)
require_once "../lib/class.crud.inc.php";
$bt = new dbcrud();

//ambil data semua kolom dari tabel tamu
// yang kolom id isinya sama dengan nilai $_GET['id'];
$data = $bt->pickone("*","tamu","id",$_GET['id']);
echo json_encode($data);

?>