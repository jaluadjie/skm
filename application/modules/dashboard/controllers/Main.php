<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		//$this->load->model('user_model','user');
		if(!$this->session->userdata('masuk')){
            redirect('login');
        }
	}

	public function index()
	{
		$session_data = $this->session->userdata('masuk');
		$data['uname'] = $session_data['sess_uname'];
		//$data['title'] = 'Hai Admin';
		//$data['subtitle'] = 'Selamat Datang Admin Utama';
		$this->load->view('index',$data);
	}

}
