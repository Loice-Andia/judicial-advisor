<?php

/**
* 
*/
class Judge_controller extends CI_Controller
{
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