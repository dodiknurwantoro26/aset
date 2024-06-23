<?php

namespace App\Models;

use CodeIgniter\BaseModel;
use CodeIgniter\Model;

class MasterAsetModel extends Model
{
    public function get_product()
    {
        //ambil semua value tabel database
        return $this->db->table('tbl_aset')->get()->getResultArray();
    }

    //insert data
    public function insert_product($data)
    {
        return $this->db->table('tbl_aset')->insert($data);
    }

    //edit edit
    public function edit_product($aset)
    {
        return $this->db->table('tbl_aset')->where('id_aset', $aset)->get()->getRowArray();
    }

    //update data
    public function update_product($data, $aset)
    {
        return $this->db->table('tbl_aset')->update($data, array('id_aset' => $aset));
    }

    //delete data
    public function delete_product($aset)
    {
        return $this->db->table('tbl_aset')->delete(array('tbl_aset' => $aset));
    }
}
