<?php
class Admin_model extends CI_Model
{
	function get_all_users(){

		$query=$this->db->get('users');
        return $query;

	}

    function get_user_role($role_id){

        $this->db->where('role_id', $role_id);
        $query = $this->db->get('role');

        return $query;
    }

	function get_roles(){

		$query=$this->db->get('role');
        return $query;

	}

    function get_courts(){

        $query=$this->db->get('court_names');
        return $query;

    }

	function add_judical_officers(){

		$new_judicial_officer = array(
            'judicial_officer_name' => $this->input->post('judicial_officer_name'),
            );
        $query = $this->db->insert('judicial_officers', $new_judicial_officer);
        return $query;

	}

	function add_legalrep(){

		$new_legalrep = array(
            'legalrep_name' => $this->input->post('legalrep_name'),
            );
        $query = $this->db->insert('legalrep', $new_legalrep);
        return $query;

	}

	public function get_user_with_id($user_id){

		$this->db->where('user_id', $user_id);
        $this->db->from('users');
        $this->db->join('role','users.role_id=role.role_id');
        $query=$this->db->get();

        return $query;

	}

	public function edit_user($user_id){

		$data = array(
            'surname' => $this->input->post('surname'),
            'other_names' => $this->input->post('other_names'),
            'phone_number' => $this->input->post('phone_number'),
            'email' => $this->input->post('email'),
            'court_id' => $this->input->post('court_name'),
            'role_id' => $this->input->post('role_name'),
        );
        $this->db->where('user_id', $user_id);
        $query = $this->db->update('users', $data);
        return $query;

	}

	public function delete_user($user_id){

	}

}
?>