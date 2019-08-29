<?php
require "./kelas/class.user.php";
$user = new user();
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h2>DAFTAR PENGGUNA BIMAFUND</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 table-responsive">
            <table class="table table-hover table-sm">
                <thead>
                    <tr>
                        <th>Kode</th>
                        <th>Nama</th>
                        <th>Jabatan</th>
                        <th>Username</th>
                        <th>Kontrol</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <form action="user/aksi-user.php" method="post">
                    <input type="hidden" id="postmodus" name="postmodus" value="baru">
                        <td width="100">
                            <input type="text" name="nig" id="nig" class="form-control" placeholer = "KODE USER">
                        </td>
                        <td>
                            <input type="text" name="nama" id="nama" class="form-control" placeholer = "NAMA USER">
                        </td>
                        <td>
                            <select name="jabatan" id="jabatan" class="form-control">
                                <option value="ks">Kepala Sekolah</option>
                                <option value="wks">Wakil KS</option>
                                <option value="bnd">Bendahara</option>
                                <option value="wkl">Wali Kelas</option>
                            </select>
                        </td>
                        <td width="130">
                            <input type="text" name="usernama" id="usernama" class="form-control" placeholer = "USERNAME">
                        </td>
                        <td>
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </td>
                    </form>
                </tr>
                <?php
                    $data = $user->tampilData('NAMA',0,1);
                    foreach($data AS $key=>$value):
                ?>
                    <tr>
                        <td><?=$value['NIG'];?></td>
                        <td><?=$value['NAMA'];?></td>
                        <td><?=$user->kamusJabatan($value['JABATAN']);?></td>
                        <td><?=$value['USERNAME'];?></td>
                        <td>
                            <a class="btn btn-success user-pwd">password</a>
                            <a class='btn btn-warning user-chg'>ubah</a>
                            <a class="btn btn-danger user-del"> hapus</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                    
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal -->
<div id="userModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Ganti Password</h4>
      </div>
      <div class="modal-body">
        <form action="user/aksi-user.php" method="post">
            <input type="hidden" name="postmodus" value="chpwd">
            <div class="form-group">
                <label for="NIG">NIG</label>
                <input type="text" name="usernig" id="usernig" class="form-control" readonly>
            </div>
            <div class="form-group">
                <label for="password">Password Baru</label>
                <input type="password" name="sandi" id="sandi" class="form-control">
            </div>
        
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Simpan</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </form>
      </div>
    </div>

  </div>
</div>

<script>
    $(document).ready( function(){
        $('.user-chg').on('click',function(){
            let nig,nama,username;
            nig = $(this).parent('td').parent('tr').children('td:nth-child(1)').text();
            nama = $(this).parent('td').parent('tr').children('td:nth-child(2)').text();
            username = $(this).parent('td').parent('tr').children('td:nth-child(4)').text();

            $("#nig").val(nig);
            $("#nama").val(nama);
            $("#usernama").val(username);
            $("#postmodus").val('ubah');
        })

        $(".user-pwd").on('click',function(){
            let nig = $(this).parent('td').parent('tr').children('td:nth-child(1)').text();
            $("#userModal").modal('show');
            $("#usernig").val(nig);
        })

        $(".user-del").on('click',function(){
            let nig = $(this).parent('td').parent('tr').children('td:nth-child(1)').text();
            let tenan = confirm('User akan dihapus !');
            if( tenan == true ){
                $.post('user/aksi-user.php' ,{
                    postmodus: 'pansiun',
                    usernig : nig
                },function(){
                   location.reload();
                })
            }
        })
    })
</script>