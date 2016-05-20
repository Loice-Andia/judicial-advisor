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
            redirect('judge_controller/view_cases', 'refresh');
        } else {
            $this->session->set_flashdata('error', 'Case Record Not Added');
            redirect('', 'refresh');
        }
	}

    public function search_case(){

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
        $this->load->view('search_case');
        $this->load->view('includes/footer');
       

    }
	
    public function search_results(){

        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);
        $data['cases'] = $this->Clerk_model->search_case();

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('view_cases',$data);
        $this->load->view('includes/footer');
    }

	public function get_case_details_per_casenum(){

        $case_num=$_REQUEST['case_num'];

        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['case_info'] = $this->Clerk_model->get_case_info($case_num);
        $data['role'] = $this->Admin_model->get_user_role($role_id);

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('view_case_details',$data);
        $this->load->view('includes/footer');
	}

	public function edit_case_view(){
        $case_num=$_REQUEST['case_num'];

        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');

        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);
        $data['court_names'] = $this->Clerk_model->get_courts();
        $data['case_details'] = $this->Clerk_model->get_case_details_per_case_num($case_num);
        $data['case_info'] = $this->Clerk_model->get_case_info($case_num);

        $this->load->view('includes/header',$data);
        $this->load->view('includes/side_menu',$data);
        $this->load->view('edit_case',$data);
        $this->load->view('includes/footer');
    }
    public function update_case(){
        $case_num = $_REQUEST['case_num'];

        $this->load->model('Clerk_model');
        $query1 = $this->Clerk_model->update_case($case_num);
        $query2 = $this->Clerk_model->update_case_info($case_num);
        if (($query1 == true) && ($query2 == true)) {
            $this->session->set_flashdata('success', 'Case Record updated Successfully');
            redirect('judge_controller/view_cases', 'refresh');
        } else {
            $this->session->set_flashdata('error', 'Case Record Not Added');
            redirect('clerk_controller/edit_case_view', 'refresh');
        }

		
	}
}
?>