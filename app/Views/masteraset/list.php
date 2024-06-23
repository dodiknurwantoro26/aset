<div class="col-sm-12">
    <a href="<?= base_url() ?>/master_aset/tambah" class="btn btn-primary mb-3">Tambah Data</a>

    <?php
    if (!empty(session()->getFlashdata())) {

    ?>
        <div class="alert alert-success">
            <?= session()->getFlashdata('success', 'Data Berhasil Ditambahkan'); ?>

        </div>
    <?php } ?>

    <table id="example1" class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>No</th>
                <th>Name Aset</th>
                <th>Type</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Operaing System</th>
                <th>Stock</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php $no = 1;
            foreach ($masteraset as $key => $value) : ?>
                <tr>
                    <th><?= $no++; ?></th>
                    <th><?= $value['name_aset']; ?></th>
                    <th><?= $value['type'] ?></th>
                    <th><?= $value['brand'] ?></th>
                    <th><?= $value['model'] ?></th>
                    <th><?= $value['os'] ?></th>
                    <th><?= $value['stock'] ?></th>
                    <th>
                        <a href="<?= base_url('/master_aset/edit/' . $value['id_aset']) ?>" class="btn btn-warning">Edit</a>
                        <a href="<?= base_url('/master_aset/delete/' . $value['id_aset']) ?>" class="btn btn-danger" onclick="return confirm('Apakah benar akan delete data?')">Delete</a>
                    </th>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>