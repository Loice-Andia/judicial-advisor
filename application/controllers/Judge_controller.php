<?php

/**
* 
*/
class Judge_controller extends CI_Controller
{
	function judge_dashboard(){


        $this->load->view('includes/header');
        $this->load->view('includes/side_menu');
        $this->load->view('includes/footer');
    }

	public function get_all_cases(){

		$this->load->model('Clerk_model');
		$data['cases'] = $this->Clerk_model->get_case_details();
        $data['main_content'] = '';
        $this->load->view('', $data);

	}

	function analyse_case(){

		
	}
}
?>