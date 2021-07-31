<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Frontpage extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('satker_model');
		$this->load->model('layanan_model');
		$this->load->library('encryption');
	}

	function index()
	{
		$data['nama_opd']=$this->satker_model->get_all_satker();
		$this->load->view('v_frontpage',$data);
		//$this->load->view('v_depan', $data);
	}

	//menampilkan layanan per id_satker
	function get_layanan_by_id(){
        $id_satker = $this->input->post('id',TRUE);
		$data = $this->layanan_model->get_layanan_by_id($id_satker);
		echo json_encode($data);
    }
}
