<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Survey extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->helper('array');
		$this->load->model('survey_model');
		$this->load->model('satker_model');
		$this->load->model('layanan_model');
		$this->load->library('secure');
	}

	function index()
	{
		$id_satker = $this->secure->decrypt_url($this->uri->segment(3));
		$id_layanan = base64_decode($this->uri->segment(4));
		$data['satker'] = $this->satker_model->get_satker_name_by_id($id_satker)->row_array();
		$data['layanan'] = $this->layanan_model->get_layanan_name_by_id($id_layanan, $id_satker)->row_array();
		$data['pendidikan'] = $this->survey_model->get_pendidikan()->result();
		$data['pekerjaan'] = $this->survey_model->get_pekerjaan()->result();
		//$data['jml_responden'] = $this->survey_model->get_responden()->num_rows(); //cek jumlah responden.
		//$data['jml_penilaian'] = $this->survey_model->get_penilaian()->num_rows(); //cek jumlah penilaian.
		//$data['jml_masukan'] = $this->survey_model->get_masukan()->num_rows(); //cek jumlah saran.
		$data['pertanyaan'] = $this->survey_model->get_pertanyaan()->result_array();

		//get jawaban penilaian umum
		$where = 1;
		$data['penilaian_umum'] = $this->survey_model->get_jawaban($where)->result_array();
		$this->load->view('v_survey2', $data);
		//echo json_encode($data);
	}

	function qna()
	{
		$response = array();
		$pertanyaan = $this->survey_model->get_pertanyaan()->result_array();
		foreach ($pertanyaan as $q) {
			//echo "<br>".$q['id_pertanyaan'].". ".$q['n_pertanyaan']."<br>";
			$jawaban = $this->survey_model->get_jawaban($q['id_pertanyaan'])->result_array();
			foreach ($jawaban as $a) {
				//echo $a['n_jawaban']."<br>";
				$response[] = array('id_p' => $q['id_pertanyaan'], 'n_p' => $q['n_pertanyaan'], 'id_a' => $a['id_jawaban'], 'n_a' => $a['n_jawaban'], 'bobot' => $a['bobot_nilai']);
			}
		}
		header('Content-Type: application/json');
		echo json_encode(
			array(
				'success' => true,
				'message' => 'Get Data Survey',
				'data' => $response
			)
		);
	}

	function takeSurvey()
	{
		//$response = array();
		//$query = $this->survey_model->get_jawaban_penilaian()->result_array();
		//echo var_dump(json_decode($query,true));
		$this->load->view('v_survey2');
	}

	public function ajax_add()
	{
		$this->_validate();
		//$id_penilaian = $this->survey_model->get_penilaian()->num_rows()+1; //cek jumlah penilaian.
		$id_responden = $this->survey_model->get_responden()->num_rows() + 1; //cek jumlah responden.
		//$id_masukan = $this->survey_model->get_masukan()->num_rows()+1; //cek jumlah saran.
		//$jml_pertanyaan = $this->survey_model->get_pertanyaan()->num_rows();

		//get ip_address
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$ip_address = $_SERVER['HTTP_CLIENT_IP'];
		}
		//whether ip is from proxy
		elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}
		//whether ip is from remote address
		else {
			$ip_address = $_SERVER['REMOTE_ADDR'];
		}

		$data_responden = array(
			'umur' => $this->input->post('umur'),
			'jk' => $this->input->post('jk'),
			'id_satker' => $this->input->post('id_satker'),
			'id_layanan' => $this->input->post('id_layanan'),
			'id_pendidikan' => $this->input->post('pendidikan'),
			'id_pekerjaan' => $this->input->post('pekerjaan'),
			'ip_address' => $ip_address
		);

		/*$jawaban_survey=array();
			//foreach($_POST['pertanyaan'] as $key => $val){
				for($i=2;$i<$jml_pertanyaan+2;$i++){
					$j = $i-1;
					$baris = "u".$j;
					$a_ = "jawaban_".$i;
				$jawaban_survey = array(
									$baris => $_POST[$a_]
				);
				}
			//}
			$jawaban_ = json_encode($jawaban_survey);*/
		$data_penilaian = array(
			'id_satker' => $this->input->post('id_satker'),
			'id_layanan' => $this->input->post('id_layanan'),
			'id_responden' => $id_responden,
			'penilaian_umum' => $this->input->post('umum'),
			'u1' => $_POST['jawaban_2'],
			'u2' => $_POST['jawaban_3'],
			'u3' => $_POST['jawaban_4'],
			'u4' => $_POST['jawaban_5'],
			'u5' => $_POST['jawaban_6'],
			'u6' => $_POST['jawaban_7'],
			'u7' => $_POST['jawaban_8'],
			'u8' => $_POST['jawaban_9'],
			'u9' => $_POST['jawaban_10'],
			'saran' => $_POST['saran']
		);

		/*$data_saran = array(
			'id_responden' => $id_responden,
			'n_masukan' => $this->input->post('saran')
		);

		$data_penilaian_detail = array();
			//foreach($_POST['pertanyaan'] as $key => $val){
				for($i=2;$i<$jml_pertanyaan+2;$i++){
					$q_ = "pertanyaan_".$i;
					$a_ = "jawaban_".$i;
				$data_penilaian_detail[] = array(
					'id_penilaian' => $id_penilaian,
					'id_responden' => $id_responden,
					'id_pertanyaan' => $_POST[$q_],
					'id_jawaban' => $_POST[$a_]
				);
				}
			//}*/
		$this->survey_model->save($data_responden, $data_penilaian);
		echo json_encode(array("status" => TRUE));
		//redirect('frontpage','location', 301);
	}


	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if ($this->input->post('umur') == '') {
			$data['inputerror'][] = 'umur';
			$data['error_string'][] = 'Usia tidak boleh kosong!';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jk') == '') {
			$data['inputerror'][] = 'jk';
			$data['error_string'][] = 'Jenis kelamin tidak boleh kosong';
			$data['status'] = FALSE;
		}

		if ($this->input->post('pendidikan') == '') {
			$data['inputerror'][] = 'pendidikan';
			$data['error_string'][] = 'Pendidikan tidak boleh kosong';
			$data['status'] = FALSE;
		}

		if ($this->input->post('pekerjaan') == '') {
			$data['inputerror'][] = 'Pekerjaan';
			$data['error_string'][] = 'Pekerjaan tidak boleh kosong';
			$data['status'] = FALSE;
		}

		if ($this->input->post('umum') == '') {
			$data['inputerror'][] = 'umum';
			$data['error_string'][] = 'Harap pilih nilai penilaian umum';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_2') == '') {
			$data['inputerror'][] = 'jawaban_2';
			$data['error_string'][] = 'Harap beri nilai persyaratan pelayanan';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_3') == '') {
			$data['inputerror'][] = 'jawaban_3';
			$data['error_string'][] = 'Harap beri nilai prosedur pelayanan';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_4') == '') {
			$data['inputerror'][] = 'jawaban_4';
			$data['error_string'][] = 'Harap beri nilai kecepatan waktu';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_5') == '') {
			$data['inputerror'][] = 'jawaban_5';
			$data['error_string'][] = 'Harap beri nilai biaya/tariff';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_6') == '') {
			$data['inputerror'][] = 'jawaban_6';
			$data['error_string'][] = 'Harap beri nilai kesesuaian dengan standar pelayanan';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_7') == '') {
			$data['inputerror'][] = 'jawaban_7';
			$data['error_string'][] = 'Harap beri nilai kompetensi petugas pleyanan';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_8') == '') {
			$data['inputerror'][] = 'jawaban_8';
			$data['error_string'][] = 'Harap beri nilai sikap petugas pelayanan';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_9') == '') {
			$data['inputerror'][] = 'jawaban_9';
			$data['error_string'][] = 'Harap beri nilai kualitas sarana dan prasarana';
			$data['status'] = FALSE;
		}

		if ($this->input->post('jawaban_10') == '') {
			$data['inputerror'][] = 'jawaban_10';
			$data['error_string'][] = 'Harap beri nilai penanganan pengaduan';
			$data['status'] = FALSE;
		}

		if ($data['status'] === FALSE) {
			echo json_encode($data);
			exit();
		}
	}
}
