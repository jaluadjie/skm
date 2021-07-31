<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {


	function auth_user($username, $password){
		$this->db->select('*');
		$this->db->from('tb_user');
		$this->db->where('username', $username);
		$this->db->where('password', MD5($password));
		$this->db->limit(1);

		$query = $this->db->get();

		if($query -> num_rows() == 1){
			return $query->result();
		}
		else {
			return false;
		}
	}

}