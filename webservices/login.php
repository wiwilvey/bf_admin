<?php
require("../kelas/class.user.php");
$user = new user();
$datauser = $user->login($_POST['uname'],$_POST['upass']);
if($datauser==='Tidak ada hasil'){
    $result = ['sukses'=>0,'data'=>NULL];
}else{
    $result = ['sukses'=>1,'data'=>$datauser];
}

echo json_encode($result);