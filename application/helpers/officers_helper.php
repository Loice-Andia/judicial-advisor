<?php
function get_jud_name_from_id($judicial_officer_id)
{
    $CI = &get_instance ();
    $CI->db->where("judicial_officer_id",$judicial_officer_id);
    $result=$CI->db->get("judicial_officers");
    if($result->num_rows()>0)
    {
        $result=$result->result()[0]->judicial_officer_name;

        return $result;
    }
    else
    {
     return null;
    }

}
function get_leg_name_from_id($legalrep_id)
{
    $CI = &get_instance ();
    $CI->db->where("legalrep_id",$legalrep_id);
    $result=$CI->db->get("legalrep");
    if($result->num_rows()>0)
    {
        $result=$result->result()[0]->legalrep_name;

        return $result;
    }
    else
    {
     return null;
    }

}
function get_court_name_from_id($court_id)
{
    $CI = &get_instance ();
    $CI->db->where("court_id",$court_id);
    $result=$CI->db->get("court_names");
    if($result->num_rows()>0)
    {
        $result=$result->result()[0]->court_name;

        return $result;
    }
    else
    {
     return null;
    }

}
function get_role_name_from_id($role_id)
{
    $CI = &get_instance ();
    $CI->db->where("role_id",$role_id);
    $result=$CI->db->get("role");
    if($result->num_rows()>0)
    {
        $result=$result->result()[0]->role_name;

        return $result;
    }
    else
    {
     return null;
    }

}
?>