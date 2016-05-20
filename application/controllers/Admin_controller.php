<?php

/**
* 
*/
class Admin_controller extends CI_Controller
{
	function admin_dashboard(){

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
        $this->load->view('admin_dashboard');
        $this->load->view('includes/footer');
    }

	function get_user_with_id(){

		$user_id = $_REQUEST['user_id'];
		$this->load->model('Admin_model');

        $data['user_detail'] = $this->Admin_model->get_user_with_id($user_id);
        $data['main_content'] = '';
        $this->load->view('', $data);
		
	}
    function edit_user(){
        $user_id = $_REQUEST['user_id'];

        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);
        $data['user_info'] = $this->Admin_model->get_user_with_id($user_id);
        $data['roles'] = $this->Admin_model->get_roles();
        $data['court_names'] = $this->Clerk_model->get_courts();

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('edit_user',$data);
        $this->load->view('includes/footer');
    }
	
	function update_user(){

		$user_id = $_REQUEST['user_id'];
        $this->load->model('Admin_model');
        $query = $this->Admin_model->edit_user($user_id);

        if ($query == true) {
            $this->session->set_flashdata('success', 'Users Record Successfully Updated');
            redirect('admin_controller/view_users', 'refresh');
        } else if ($query == false) {
            $this->session->set_flashdata('error', 'Users Record Not Updated');
            redirect('admin_controller/edit_user?user_id=$user_id', 'refresh');
        }
	}

	function view_users(){
        $court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);
        $data['users'] = $this->Admin_model->get_all_users();

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('view_users',$data);
        $this->load->view('includes/footer');

	}

	function delete_user(){
		
	}
}
?>