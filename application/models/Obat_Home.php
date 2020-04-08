<?php

class Obat_Home extends CI_Model
{
    public function Get_Keywoard($keywoard)
    {
        $keywoard = $this->input->post('keywoard', true);
        $this->db->like('Nama_Obat', $keywoard);
        $this->db->or_like('Keterangan_Obat', $keywoard);
        return $this->db->get('apon')->result();
    }
    public function get_All($table){
        $this->db->select('*');
        $this->db->from($table);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function Get_Detail($Id){
      return $this->db->get_where('obat', ['ID_Obat' => $Id])->row_array();
    }

    public function Get_DetailNama($Id){
      return $this->db->get_where('obat', ['Nama_Obat' => $Id])->row_array();
    }

    public function getHistoryAdmin(){
        $this->db->select('idtransaksi,namaUser,ID_Obat,Jumlah,Metode_Pembayaran,Status');
        $this->db->from('transaksi');
        $this->db->join('user','user.username = transaksi.username');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getHistoryUser($username){
        $this->db->select('obat.ID_Obat,Jumlah,Total_Harga,Metode_Pembayaran,Status');
        $this->db->from('transaksi');
        $this->db->join('obat','obat.ID_Obat = transaksi.ID_obat');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function search()
    {
        $this->db->select("*");
        $this->db->from("obat");
        $this->db->like("Nama_Obat", $this->input->post("yangdicari"));
        $query = $this->db->get();
        return $query->result_array();
    }

    public function updateStatus($id){
        $data = [
            "Status" => "Lunas"
        ];

        $this->db->where('idtransaksi', $id);
        $this->db->update('transaksi', $data);
    }

}
