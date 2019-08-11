<?php
require('../kelas/class.db.php');
$cit = new db();
$walikelas = $cit->tampil("walikelas.*,guru.NAMA,kelas.NAMA_KELAS","walikelas,guru,kelas",
"kelas.KODE_KELAS=walikelas.KODE_KELAS && guru.NIG=walikelas.KODE_GURU",'KODE_GURU',0);
echo json_encode($walikelas);
