<?php
class Clerk_model extends CI_Model
{
	public function get_judicial_officers(){

		$query=$this->db->get('judicial_officers');
        return $query;

	}

	public function get_legalrep(){

		$query=$this->db->get('legalrep');
        return $query;

	}

	public function get_outcome(){

		$query=$this->db->get('outcome');
        return $query;

	}

	function get_court_ranks(){

        $query=$this->db->get('court_ranks');
        return $query;

    }

    function get_case_codes($court_rank_id){

        $this->db->where('court_rank_id',$court_rank_id)

        $query=$this->db->get('role');
        return $query;

    }

    function get_case_type($case_code){

        $this->db->where('case_code',$case_code)

        $query=$this->db->get('case_type');
        return $query;

    }

	function add_case_details(){

		$new_case_details = array(
            'case_num' => $this->input->post('case_num'),
            'court_name' => $this->input->post('court_name'),
            'court_rank_id' => $this->input->post('court_rank_name'));
        $query = $this->db->insert('court_names', $new_court);
        return $query;

	}

	function add_case_info(){

		$new_case_info = array(
			'case_num' => $this->input->post('case_num'),
			'case_details' => $this->input->post('case_details'),
			'evidence' => $this->input->post('evidence'),
			'witnesses' => $this->input->post('witnesses'),  
			);

		$query = $this->db->insert('case_information', $new_case_info)
	}

	public function get_case_details(){

		$query=$this->db->get->('case_details');
		return $query;

	}

	public function get_courts($court_id){

		$this->db->where('court_id', $court_id);

		$query=$this->db->get->('court_names');
		return $query;

	}

	public function get_case_info($case_num){

		$this->db->where('case_num', $case_num);
        $query = $this->db->get('case_information');
        return $query;

	}

	public function get_case($case_num){

		$this->db->where('case_num', $case_num);
        $this->db->from('case_details');
        $this->db->join('case_information','case_details.case_num=case_information.case_num');
        $query=$this->db->get();

        return $query;
	}
	
	public function update_case($case_num){

		
	}

}
?>