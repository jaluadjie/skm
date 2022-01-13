<?php
class Login extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->load->model('Login_model','m_login');
        $this->load->helper('form');
        $this->load->library('form_validation');
    }
 
    function index(){
        $this->load->view('login_view');
    }

    function auth(){
		$this->form_validation->set_rules('username', 'Username', 'required');
	   $this->form_validation->set_rules('password', 'Password', 'required|callback_verifyUser');

	   if($this->form_validation->run() == FALSE)
	   {
	     $this->session->set_flashdata('msg','Username dan Password tidak sesuai');
	            redirect('login');
	   }
	   else
	   {
	     //Go to private area
	     redirect('dashboard/main', 'refresh');
	   }
	}

	function verifyUser(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$cek_ = $this->m_login->auth_user($username, $password);

		if($cek_) {
			$sess_array = array();
			foreach ($cek_ as $row) {
				$sess_array = array(
					'akses' => $row->hak_akses,
					'sess_uname' => $row->username,
					'id_satker' => $row->id_satker,
					'hak_akses' => $row->hak_akses
				);
				$this->session->set_userdata('masuk', $sess_array);
			}
			return TRUE;
		}
		else{
			$this->form_validation->set_message('verifyUser', 'Username dan Password tidak sesuai');
			return FALSE;
		}

	}

	function logout(){
        $this->session->sess_destroy();
        $url=base_url('login');
        redirect($url);
    }




    	/*$uname=htmlspecialchars($this->input->post('username',TRUE),ENT_QUOTES);
        $pass=htmlspecialchars($this->input->post('password',TRUE),ENT_QUOTES);
 
        $cek_=$this->login_model->auth_user($uname,$pass);

        if($cek_->num_rows() > 0) {
        	$data = $cek_->row_array();
        	$this->session->set_userdata('masuk', TRUE);
        	$this->session->set_userdata('akses', $data['level_id']);
        	$this->session->set_userdata('ses_uname', $data['username']);
        	redirect('index');
        }
        else {
        	echo $this->session->set_flashdata('msg', 'Username atau Password tidak sesuai');
        	redirect('login');
        }
    }*/
}