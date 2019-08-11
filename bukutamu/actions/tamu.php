<?php
//print_r($_POST);

require_once "../lib/class.crud.inc.php";
$bt = new dbcrud();

if($_POST{'modus'} == 'tambah'){
// insert($table,$sets,$data)
    $table = "tamu";
    $sets  = "id,nama,kelompokId,nomorHP";
    $data  = array($_POST['idTamu'],$_POST['namaTamu'],$_POST['kelompokId'],$_POST['nomorHP']);

    $bt->insert($table,$sets,$data);
}

if($_POST{'modus'} == 'ganti'){
    // insert($table,$sets,$data)
    $table = "tamu";
    $sets  = "nama,kelompokId,nomorHP";
    $key   = 'id';
    $data  = array($_POST['namaTamu'],$_POST['kelompokId'],$_POST['nomorHP'],
            $_POST['idTamu']);
    
    $bt->update($table,$sets,$data,$key);
}

//script untuk hapus data
if($_POST['modus']=='hapus'){
    echo "Hapus Data";
    $table = "tamu";
    $key   = 'id';
    $data  = $_POST['idTamu'];
    $bt->delete($table,$key,$data);
}

// arahkan kembali ke index
header("location:../");