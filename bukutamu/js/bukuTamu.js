$(document).ready(function(){
    //berasal dari file forms/formTamu.php
    $.getJSON("datasource/klpTamu.php",function(kelompok){
        $("#kelompokId option").remove();
        $.each(kelompok, function(i,data){
            $("#kelompokId").append(
                "<option value='"+data.kelompokId+"'>"+data.namaKelompok+"</option>"
            );   
        });    
    });
    
    //berasal dari file tables/tableTamu.php
$.getJSON("datasource/dftTamu.php",function(tamu){
    // bersihkan elemen id=daftarTamu dari anak tr
    $("#daftarTamu tr").remove();

$.each(tamu, function(i,data){
        $("#daftarTamu").append(
            "<tr>"+
            "<td>"+data.id+"</td>"+
            "<td>"+data.nama+"</td>"+
            "<td>"+data.namaKelompok+"</td>"+
            "<td>"+data.nomorHP+"</td>"+
            "<td>"+
            "<a style='cursor:pointer;' class='btn btn-primary' onClick=editTamu('"+data.id+"') >Edit</a>"+
            "<a style='cursor:pointer;' class='btn btn-danger' onClick=hapusTamu('"+data.id+"') >Hapus</a>"+
            "</td>"+
            "</tr>"
            );
        });
    });
});

function editTamu(id){
    $("#idTamu").val(id);
    $.getJSON("datasource/detilTamu.php?id="+id, function(tamu){
        $("#namaTamu").val(tamu.nama);
        $("#nomorHP").val(tamu.nomorHP);
        $("#kelompokId").val(tamu.kelompokId);
        $("#modus").val('ganti');
    });
}

function hapusTamu(id){
    let hapus = confirm("Data Akan Dihapus !!");
    if (hapus==true){
        $.post("actions/tamu.php",{
            modus : 'hapus',
            idTamu : id
        }, function(resp){
            location.reload();

        })
    }
}