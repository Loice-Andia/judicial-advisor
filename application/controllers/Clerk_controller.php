<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Clerk_controller extends CI_Controller
{

	
    public function index()
    {
        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('clerk_dashboard');
        $this->load->view('includes/footer');
    }
    
    function add_case_view(){

        //$court_rank_id =_REQUEST['court_rank_id'];
        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        
        $data['legalrep'] = $this->Clerk_model->get_legalrep();
        $data['judicial_officers'] = $this->Clerk_model->get_judicial_officers();
        $data['case_code'] = $this->Clerk_model->get_case_codes();
        
        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);


        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('add_case', $data);
        $this->load->view('includes/footer');
    }

    public function add_case(){

		$this->load->model('Clerk_model');
        $query1 = $this->Clerk_model->add_case_details();
        $query2 = $this->Clerk_model->add_case_info();
        if (($query1 == true) && ($query2 == true)) {
            $this->session->set_flashdata('success', 'Case Record Added Successfully');
            redirect('clerk_controller/index', 'refresh');
        } else {
            $this->session->set_flashdata('error', 'Case Record Not Added');
            redirect('', 'refresh');
        }
	}

    public function get_case_type(){

        $this->load->model('Clerk_model');
        $data['role'] = $this->Clerk_model->get_case_type($case_code);
       

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