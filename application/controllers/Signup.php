<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class Signup extends CI_Controller
{

	public function index(){
		  $this->load->model('Admin_model');
      $data['role'] = $this->Admin_model->get_roles();
      $data['court_name'] = $this->Admin_model->get_courts();
      
      $this->load->view('includes/login_top');
      $this->load->view('signup',$data);
      $this->load->view('includes/footer');
      
	}

	function add_user(){

		$this->load->model('Signup_model');
		$query = $this->Signup_model->create_user();
        if ($query == true) {
            $this->session->set_flashdata('success', 'User Added Successfully');
            redirect(base_url(), 'refresh');
        } else if ($query == false) {
            $this->session->set_flashdata('error', 'User Record Not Added');
            redirect('Signup/index', 'refresh');
        }


	}
	
}