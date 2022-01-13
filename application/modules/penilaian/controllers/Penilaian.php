<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian extends CI_Controller {
	

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('penilaian_model','m_penilaian');
		$this->load->model('satker_model','m_satker');
		$this->load->model('layanan_model','m_layanan');
		//validasi jika user belum login
    	if(!$this->session->userdata('masuk')){
            redirect('login');
        }
	}

	public function index()
	{
		//$this->load->helper('url');
		$data['title'] = 'Penilaian Survey';
		$data['subtitle'] = 'List Penilaian Survey';
		$data['satker'] = $this->m_satker->get_all_satker();
		$this->load->view('penilaian',$data);
	}
	
	public function ajax_list()
	{
		$list = $this->m_penilaian->get_datatables();
		//$recordsTotal = $this->barang->count_all();
		$data = array();
		$no = $_POST['start'];
		//$no_urut = 1;
		foreach ($list as $p) {
			if($p->status == 0){
				$status ="Under Review";
			}elseif($p->status == 1){
				$status ="Approved";
			}else{
				$status="Archived";
			}
			$no++;
			$row = array();
			$row[] = null; //kolom nomor urut
			$row[] = $p->n_satker;
			$row[] = $p->n_layanan;
			$row[] = $p->penilaian_umum;
			$row[] = $p->u1;
			$row[] = $p->u2;
			$row[] = $p->u3;
			$row[] = $p->u4;
			$row[] = $p->u5;
			$row[] = $p->u6;
			$row[] = $p->u7;
			$row[] = $p->u8;
			$row[] = $p->u9;
			$row[] = $status;

			//add html for action
			$row[] = '<div class="btn-group"><a class="btn btn-sm btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_('."'".$p->id_penilaian."'".')"><i class="fa fa-edit" ></i></a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_('."'".$p->id_penilaian."'".')"><i class="fa fa-trash"></i></div>';
		
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->m_penilaian->count_all(),
						"recordsFiltered" => $this->m_penilaian->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->m_penilaian->get_by_id($id);
		echo json_encode($data);
	}

	// public function ajax_list_barang($id_sumber)
	// {
	// 	$data = $this->operator->get_by_sumber_id($id_sumber);
	// 	echo json_encode($data);
	// }

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
		$insert = $this->m_penilaian->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
				// 'username' => $this->input->post('username'),
				// 'password' => $this->input->post('password'),
				// 'id_satker' => $this->input->post('id_satker'),
				// 'hak_akses' => $this->input->post('hak_akses'),
				'status' => $this->input->post('status')
			);
		$this->m_penilaian->update(array('id_user' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->m_penilaian->delete_by_id($id);
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
}