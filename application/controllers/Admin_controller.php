<?php

/**
* 
*/
class Admin_controller extends CI_Controller
{
	function get_user_with_id(){

		$user_id = $_REQUEST['user_id'];
		$this->load->model('Admin_model');

        $data['user_detail'] = $this->Admin_model->get_user_with_id($user_id);
        $data['main_content'] = '';
        $this->load->view('', $data);
		
	}
	
	function update_user(){

		$user_id = $_REQUEST['user_id'];
        $this->load->model('Admin_model');
        $query = $this->Admin_model->edit_user($user_id);

        if ($query == true) {
            $this->session->set_flashdata('success', 'Users Record Successfully Updated');
            redirect('', 'refresh');
        } else if ($query == false) {
            $this->session->set_flashdata('error', 'Users Record Not Updated');
            redirect('', 'refresh');
        }
	}

	function view_all_users(){

		$this->load->model('Admin_model');
        $data['users'] = $this->Admin_model->get_all_users();
        $data['main_content'] = '';
        $this->load->view('', $data);

	}

	function delete_user(){
		
	}
}
?>