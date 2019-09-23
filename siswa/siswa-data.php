<?php
	require ("../kelas/class.db.php");
$ks = new db();

if($_GET['kelas']){
	$kelas = $_GET['kelas'];
	$siswa = $ks->tampil("*","siswa","kelas='$kelas'","nama",0);
//echo json_encode($siswa);
}else{
	$siswa = $ks->tampil("*","siswa","kelas=1","nama",0);	
//echo json_encode($siswa);
}
for($i = 0 ; $i < COUNT($siswa) ; $i++){
	echo "
	<tr>
	<td>".$siswa[$i]['NAMA']."</td>
	<td>".$siswa[$i]['KELAS']."</td>
	<td>".$siswa[$i]['ORANG_TUA']."</td>
	<td>".$siswa[$i]['ALAMAT']."</td>
	<td>".$siswa[$i]['WALI_KELAS']."</td>
	</tr>
	";
}
?>
