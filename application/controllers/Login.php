<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Login extends CI_Controller
{

    public function __construct()
     {
          parent::__construct();
          $this->load->library('session');
          $this->load->helper('form');
          $this->load->helper('url');
          $this->load->helper('html');
          $this->load->database();
          $this->load->library('form_validation');
          $this->load->model('Login_model');
     }

	function __encrip_password($password){
        return md5($password);
    }

    function index(){
     
    }

	function hello(){
    $this->form_validation->set_rules('username', 'Username', 'trim|required');
          $this->form_validation->set_rules('password', 'Password', 'trim|required');
          if($this->form_validation->run() == FALSE)
          {
               //Field validation failed.  User redirected to login page
               $this->load->view('login');
          }
          else
          {
            $username = $this->input->post('username');
            $password = $this->__encrip_password($this->input->post('password'));
            $result = $this->Login_model->get_user($username, $password);
            if(!empty($result))
            {
              $user_id = $result[0]['user_id'];
              $other_names = $result[0]['other_names'];
              $court_id = $result[0]['court_id'];
              $role_id = $result[0]['role_id'];

              $data = array(
                'user_id' => $user_id,
                'username' => $username,
                'is_logged_in' => true,
                'role' => $role_id,
                'court_id' => $court_id,
                'other_names'=>$other_names
            );
            $this->session->set_userdata($data);
            if ($role_id == 1) {
              $this->load->view('judge_dashboard');
            } else {
              if ($role_id == 2) {
                $this->load->view('clerk_dashboard');
              } else {
                $this->load->view('admin_dashboard');
              }
              
            }
            
            }
          else
          {
               redirect(base_url());
          }
     }
          
     }

     function validate(){

         
     }
     

	function logout(){

        $this->session->sess_destroy();
        redirect(base_url());
		
	}
}
?>