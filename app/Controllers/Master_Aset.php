<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\MasterAsetModel;

class Master_Aset extends BaseController
{
    protected $MasterAsetModel;

    public function __construct()
    {
        $this->MasterAsetModel = new MasterAsetModel();
    }

    //view database
    public function index()
    {
        $data = [
            'title' => 'Master Aset',
            //panggil hasil value database untuk di kirim ke 'product/list.php'
            'masteraset' => $this->MasterAsetModel->get_product(),
            'isi' => 'masteraset/list'
        ];
        echo view('layout/wrapper', $data);
    }

    //add database
    public function tambah()
    {
        $data = [
            'title' => 'Add Master Aset',
            'isi' => 'masteraset/tambah',
        ];
        echo view('layout/wrapper', $data);
    }
    // eksekusi add database
    public function save()
    {
        $data = [
            'name_aset' => $this->request->getPost('name_aset'),
            'type' => $this->request->getPost('type'),
            'brand' => $this->request->getPost('brand'),
            'model' => $this->request->getPost('model'),
            'os' => $this->request->getPost('os'),
            'stock' => $this->request->getPost('stock')
        ];
        $this->MasterAsetModel->insert_product($data);
        session()->setFlashdata('success', 'Data Berhasil di Tambahkan');
        return redirect()->to(base_url('Master_aset'));
    }

    //edit value di view
    public function edit($id_aset)
    {
        $data = [
            'title' => 'Page Edit',
            'masterasetedit' => $this->MasterAsetModel->edit_product($id_aset),
            'isi' => 'masteraset/edit',
        ];
        echo view('layout/wrapper', $data);
    }

    // update value untuk upload ke database
    public function update($id_aset)
    {
        $data = [
            'name_aset' => $this->request->getPost('name_aset'),
            'type' => $this->request->getPost('type'),
            'brand' => $this->request->getPost('brand'),
            'model' => $this->request->getPost('model'),
            'os' => $this->request->getPost('os'),
            'stock' => $this->request->getPost('stock')
        ];
        $this->MasterAsetModel->update_product($data, $id_aset);
        session()->setFlashdata('success', 'Data Berhasil di update');
        return redirect()->to(base_url('master_aset'));
    }

    //delele value database
    public function delete($id_aset)
    {
        $this->MasterAsetModel->delete_product($id_aset);
        session()->setFlashdata('warning', 'Data Terhapus');
        return redirect()->to(base_url('master_aset'));
    }
}
