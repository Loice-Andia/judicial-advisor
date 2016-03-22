<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->helper('form');
        $this->load->helper('url');
        $this->load->view('includes/login_top');
		$this->load->view('login');
		$this->load->view('includes/footer');
	}
}
?>