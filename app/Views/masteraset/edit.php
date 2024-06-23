<!-- Main content -->
<section class="content">

    <div class="row">
        <!-- left column -->
        <div class="col-5">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Edit</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form action="<?= base_url('master_aset/update/' . $masterasetedit['id_aset']); ?>" method="post">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="Name Aset">Name Aset</label>
                            <input type="text" name="name_aset" value="<?= $masterasetedit['name_aset']; ?>" class="form-control" id="Product Name" placeholder="Input Name Aset" required>
                        </div>
                        <div class="form-group">
                            <label for="Type">Type</label>
                            <input type="text" value="<?= $masterasetedit['type']; ?>" name="type" class="form-control" id="Type" placeholder="Input Type" required>
                        </div>
                        <div class="form-group">
                            <label for="Brand">Brand</label>
                            <input type="text" value="<?= $masterasetedit['brand']; ?>" name="brand" class="form-control" id="Brand" placeholder="Input Brand" required>
                        </div>
                        <div class="form-group">
                            <label for="Model">Model</label>
                            <input type="text" value="<?= $masterasetedit['model']; ?>" name="model" class="form-control" id="Model" placeholder="Input Model" required>
                        </div>
                        <div class="form-group">
                            <label for="Operating System">Operating System</label>
                            <input type="text" value="<?= $masterasetedit['os']; ?>" name="os" class="form-control" id="Operating System" placeholder="Input Operating System" required>
                        </div>
                        <div class="form-group">
                            <label for="Stock">Stock</label>
                            <input type="text" value="<?= $masterasetedit['stock']; ?>" name="stock" class="form-control" id="Stock" placeholder="Input Stock" required>
                        </div>
                        <!-- <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="exampleInputFile">
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                                <div class="input-group-append">
                                    <span class="input-group-text">Upload</span>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer">
                        <button type="submit" class="btn btn-info">Update</button>
                    </div>
                </form>
            </div>
            <!-- /.card -->

        </div>
        <!-- /.row -->

</section>
<!-- /.content -->