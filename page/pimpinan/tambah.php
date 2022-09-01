<div class="box box-success box-solid">
    <div class="box-header with-border">
        Tambah Data Struktur
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-12">

                <form method="POST" enctype="multipart/form-data">

                    <div class="form-group">
                        <label>Nama Struktur</label>
                        <input class="form-control" name="nama" required="" />

                    </div>

                    <div class="form-group">
                        <label>No HP</label>
                        <input class="form-control" name="no_hp" required="" placeholder="Contoh 6285781480396" />

                    </div>



                    <input type="submit" name="simpan" value="Simpan" class="btn btn-success">
            </div>
        </div>

        </form>
    </div>
</div>




<?php

$nama = $_POST['nama'];
$no_hp = $_POST['no_hp'];


$simpan = $_POST['simpan'];


if ($simpan) {




    $sql = $koneksi->query("insert into tb_tujuan (nama_tujuan, no_hp)values('$nama', '$no_hp')");


    if ($sql) {
        echo "

          <script>
              setTimeout(function() {
                  swal({
                      title: 'Selamat!',
                      text: 'Data Berhasil Disimpan!',
                      type: 'success'
                  }, function() {
                      window.location = '?page=pimpinan';
                  });
              }, 300);
          </script>

      ";
    }
}

?>