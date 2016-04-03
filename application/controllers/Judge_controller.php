<?php

/**
* 
*/
class Judge_controller extends CI_Controller
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
        $this->load->view('judge_dashboard');
        $this->load->view('includes/footer');
    }
    

	public function view_cases(){

		$court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');

        $this->load->helper('form');
        $this->load->helper('url');

        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');

        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);
        $data['cases'] = $this->Clerk_model->get_case_details();

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('view_cases',$data);
        $this->load->view('includes/footer');
		
	}

	function analyse_case(){

		
	}
}
?>