<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		if (!$this->session->userdata('masuk')) {
			redirect('login');
		}
		$this->load->model('responden/responden_model', 'm_resp');
		$this->load->model('satker_model', 'm_satker');
		$this->load->model('layanan/layanan_model', 'm_layanan');
		//$this->load->model('user_model','user');
	}

	public function index()
	{
		$session_data = $this->session->userdata('masuk');
		$data['hak_akses'] = $session_data['hak_akses'];
		$data['jml_responden'] = $this->m_resp->count_all();
		$data['jml_satker'] = $this->m_satker->count_all();
		$data['jml_layanan'] = $this->m_layanan->count_all();
		$data['chart_responden_jk'] = $this->m_resp->chart('jk');
		$data['chart_responden_edu'] = $this->m_resp->chart('edu');
		$data['chart_responden_job'] = $this->m_resp->chart('job');
		$data['chart_responden_age'] = $this->m_resp->chart_rentang_usia();
		$this->load->view('dashboard', $data);
	}

	public function test_chart()
	{
		$data['chart_responden_edu'] = $this->m_resp->chart('job');
		print_r($data);
	}
}
