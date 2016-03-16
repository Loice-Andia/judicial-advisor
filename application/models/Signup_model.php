<?php
class Signup_model extends CI_Model
{
	public function create_user(){

		$data = array(
			'username' => $this->input->post('username') ,
			'other_names' => $this->input->post('other_names'),
			'password' => md5($this->input->post('password')),
			'phone_number' => $this->input->post('phone_number'),
			'email' => $this->input->post('email'),
			'court_id' => $this->input->post('court_name'),
			'role_id' => $this->input->post('role'),  
			);

		$query = $this->db->insert('users', $data);
        return $query;
	}

}
?>