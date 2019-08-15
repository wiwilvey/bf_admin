<?php
header("Access-Control-Allow-Origin: *");

require "../kelas/class.db.php";
$bayar = new db();

$conn = $bayar->koneksi();

// Jumlah SPP
$spp_sql = "SELECT SUM(JUMLAH) spp FROM tbpemasukan WHERE KODE_POST = 
'M01'";
$spp_res = $conn->query($spp_sql);
$spp_fet = $spp_res->fetch_assoc();
$spp_tot = $spp_fet['spp'];

//echo $spp_tot;
//echo "<br>";
// Jumlah DU
$du_sql = "SELECT SUM(JUMLAH) du FROM tbpemasukan WHERE KODE_POST = 
'M02'";
$du_res = $conn->query($du_sql);
$du_fet = $du_res->fetch_assoc();
$du_tot = $du_fet['du'];

//echo $du_tot;
//echo "<br>";
// jumlah pengeluaran
$out_sql = "SELECT SUM(JUMLAH) keluar FROM tbpengeluaran ";
$out_res = $conn->query($out_sql);
$out_fet = $out_res->fetch_assoc();
$out_tot = $out_fet['keluar'];

//echo $out_tot;
//echo "<br>";
//SISA BIAYA
$sisa = ($spp_tot + $du_tot) - $out_tot;
// echo $sisa;

$data = array('spp'=>$spp_tot , 'du'=>$du_tot , 'keluar'=>$out_tot , 
'sisa'=>$sisa);
echo json_encode($data);
