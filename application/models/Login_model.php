<?php

/**
* 
*/
class Login_model extends CI_Model
{
	function __construct()
     {
          // Call the Model constructor
          parent::__construct();
     }

     //get the username & password from tbl_usrs
     function get_user($email, $password)
     {
          
          $this -> db -> where('email', $email);
          $this -> db -> where('password', $password);

          $this -> db -> limit(1);
          
          $query = $this->db->get('users');
          
          if ($query->num_rows() == 1) 
          {
            
            return $query->result_array();
          }
          else
          {
           
            return null;
        }
     }
	
}
?>