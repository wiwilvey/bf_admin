$(document).ready(function(){
/*daftar siswa  */
		$("#e_kls").change(function(){
			$.ajax({
				url: "dataSources/siswa-data.php?kelas="+$(this).val(),
				success: function(siswa){
				$("#dftSiswa").html(siswa);	
				}
			});
		});
})
