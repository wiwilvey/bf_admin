<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$nota = new db();

if($_GET['pos'] == 'bayar'){
    $bayar = $nota->tampil(" * ","tbpengeluaran","KODE_BAYAR = {$_GET['kode']}","KODE_BAYAR",0);
    echo json_encode($bayar);
}elseif($_GET['pos']=='SPP'){
    $bayar = $nota->tampil("tbpemasukan.* , tbsiswa.NAMA","tbpemasukan,tbsiswa","KODE_POST = 'M01' && KODE_TERIMA = '{$_GET['kode']}' && tbsiswa.NIS = tbpemasukan.NIS ","KODE_TERIMA",0);
    echo json_encode($bayar);
}elseif($_GET['pos']=='DU'){
    $bayar = $nota->tampil("tbpemasukan.* , tbsiswa.NAMA","tbpemasukan,tbsiswa","KODE_POST = 'M02' && KODE_TERIMA = '{$_GET['kode']}'  && tbsiswa.NIS = tbpemasukan.NIS","KODE_TERIMA",0);
    echo json_encode($bayar);
}else{
    echo "0";
}