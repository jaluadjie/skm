<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('satker_model','m_satker');
		if(!$this->session->userdata('masuk')){
            redirect('login');
        }
	}

	public function index()
	{
		$session_data = $this->session->userdata('masuk');
		if($session_data['hak_akses'] == 1){
			$data['n_hak_akses'] = 'Super Admin';
		}else{
			$data['n_hak_akses'] = 'Operator';
		};
		$data['hak_akses'] = $session_data['hak_akses'];
		$data['uname'] = $session_data['sess_uname'];
		$data['satker'] = $this->m_satker->get_satker_name_by_id($session_data['id_satker'])->row();
		//$data['title'] = 'Hai Admin';
		//$data['subtitle'] = 'Selamat Datang Admin Utama';
		$this->load->view('index',$data);
	}

}
