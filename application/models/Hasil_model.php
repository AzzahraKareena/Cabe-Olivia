<?php

class Hasil_model extends CI_Model
{
  public function tampilHasil()
  {
    $this->db->select('*');
    $this->db->from('hasil_prediksi');
    $this->db->order_by('id_hasil', 'DESC');
    $query = $this->db->get();
    return $query->result_array();
  }

  public function saveHasil($data)
  {
    $this->db->insert('hasil_prediksi', $data);
  }
}
