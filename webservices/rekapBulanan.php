<?php
header("Access-Control-Allow-Origin: *");
error_reporting(E_ALL & ~E_NOTICE);
require "../kelas/class.db.php";
$rekap = new db();
IF($_GET['kelas']==''){
    $kelas = 'X PKM';
}else{
    $kelas = str_replace("-"," ",$_GET['kelas']);
}
$conn = $rekap->koneksi();
if( $_GET['pos'] == 'spp'){
    $sql1 = "SELECT DATE_FORMAT(`TANGGAL`,'%m-%Y') BULAN ,SUM(`JUMLAH`) JUMLAH FROM `v_spp` GROUP BY LEFT(TANGGAL,7)";
    $qry1 = $conn->query($sql1);
    $rebul = [];
    while($res1 = $qry1->fetch_assoc()){
        array_push($rebul,$res1);
    }
    
    $sql2 = "SELECT DATE_FORMAT(`TANGGAL`,'%m-%Y') BULAN, `KELAS` ,SUM(`JUMLAH`) JUMLAH FROM `v_spp` WHERE KELAS = '$kelas' GROUP BY  LEFT(TANGGAL,7) ORDER BY LEFT(TANGGAL,7)";
    $qry2 = $conn->query($sql2);
    $rekel = [];
    while($res2 = $qry2->fetch_assoc()){
        array_push($rekel,$res2);
    }

    $qry1=null;
    $qry2=null;

    $output = ['perbulan'=>$rebul , 'perkelas'=>$rekel];
    echo json_encode($output , JSON_PRETTY_PRINT);
}

if( $_GET['pos'] == 'du'){
    $sql1 = "SELECT DATE_FORMAT(`TANGGAL`,'%m-%Y') BULAN ,SUM(`JUMLAH`) JUMLAH FROM `v_du` GROUP BY LEFT(TANGGAL,7)";
    $qry1 = $conn->query($sql1);
    $rebul = [];
    while($res1 = $qry1->fetch_assoc()){
        array_push($rebul,$res1);
    }
    
    $sql2 = "SELECT DATE_FORMAT(`TANGGAL`,'%m-%Y') BULAN, `KELAS` ,SUM(`JUMLAH`) JUMLAH FROM `v_du` WHERE KELAS = '$kelas' GROUP BY  LEFT(TANGGAL,7) ORDER BY  LEFT(TANGGAL,7)";
    $qry2 = $conn->query($sql2);
    $rekel = [];
    while($res2 = $qry2->fetch_assoc()){
        array_push($rekel,$res2);
    }

    $qry1=null;
    $qry2=null;

    $output = ['perbulan'=>$rebul , 'perkelas'=>$rekel];
    echo json_encode($output , JSON_PRETTY_PRINT);
}

if( $_GET['pos'] == 'keluar'){
    if($_GET['kb']==''){
        $kobi = '%';
    }else{
        $kobi = $_GET['kb'];
    }
    $sql1 = "SELECT BULAN,v_keluar.KODE_BIAYA,NAMA_POSTING, SUM(JUMLAH) JUMLAH FROM `v_keluar` , `tbpostanggaran` WHERE tbpostanggaran.KODE_BIAYA LIKE '$kobi' && `tbpostanggaran`.`KODE_BIAYA` = `v_keluar`.`KODE_BIAYA`GROUP BY BULAN , `v_keluar`.`KODE_BIAYA`";
    
    $qry1 = $conn->query($sql1);
    $rebul = [];
    while($res1 = $qry1->fetch_assoc()){
        array_push($rebul,$res1);
    }
    
    $qry1=null;

    echo json_encode($rebul , JSON_PRETTY_PRINT);
}