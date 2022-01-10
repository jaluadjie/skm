<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('responden/responden_model','res_m');
		//$this->load->model('user_model','user');
	}

	public function index()
	{
		$data['title'] = 'Dashboard';
		$data['subtitle'] = 'Selamat Datang Admin';
		$data['jml_responden'] = $this->res_m->count_all();
		$this->load->view('dashboard',$data);
	}

}
