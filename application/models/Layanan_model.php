<?php
class Layanan_model extends CI_Model
{

    //ditampilkan di frontpage
    function get_layanan_by_id($id_satker)
    {
        $query = $this->db->get_where('tb_layanan', array('id_satker' => $id_satker))->result();
        return $query;
    }

    //ditampilkan di survey
    function get_layanan_name_by_id($id_layanan, $id_satker)
    {
        $query = $this->db->get_where('tb_layanan', array('id_layanan' => $id_layanan, 'id_satker' => $id_satker));
        return $query;
    }

    public function count_all()
    {
        $this->db->from('tb_layanan');
        return $this->db->count_all_results();
    }
}
