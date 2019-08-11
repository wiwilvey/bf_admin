
<!-- id,nama,kelompokId,nomorHp -->
<form action="actions/tamu.php" method="post">

<input type="hidden" name="modus" id="modus" value="tambah">

<div class="form-group">
    <label for="id">ID Tamu</label>
    <input type="text" name="idTamu" id="idTamu" class="form-control">
</div>

<div class="form-group">
    <label for="namaTamu">Nama Tamu</label>
    <input type="text" name="namaTamu" id="namaTamu" class="form-control">
</div>

<div class="form-group">
    <label for="nomorHP">Nomor HP</label>
    <input type="text" name="nomorHP" id="nomorHP" class="form-control">
</div>

<div class="form-group">
    <label for="kelompokId">ID Kelompok</label>
    <select name="kelompokId" id="kelompokId" class="form-control">
    </select>
</div>

<div class="form-group">
    <button type="submit" class="btn btn-primary">Simpan</button>
</div>
</form>
