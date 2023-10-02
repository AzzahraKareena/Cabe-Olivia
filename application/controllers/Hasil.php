<?php
class Hasil extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('Data_model');
    $this->load->model('Hasil_model');
  }

  public function index()
  {
    $judul = [
      'title' => 'Hasil Training',
      'sub_title' => ''
    ];

    $data['data'] = $this->Data_model->tampilList();
    $data['hasil'] = $this->Hasil_model->tampilHasil();

    $this->load->view('hasil/index', $judul + $data);
  }

  public function save_prediction()
  {
    $bulan_awal = $this->input->post('bulan_awal');
    $bulan_akhir = $this->input->post('bulan_akhir');
    $tipe_ch = $this->input->post('tipe_ch');
    $daftar_hama = $this->input->post('daftar_hama');

    $data = array(
      'bulan_awal' => $bulan_awal,
      'bulan_akhir' => $bulan_akhir,
      'tipe_ch' => $tipe_ch,
      'daftar_hama' => $daftar_hama
    );

    $this->Hasil_model->saveHasil($data);
    redirect(base_url("hasil"));
  }
}
