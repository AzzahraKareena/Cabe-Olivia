<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        // $this->load->model('Data_model');
    }

    public function index()
    {

        $judul = [
            'title' => 'Manajemen Akun',
            'sub_title' => ''
        ];

        $data['data'] = $this->db->get('user')->result_array();

        $this->load->view('user/index', $judul + $data);
    }

    public function hapus($id)
    {
        $data = $this->db->get_where('user', ['id_user' => $id])->row_array();

        $this->db->where(['id_user' => $id]);
        $this->db->delete('user');
        $this->session->set_flashdata('success', "<strong>Data berhasil dihapus!</strong>");
        redirect(base_url('user'));
    }

    public function tambah()
    {
        // $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|trim');
        $this->form_validation->set_rules('nama_user', 'nama_user', 'required|trim');
        $this->form_validation->set_rules('username', 'username', 'required|min_length[5]|trim');
        $this->form_validation->set_rules('password', 'password', 'required|min_length[8]');

        if ($this->form_validation->run() == FALSE) {
            $judul = [
                'title' => 'Tambah Akun',
                'sub_title' => ''
            ];

            $this->load->view('user/tambah', $judul);
        } else {
            $nama_user = $this->input->post('nama_user');
            $username   = $this->input->post('username');
            $password = $this->input->post('password');

            $save = [
                'nama_user'      => $nama_user,
                'username'       => $username,
                'password'       => $password
            ];

            $this->db->insert('user', $save);
            $this->session->set_flashdata('success', "<strong>Data berhasil ditambah!</strong>");
            redirect(base_url('user'));
        }
    }

    public function edit($id)
    {
        // $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|trim');
        $this->form_validation->set_rules('nama_user', 'nama_user', 'required|trim');
        $this->form_validation->set_rules('username', 'username', 'required|min_length[5]|trim');
        $this->form_validation->set_rules('password', 'password', 'required|min_length[8]');

        if ($this->form_validation->run() == FALSE) {
            $judul = [
                'title' => 'Edit Akun',
                'sub_title' => ''
            ];

            // $user = $this->db->get_where('user', array('id_user' => $id));
            // $results = $user->result_array();

            // $data['user'] = $results;

            $data['userdata'] = $this->db->get_where('user', ['id_user' => $id])->row_array();

            $this->load->view('user/edit', $judul + $data);
        } else {
            $nama_user = $this->input->post('nama_user');
            $username   = $this->input->post('username');
            $password = $this->input->post('password');

            $update = [
                'nama_user'      => $nama_user,
                'username'       => $username,
                'password'       => $password
            ];

            $this->db->where(['id_user' => $id]);
            $this->db->update('user', $update);

            $this->session->set_flashdata('success', "<strong>Data berhasil diperbarui!<strong>");
            redirect(base_url('user'));
        }
    }
}
