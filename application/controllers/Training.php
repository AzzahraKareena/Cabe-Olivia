<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Training extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Data_model');
  }

  public function index()
  {

    $judul = [
      'title' => 'List Training',
      'sub_title' => ''
    ];

    $data['data'] = $this->Data_model->tampilList();

    $this->load->view('data_train/index', $judul + $data);
    // $this->load->view('data_train/index', $data);
  }

  public function hapus($id)
  {

    $data = $this->db->get_where('data_training', ['id_data' => $id])->row_array();

    $this->db->where(['id_data' => $id]);
    $this->db->delete('data_training');
    $this->session->set_flashdata('success', '<strong>Berhasil Dihapus!</strong>');
    redirect(base_url('training'));
  }

  public function tambah()
  {

    $this->form_validation->set_rules('bulan', 'bulan', 'required|trim');
    $this->form_validation->set_rules('wilayah', 'wilayah', 'required|trim');
    $this->form_validation->set_rules('curah_hujan', 'curah_hujan', 'required|numeric|trim');
    $this->form_validation->set_rules('hama', 'hama', 'required|trim');


    if ($this->form_validation->run() == FALSE) {
      $judul = [
        'title' => 'Tambah List',
        'sub_title' => ''
      ];

      $this->load->view('data_train/tambah', $judul);
    } else {
      $bulan =  $this->input->post("bulan", TRUE);
      $wilayah =  $this->input->post("wilayah", TRUE);
      $curah_hujan = $this->input->post("curah_hujan", TRUE);
      $hama = $this->input->post("hama", TRUE);

      $save = [
        'bulan ' => $bulan,
        'wilayah' => $wilayah,
        'curah_hujan' => $curah_hujan,
        'hama' => $hama

      ];

      $this->db->insert('data_training', $save);
      $this->session->set_flashdata('success', '<strong>Berhasil Ditambahkan!</strong>');
      redirect(base_url("training"));
    }
  }

  public function edit($id)
  {
    $this->form_validation->set_rules('bulan', 'bulan', 'required|trim');
    $this->form_validation->set_rules('wilayah', 'wilayah', 'required|trim');
    $this->form_validation->set_rules('curah_hujan', 'curah_hujan', 'required|numeric|trim');
    $this->form_validation->set_rules('hama', 'hama', 'required|trim');

    if ($this->form_validation->run() == FALSE) {
      $judul = [
        'title' => 'Edit List',
        'sub_title' => ' '
      ];

      $data['data_training'] = $this->db->get_where('data_training', ['id_data' => $id])->row_array();

      $this->load->view('data_train/edit', $judul + $data);
    } else {
      $bulan =  $this->input->post("bulan", TRUE);
      $wilayah =  $this->input->post("wilayah", TRUE);
      $curah_hujan = $this->input->post("curah_hujan", TRUE);
      $hama = $this->input->post("hama", TRUE);


      $update = [
        'bulan ' => $bulan,
        'wilayah' => $wilayah,
        'curah_hujan' => $curah_hujan,
        'hama' => $hama
      ];

      $this->db->where('id_data', $id);
      $this->db->update('data_training', $update);

      $this->session->set_flashdata("success", "<strong>Data berhasil diperbarui!</strong>");
      redirect(base_url("training"));
    }
  }
}
