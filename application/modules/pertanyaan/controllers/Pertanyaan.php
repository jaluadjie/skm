<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pertanyaan extends CI_Controller {
	

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('pertanyaan_model','m_pertanyaan');
		$this->load->model('jawaban_model','m_jawaban');
		//validasi jika user belum login
    	if(!$this->session->userdata('masuk')){
            redirect('login');
        }
	}

	public function index()
	{
		//$this->load->helper('url');
		$data['title'] = 'Pertanyaan Survey';
		$data['subtitle'] = 'List Pertanyaan Survey Kepuasan Masyarakat';
		$data['satker'] = $this->satker->get_all_satker();
		$this->load->view('layanan',$data);
	}
	
	public function ajax_list()
	{
		$list = $this->layanan->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $layanan) {
			$no++;
			$row = array();
			$row[] = null; //kolom nomor urut
			$row[] = $layanan->n_satker;
			$row[] = $layanan->n_layanan;
			$row[] = $layanan->biaya;
			$row[] = $layanan->standar_waktu;
			// $row[] = $layanan->spesifikasi;
			

			//add html for action
			$row[] = '<div class="btn-group"><a class="btn btn-sm btn-round btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_('."'".$layanan->id_layanan."'".')"><i class="material-icons">edit</i></a>
				  <a class="btn btn-sm btn-round btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_('."'".$layanan->id_layanan."'".')"><i class="material-icons">delete</i></div>';
		
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->layanan->count_all(),
						"recordsFiltered" => $this->layanan->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->layanan->get_by_id($id);
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
				'id_satker' => $this->input->post('id_satker'),
				'n_layanan' => $this->input->post('n_layanan'),
				'n_dasar_hukum' => $this->input->post('n_dasar_hukum'),
				'biaya' => $this->input->post('biaya'),
				'standar_waktu' => $this->input->post('standar_waktu'),
				'spesifikasi' => $this->input->post('spesifikasi')
			);
		$insert = $this->layanan->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
			'id_satker' => $this->input->post('id_satker'),
			'n_layanan' => $this->input->post('n_layanan'),
			'n_dasar_hukum' => $this->input->post('n_dasar_hukum'),
			'biaya' => $this->input->post('biaya'),
			'standar_waktu' => $this->input->post('standar_waktu'),
			'spesifikasi' => $this->input->post('spesifikasi')
			);
		$this->layanan->update(array('id_layanan' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->layanan->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}

	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if($this->input->post('id_satker') == '')
		{
			$data['inputerror'][] = 'id_satker';
			$data['error_string'][] = 'Silahkan pilih OPD';
			$data['status'] = FALSE;
		}

		if($this->input->post('n_layanan') == '')
		{
			$data['inputerror'][] = 'n_layanan';
			$data['error_string'][] = 'Silahkan isi Nama Layanan';
			$data['status'] = FALSE;
		}

		if($this->input->post('n_dasar_hukum') == '')
		{
			$data['inputerror'][] = 'n_dasar_hukum';
			$data['error_string'][] = 'Silahkan isi Dasar Hukum';
			$data['status'] = FALSE;
		}

		if($this->input->post('biaya') == '')
		{
			$data['inputerror'][] = 'biaya';
			$data['error_string'][] = 'Silahkan isi biaya pelayanan';
			$data['status'] = FALSE;
		}

		if($this->input->post('standar_waktu') == '')
		{
			$data['inputerror'][] = 'standar_waktu';
			$data['error_string'][] = 'Silahkan isi Waktu';
			$data['status'] = FALSE;
		}
		if($this->input->post('spesifikasi') == '')
		{
			$data['inputerror'][] = 'spesifikasi';
			$data['error_string'][] = 'Silahkan isi Spesifikasi';
			$data['status'] = FALSE;
		}

		if($data['status'] === FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}
}