<?php
class Clerk_model extends CI_Model
{
	public function get_judicial_officers(){

		$query=$this->db->get('judicial_officers');
        return $query;

	}
	public function get_judicial_officers_per_id($judicial_officer_id){
		$this->db->where('judicial_officer_id', $judicial_officer_id);

		$query=$this->db->get('judicial_officers');
        return $query->row()->judicial_officer_name;

	}

	public function get_legalrep(){

		$query=$this->db->get('legalrep');
        return $query;

	}
	public function get_courts(){

		$query=$this->db->get('court_names');
        return $query;

	}

	public function get_legalrep_per_id($legalrep_id){
		$this->db->where('legalrep_id', $legalrep_id);

		$query=$this->db->get('legalrep');
        return $query->row()->legalrep_name;

	}

	public function get_outcome(){

		$query=$this->db->get('outcome');
        return $query;

	}

	function get_court_ranks(){

        $query=$this->db->get('court_ranks');
        return $query;

    }
    public function get_court_rank(){
    	$court_id = $this->session->userdata('court_id');
    	$this->db->select('court_rank_id');
    	$this->db->where('court_id',$court_id);
    	$query=$this->db->get('court_names');
    	return $query->row()->court_rank_id;
    }

    function get_case_codes(){
    	$court_rank_id= $this->get_court_rank();
    	
        $this->db->where('court_rank_id',$court_rank_id);

        $query=$this->db->get('case_codes');
        return $query;

    }

    function get_case_type(){
    	$case_code = $this->input->post('case_code');

        $this->db->where('case_code',$case_code);

        $query=$this->db->get('case_type');
        return $query;

    }

	function add_case_details(){

		$court_id = $this->session->userdata('court_id');

		$new_case_details = array(
            'court_id' => $court_id,
            'case_num' => $this->input->post('case_code') . "/". $this->input->post('case_number'). "/2015",
            'case_type' => $this->input->post('case_type'),
            'date_filed' => $this->input->post('date_filed'),
            'judicial_officer_id' => $this->input->post('judicial_officers'),
            'plaintiffs' => $this->input->post('plaintiffs'),
            'defendants' =>$this->input->post('defendants'),
            'legalrep_id' => $this->input->post('legalrep'),
            'origcasenum_appeal' => $this->input->post('origcasenum_appeal'),

            );
        $query = $this->db->insert('case_details', $new_case_details);
        return $query;

	}

	function add_case_info(){

		$new_case_info = array(
			'case_num' => $this->input->post('case_code') ."/". $this->input->post('case_number'). "/2015",
			'case_details' => $this->input->post('case_details'),
			'evidence' => $this->input->post('evidence'), 
			);

		$query = $this->db->insert('case_information', $new_case_info);
		return $query;
	}

	public function get_all_case_details(){

		$query=$this->db->get('case_details');
		return $query;

	}

	public function get_case_details_per_case_num($case_num){
		$this->db->where('case_num', $case_num);

		$query=$this->db->get('case_details');
		return $query;

	}

	public function get_court_per_id($court_id){

		$this->db->where('court_id', $court_id);

		$query=$this->db->get('court_names');
		return $query;

	}

	public function get_case_info($case_num){

		$this->db->where('case_num', $case_num);
        $query = $this->db->get('case_information');
        return $query;

	}

	public function search_case(){

		$searchvalue = $this->input->post('search_case');
		$this->db->like('case_num', $searchvalue);
		$this->db->or_like('plaintiffs', $searchvalue);
		$this->db->or_like('defendants', $searchvalue);

        $query = $this->db->get('case_details');

        return $query;
	}
	
	public function update_case($case_num){
		$data = array(
			'court_id' => $this->input->post('court_name') ,
			'plaintiffs' => $this->input->post('plaintiffs'),
			'defendants' =>$this->input->post('defendants'),
			'origcasenum_appeal' => $this->input->post('origcasenum_appeal'),
			);
		 $this->db->where('case_num', $case_num);

		$query = $this->db->update('case_details', $data);
        return $query;
	}
	public function update_case_info($case_num){
		$data = array(
			'case_details' => $this->input->post('case_grounds'),
			'evidence' => $this->input->post('evidence'), 
			);
		$this->db->where('case_num', $case_num);


		$query = $this->db->update('case_information', $data);
        return $query;
	}

}
?>