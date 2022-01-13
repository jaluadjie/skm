<?php
class Satker_model extends CI_Model{

    function get_all_satker(){
        $query = $this->db->get('tbm_satker')->result();
        return $query;
    }

    function get_satker_name_by_id($id_satker){
        $query = $this->db->get_where('tbm_satker',array('id_satker' => $id_satker));
        return $query;
    }

    public function count_all()
	{
		$this->db->from('tbm_satker');
		return $this->db->count_all_results();
	}

}