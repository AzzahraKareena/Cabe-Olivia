<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function index()
    {
        $judul = [
            'title' => 'Dashboard',
            'sub_title' => ''
        ];

        $this->load->view('dashboard/index', $judul);
    }
}
