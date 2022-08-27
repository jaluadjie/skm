<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Frontpage extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('satker_model');
		$this->load->model('layanan_model');
		$this->load->library('secure');
	}

	function index()
	{
		$data['nama_opd'] = $this->satker_model->get_all_satker();
		$this->load->view('v_frontpage', $data);
		//$this->load->view('v_depan', $data);
	}

	//menampilkan layanan per id_satker
	function get_layanan_by_id()
	{
		$id_satker = $this->input->post('id', TRUE);
		$decrypt_id = $this->secure->decrypt_url($id_satker);
		$data = $this->layanan_model->get_layanan_by_id($decrypt_id);
		echo json_encode($data);
	}
}
