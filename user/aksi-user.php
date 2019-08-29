<?php
require("../kelas/class.user.php");
$user = new user();
if($_POST['postmodus']=='baru'){
    $kolom = "NIG,NAMA,JABATAN,USERNAME,PASSWORD";
    $data = "'{$_POST['nig']}','{$_POST['nama']}','{$_POST['jabatan']}','{$_POST['usernama']}','1234567890'";
    $user->tambahData($kolom,$data);
    header("Location:../?page=user&p=1");
}

if($_POST['postmodus']=='ubah'){
    $dataset = "NAMA='{$_POST['nama']}' , JABATAN = '{$_POST['jabatan']}' , USERNAME = '{$_POST['usernama']}'";
    $kondisi = "NIG = '{$_POST['nig']}'";
    $user->updateData($dataset,$kondisi);
    header("Location:../?page=user&p=1");
}

if($_POST['postmodus']=='chpwd'){
    $user->updatePassword($_POST['sandi'],$_POST['usernig']);
    header("Location:../?page=user&p=1");
}

if($_POST['postmodus']=='pansiun'){
    $user->pecatUser($_POST['usernig']);
}