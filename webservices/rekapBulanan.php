<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$rekap = new db();

$conn = $rekap->koneksi();
if( $_GET['pos'] == 'spp'){
    $sql1 = "SELECT LEFT(`TANGGAL`,7) BULAN ,SUM(`JUMLAH`) JUMLAH FROM `v_spp` GROUP BY LEFT(TANGGAL,7)";
    $qry1 = $conn->query($sql1);
    $rebul = [];
    while($res1 = $qry1->fetch_assoc()){
        array_push($rebul,$res1);
    }
    
    $sql2 = "SELECT LEFT(`TANGGAL`,7) BULAN, `KELAS` ,SUM(`JUMLAH`) JUMLAH FROM `v_spp` GROUP BY KELAS , LEFT(TANGGAL,7) ORDER BY KELAS, LEFT(TANGGAL,7)";
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
    $sql1 = "SELECT LEFT(`TANGGAL`,7) BULAN ,SUM(`JUMLAH`) JUMLAH FROM `v_du` GROUP BY LEFT(TANGGAL,7)";
    $qry1 = $conn->query($sql1);
    $rebul = [];
    while($res1 = $qry1->fetch_assoc()){
        array_push($rebul,$res1);
    }
    
    $sql2 = "SELECT LEFT(`TANGGAL`,7) BULAN, `KELAS` ,SUM(`JUMLAH`) JUMLAH FROM `v_du` GROUP BY KELAS , LEFT(TANGGAL,7) ORDER BY KELAS, LEFT(TANGGAL,7)";
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
    $sql1 = "SELECT BULAN,v_keluar.KODE_BIAYA,NAMA_POSTING, JUMLAH FROM `v_keluar` , `tbpostanggaran` WHERE `tbpostanggaran`.`KODE_BIAYA` = `v_keluar`.`KODE_BIAYA`GROUP BY BULAN , `v_keluar`.`KODE_BIAYA`";
    $qry1 = $conn->query($sql1);
    $rebul = [];
    while($res1 = $qry1->fetch_assoc()){
        array_push($rebul,$res1);
    }
    
    $qry1=null;

    echo json_encode($rebul , JSON_PRETTY_PRINT);
}