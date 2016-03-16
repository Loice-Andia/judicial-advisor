<?php

/**
* 
*/
class Clerk_Controller extends CI_Controller
{
	function add_case_view(){

        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $court_rank_id =_REQUEST['court_rank_id'];
        $data['case_code'] = $this->Clerk_model->get_case_codes($court_rank_id);
        $data['outcome'] = $this->Clerk_model->get_outcome();
        $data['legalrep'] = $this->Clerk_model->get_legalrep();
        $data['judicial_officers'] = $this->Clerk_model->get_judicial_officers();
        $this->load->view('add_case',$data);
    }

    public function add_case(){

		$this->load->model('Clerk_model');
        $query = $this->Clerk_model->add_case_details();
        if ($query == true) {
            $this->session->set_flashdata('success', 'Case Record Added Successfully');
            redirect('', 'refresh');
        } else if ($query == false) {
            $this->session->set_flashdata('error', 'Case Record Not Added');
            redirect('', 'refresh');
        }
	}
	
	public function get_case_per_casenum(){

		$case_num = $_REQUEST['case_num'];
		$court_id = $_REQUEST['court_id'];
        $this->load->model('Clerk_model');
        $data['edit_case_details'] = $this->Clerk_model->get_case($case_num);
        $data['court_names'] = $this->Clerk_model->get_courts($court_id);
        $data['main_content'] = '';
        $this->load->view('', $data);
	}

	public function update_case(){

		
	}
}
?>