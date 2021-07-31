<?php
class Survey_model extends CI_Model{

    function get_pertanyaan(){
        $query = $this->db->get_where('tbm_pertanyaan', array('id_pertanyaan !=' => 1));
        return $query;
    }

    function get_jawaban($id_pertanyaan){
        if($id_pertanyaan == 1){
            $query = $this->db->get_where('tbm_jawaban', array('id_pertanyaan' => $id_pertanyaan));
        }else{
        $query = $this->db->get_where('tbm_jawaban', array('id_pertanyaan' => $id_pertanyaan, 'id_pertanyaan !=' => 1));
        }
        return $query;
    }

    function get_pendidikan(){
        $query = $this->db->get('tbm_pendidikan');
        return $query;
    }

    function get_pekerjaan(){
        $query = $this->db->get('tbm_pekerjaan');
        return $query;
    }

    function get_responden(){
        $query = $this->db->get('tb_responden');
        return $query;
    }

    function get_penilaian(){
        $query = $this->db->get('tb_penilaian');
        return $query;
    }

    function get_masukan(){
        $query = $this->db->get('tb_masukan');
        return $query;
    }

    function get_jawaban_penilaian(){
        $query = $this->db->select('jawaban');
        $query = $this->db->get('tb_penilaian');
        return $query;
    }

    public function save($dataResponden, $dataPenilaian)
	{
        $this->db->insert('tb_penilaian', $dataPenilaian);
        //$this->db->insert('tb_masukan', $dataSaran);
        //$this->db->insert_batch('tb_penilaian_detail', $dataPenilaianDetail);
        $this->db->insert('tb_responden', $dataResponden);
		return $this->db->insert_id();
	}

}