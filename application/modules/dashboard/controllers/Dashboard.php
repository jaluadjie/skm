<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('responden/responden_model','m_resp');
		$this->load->model('satker_model','m_satker');
		$this->load->model('layanan_model','m_layanan');
		//$this->load->model('user_model','user');
	}

	public function index()
	{
		// $data['title'] = 'Dashboard';
		// $data['subtitle'] = 'Selamat Datang Admin';
		$data['jml_responden'] = $this->m_resp->count_all();
		$data['jml_satker'] = $this->m_satker->count_all();
		$data['jml_layanan'] = $this->m_layanan->count_all();
		$this->load->view('dashboard',$data);
	}

}
