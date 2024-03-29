<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Responden_model extends CI_Model
{

	var $table = 'tb_responden';
	var $column_order = array(null, 'umur', 'jk', 'n_pendidikan', 'n_pekerjaan', 'tgl_survey', null); //set column field database for datatable orderable
	var $column_search = array('umur', 'jk', 'n_pendidikan', 'n_pekerjaan', 'tgl_survey'); //set column field database for datatable searchable just firstname , lastname , address are searchable
	var $order = array('tgl_survey' => 'desc'); // default order 

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	private function _get_datatables_query()
	{
		$session_data = $_SESSION['masuk'];
		$hak_akses = $session_data['hak_akses'];
		$id_satker = $session_data['id_satker'];
		if ($hak_akses == 2) {
			$this->db->where('tb_responden.id_satker = ' . $id_satker);
		};
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->join('tbm_pendidikan', 'tb_responden.id_pendidikan = tbm_pendidikan.id_pendidikan');
		$this->db->join('tbm_pekerjaan', 'tb_responden.id_pekerjaan = tbm_pekerjaan.id_pekerjaan');
		$this->db->order_by('tgl_survey', 'desc');

		//$this->db->get();

		$i = 0;

		foreach ($this->column_search as $item) // loop column 
		{
			if ($_POST['search']['value']) // if datatable send POST for search
			{

				if ($i === 0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if (count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	// get all
	function get_all()
	{
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->join('tbm_pendidikan', 'tb_responden.id_pendidikan = tbm_pendidikan.id_pendidikan');
		$this->db->join('tbm_pekerjaan', 'tb_responden.id_pekerjaan = tbm_pekerjaan.id_pekerjaan');
		$this->db->join('tbm_satker', 'tb_responden.id_satker = tbm_satker.id_satker');
		$this->db->join('tb_layanan', 'tb_responden.id_layanan = tb_layanan.id_layanan');
		$query = $this->db->get();
		return $query->result();
	}

	function chart($data)
	{
		$session_data = $_SESSION['masuk'];
		$hak_akses = $session_data['hak_akses'];
		$id_satker = $session_data['id_satker'];
		if ($hak_akses == 2) {
			$this->db->where('tb_responden.id_satker = ' . $id_satker);
		};

		if ($data == 'edu') {
			// $select = 'tbm_pendidikan.n_pendidikan';
			$select = 'tbm_pendidikan.n_pendidikan as nama, "edu" as filter';
			$count_group_by = $this->table . '.id_pendidikan';
		} else if ($data == 'job') {
			// $select = 'tbm_pekerjaan.n_pekerjaan';
			$select = 'tbm_pekerjaan.n_pekerjaan as nama, "job" as filter';
			$count_group_by = $this->table . '.id_pekerjaan';
		} else {
			// $select = $this->table . '.jk';
			$select = 'tb_responden.jk as nama, "jk" as filter';
			$count_group_by = $this->table . '.jk';
		}


		$this->db->select($select . ', COUNT(' . $count_group_by . ') as jumlah');
		$this->db->group_by($count_group_by);
		$this->db->from($this->table);
		$this->db->join('tbm_pendidikan', 'tb_responden.id_pendidikan = tbm_pendidikan.id_pendidikan');
		$this->db->join('tbm_pekerjaan', 'tb_responden.id_pekerjaan = tbm_pekerjaan.id_pekerjaan');
		$query = $this->db->get();
		return $query->result();
	}

	function chart_rentang_usia()
	{
		$session_data = $_SESSION['masuk'];
		$hak_akses = $session_data['hak_akses'];
		$id_satker = $session_data['id_satker'];
		if ($hak_akses == 2) {
			$where = 'WHERE id_satker = ' . $id_satker . '';
		} else {
			$where = '';
		};
		$sql = "SELECT t.umur_group, COUNT(*) as umur_count, ('usia') as filter 
					FROM
					(
						SELECT
							CASE WHEN umur BETWEEN 20 and 25 THEN '20-25'
								WHEN umur BETWEEN 26 and 30 THEN '26-30'
								WHEN umur BETWEEN 31 and 35 THEN '31-35'
								ELSE 'Lainnya'
							END AS umur_group
						FROM tb_responden " . $where . "
					)t
					GROUP BY t.umur_group";
		$query = $this->db->query($sql);
		return $query->result();
	}

	function get_datatables()
	{
		$this->_get_datatables_query();
		if ($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$session_data = $this->session->userdata('masuk');
		if ($session_data['hak_akses'] == 2) {
			$this->db->where('id_satker', $session_data['id_satker']);
		}
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}

	public function get_by_id($id)
	{
		$this->db->from($this->table);
		$this->db->where('id_responden', $id);
		$query = $this->db->get();

		return $query->row();
	}

	public function save($data)
	{
		$this->db->insert($this->table, $data);
		return $this->db->insert_id();
	}

	public function update($where, $data)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
	}

	public function delete_by_id($id)
	{
		$this->db->where('id_responden', $id);
		$this->db->delete($this->table);
	}
}
