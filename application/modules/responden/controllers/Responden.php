<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Responden extends CI_Controller {
	

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('responden_model','responden');
		//$this->load->model('user_model','user');
		//validasi jika user belum login
    	if(!$this->session->userdata('masuk')){
            redirect('login');
        }
	}

	public function index()
	{
		//$this->load->helper('url');
		$data['title'] = 'Tabel Responden';
		$data['subtitle'] = 'List Responden Survey';
		// $data['chart'] = $this->responden->chart('id_pendidikan');
		$this->load->view('responden',$data);
	}

	public function ajax_list()
	{
		$list = $this->responden->get_datatables();
		//$recordsTotal = $this->barang->count_all();
		$data = array();
		$no = $_POST['start'];
		//$no_urut = 1;
		foreach ($list as $resp) {
			if($resp->jk == 'lk'){
				$jk ="Laki-laki";
			} else { $jk ="Perempuan";}
			$no++;
			$row = array();
			$row[] = null; //kolom nomor urut
			$row[] = $resp->umur;
			$row[] = $jk;
			$row[] = $resp->n_pendidikan;
			$row[] = $resp->n_pekerjaan;
			$row[] = date_format(date_create($resp->tgl_survey),"d/m/y");

			//add html for action
			$row[] = '<a class="btn btn-sm btn-success" href="javascript:void(0)" title="Detail" onclick="edit_('."'".$resp->id_responden."'".')"><i class="fa fa-eye" ></i></a>';
		
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->responden->count_all(),
						"recordsFiltered" => $this->responden->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->responden->get_by_id($id);
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
				'username' => $this->input->post('username'),
				'password' => MD5($this->input->post('password')),
				'id_satker' => $this->input->post('id_satker'),
				'hak_akses' => $this->input->post('hak_akses'),
				'status' => $this->input->post('status')
			);
		$insert = $this->responden->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password'),
				'id_satker' => $this->input->post('id_satker'),
				'hak_akses' => $this->input->post('hak_akses'),
				'status' => $this->input->post('status')
			);
		$this->responden->update(array('id_user' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->responden->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}

	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if($this->input->post('username') == '')
		{
			$data['inputerror'][] = 'username';
			$data['error_string'][] = 'Silahkan isi username';
			$data['status'] = FALSE;
		}

		if($this->input->post('password') == '')
		{
			$data['inputerror'][] = 'password';
			$data['error_string'][] = 'Silahkan isi password';
			$data['status'] = FALSE;
		}

		if($this->input->post('id_satker') == '')
		{
			$data['inputerror'][] = 'id_satker';
			$data['error_string'][] = 'Silahkan pilih Perangkat Daerah';
			$data['status'] = FALSE;
		}

		if($this->input->post('hak_akses') == '')
		{
			$data['inputerror'][] = 'hak_akses';
			$data['error_string'][] = 'Silahkan pilih Hak Akses';
			$data['status'] = FALSE;
		}

		if($this->input->post('status') == '')
		{
			$data['inputerror'][] = 'status';
			$data['error_string'][] = 'Silahkan pilih status';
			$data['status'] = FALSE;
		}

		if($data['status'] === FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}
	function dt_responden(){
		$data['responden'] = $this->responden->get_all();
		$this->load->view('dt_responden',$data);
	}

	function google_chart(){
		$var=$this->uri->segment(3);
		$data=$this->responden->chart($var);
		echo json_encode($data);
	}

	function chart_responden(){
		$data['title'] = 'Chart Responden';
		$data['subcategory'] = 'Data Responden berdasarkan jenis kelamin, pendidikan dan pekerjaan';
		$this->load->view('chart_responden',$data);
	}
	function coba_chart(){
		$data['title'] = 'Chart Responden';
		$data['subcategory'] = 'Data Responden berdasarkan jenis kelamin, pendidikan dan pekerjaan';
		$this->load->view('coba_chart',$data);
	}
}