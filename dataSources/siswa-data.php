<?php
error_reporting(0);
	require ("../kelas/class.db.php");
$ks = new db();

if($_GET['kelas']){
	$kelas = $_GET['kelas'];
	$siswa = $ks->tampil("tbsiswa.* , guru.NAMA GURU","tbsiswa,guru",
	"kelas='$kelas' && guru.NIG=tbsiswa.WALI_KELAS","tbsiswa.NAMA",0);
	
//echo json_encode($siswa);
}else{
	$siswa = $ks->tampil("tbsiswa.* , guru.NAMA GURU","tbsiswa,guru",
	"guru.NIG=tbsiswa.WALI_KELAS","tbsiswa.NAMA",0);	
	
	//echo json_encode($siswa);
}
for($i = 0 ; $i < COUNT($siswa) ; $i++){
	echo "
		<tr>
			<td>".$siswa[$i]['NIS']."</td>
			<td>".$siswa[$i]['NAMA']."</td>
			<td>".$siswa[$i]['KELAS']."</td>
			<td>".$siswa[$i]['ORANG_TUA']."</td>
			<td>".$siswa[$i]['ALAMAT']."</td>
			<td>".$siswa[$i]['GURU']."</td>
			<td>
				<a class='btn btn-primary' href='./?page=formulir-siswa&modus=update&id=".$siswa[$i]['NIS']."'>
				<span class='glyphicon glyphicon-pencil'></span> </a>
				<a class='btn btn-danger' href='./siswa/hapus.php?id=".$siswa[$i]['NIS']."'>
				<span class='glyphicon glyphicon-remove'></span></a>
			</td>
		</tr>
	";
}
?>
