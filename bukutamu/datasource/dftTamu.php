<?php
//select($cols,$table,$key,$start=0
require_once "../lib/class.crud.inc.php";
$bt = new dbcrud();

$sql = "SELECT tamu.*, kelompok.namaKelompok
        FROM tamu,kelompok
        WHERE kelompok.kelompokId = tamu.kelompokId
        ORDER By tamu.nama
        LIMIT 50";

$qry = $bt->transact($sql);
$tamu = [];
while($res = $qry->fetch()){
    array_push($tamu,$res);
}

echo json_encode($tamu);

?>