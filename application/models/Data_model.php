<?php

class Data_model extends CI_Model
{
  public function tampilList()
  {
    $this->db->select('*');
    $this->db->from('data_training');
    $this->db->order_by('bulan', 'DESC'); //Urutin data berdasarkan nama Z->A
    $query = $this->db->get();
    return $query->result_array();
  }

  public function get_id($id)
  {
    $this->db->select('*');
    $this->db->from('user');
    $this->db->where('user.id_user', $id);
    $query = $this->db->get();
    return $query->result_array();
  }
}
