<?php
header("Access-Control-Allow-Origin:*");
// username: bimanager. password: *mandir1
// echo md5("bimanager_-_*mandiri1");
if(md5("{$_POST['username']}_-_{$_POST['password']}") == '0d070351191ed878d7ab301f1b1a341d'){
    $login = array('status'=>'success','username'=>'Bimanager');
}else{
    $login = array('status'=>'failed','username'=>'none');
}

echo json_encode($login);