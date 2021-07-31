<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Operator extends CI_Controller {
	

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('operator_model','operator');
		$this->load->model('satker_model','satker');
		//validasi jika user belum login
    	if(!$this->session->userdata('masuk')){
            redirect('login');
        }
	}

	public function index()
	{
		//$this->load->helper('url');
		$data['title'] = 'Operator';
		$data['subtitle'] = 'List Admin/Operator OPD';
		$data['satker'] = $this->satker->get_all_satker();
		$this->load->view('operator',$data);
	}
	
	public function ajax_list()
	{
		$list = $this->operator->get_datatables();
		//$recordsTotal = $this->barang->count_all();
		$data = array();
		$no = $_POST['start'];
		//$no_urut = 1;
		foreach ($list as $op) {
			if($op->status == 1){
				$status ="Aktif";
			} else { $status ="Non Aktif";}

			if($op->hak_akses == 1){
				$hak_akses = "Super Admin";
			}else {$hak_akses = "Admin OPD";}
			$no++;
			$row = array();
			$row[] = null; //kolom nomor urut
			$row[] = $op->username;
			$row[] = $op->n_satker;
			$row[] = $hak_akses;
			$row[] = $status;

			//add html for action
			$row[] = '<div class="btn-group"><a class="btn btn-sm btn-round btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_('."'".$op->id_user."'".')"><i class="material-icons">edit</i></a>
				  <a class="btn btn-sm btn-round btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_('."'".$op->id_user."'".')"><i class="material-icons">delete</i></div>';
		
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->operator->count_all(),
						"recordsFiltered" => $this->operator->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->operator->get_by_id($id);
		echo json_encode($data);
	}

	public function ajax_list_barang($id_sumber)
	{
		$data = $this->operator->get_by_sumber_id($id_sumber);
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
		$insert = $this->operator->save($data);
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
		$this->operator->update(array('id_user' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->operator->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}

	/*public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbm_barang.xls";
        $judul = "tbm_barang";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
		xlsWriteLabel($tablehead, $kolomhead++, "Sumber Barang");
		xlsWriteLabel($tablehead, $kolomhead++, "Nama Barang");
		xlsWriteLabel($tablehead, $kolomhead++, "Satuan");

		foreach ($this->barang->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
		    xlsWriteLabel($tablebody, $kolombody++, $data->n_sumber_barang);
		    xlsWriteLabel($tablebody, $kolombody++, $data->n_barang);
		    xlsWriteLabel($tablebody, $kolombody++, $data->satuan);

		    $tablebody++;
	        $nourut++;
        }

        xlsEOF();
        exit();
    }*/


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