<?php

/**
* 
*/
class Judge_controller extends CI_Controller
{
	public function index()
    {
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
        $this->load->view('judge_dashboard');
        $this->load->view('includes/footer');
    }
    

	public function view_cases(){

		$court_id = $this->session->userdata('court_id');
        $role_id = $this->session->userdata('role_id');

        $this->load->helper('form');
        $this->load->helper('url');

        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');

        $data['court_name'] = $this->Clerk_model->get_court_per_id($court_id);
        $data['role'] = $this->Admin_model->get_user_role($role_id);
        $data['cases'] = $this->Clerk_model->get_all_case_details();

        $this->load->view('includes/header',$data);

        $this->load->view('includes/side_menu',$data);
        $this->load->view('view_cases',$data);
        $this->load->view('includes/footer');
		
	}
    
    public function similarity()
    {
        $plaintiffs = $_REQUEST['plaintiffs'];
        $defendants = $_REQUEST['defendants'];
        $case_num = $_REQUEST['case_num'];

        $this->load->model('Clerk_model');
        $this->load->model('Admin_model');
        $this->load->model('Judge_model');

        $case_details = $this->Clerk_model->get_case_info($case_num);


        if(empty($case_details) || (strlen($case_details)<30))
        {
            //question is empty or length of characters less than 15
            $return_array=array(
                "status"=>"error",
                "payload"=>"details is too short or empty"
            );
        }
        else
        {

            //pre process question
            $case_details=pre_process_case_details($case_details);
            $case_match = $this->Judge_model->get_case_judgement($case_details);

            //get exact match
            if($case_match !==-1)
            {
                //exact match found!
                //get answer of exact match
                $judgement=$case_match;
                if($judgement!=-1)
                {
                    //answer present
                    $return_array=array(
                        "status"=>"ok",
                        "payload"=>"exact match was found.",
                        "answer"=>$judgement
                    );
                }
                else
                {
                    //answer not present, thus get next best match
                    $case_best_match=$this->Judge_model->get_best_case_match($case_details);
                    if($case_best_match!=-1)
                    {
                        //suitable best match found
                        //get answer of best match
                        $judgement=$this->Judge_model->get_judgement($case_num);
                        if($judgement!=-1)
                        {
                            //answer present
                            $return_array=array(
                                "status"=>"ok",
                                "payload"=>"best match was found.",
                                "answer"=>$judgement
                            );
                        }
                        else
                        {
                            //answer not present, thus give error // todo mark question as un answered
                            $return_array=array(
                                "status"=>"error",
                                "payload"=>"best match was found but had no answer."

                            );
                        }

                    }
                    else
                    {
                        //suitable best match not found
                        $return_array=array(
                            "status"=>"error",
                            "payload"=>"best match was found not found.111"

                        );
                    }
                }
            }
            else
            {
                //get best match
                //echo($question);
                $case_best_match=$this->Judge_model->get_best_case_match($case_details);
                if($case_best_match!=-1)
                {
                    //suitable best match found
                    //get answer of best match
                    
                    $judgement=$this->Judge_model->get_judgement($case_num);;
                    if($judgement!==-1)
                    {
                        //answer present
                        $return_array=array(
                            "status"=>"ok",
                            "payload"=>"best match was found.",
                            "answer"=>$judgement
                        );
                    }
                    else
                    {
                        //answer not present, thus give error // todo mark question as un answered
                        $return_array=array(
                            "status"=>"error",
                            "payload"=>"best match was found but had no answer."

                        );
                    }

                }
                else
                {
                    //suitable best match not found //todo mark question as new un answered question
                    $return_array=array(
                        "status"=>"error",
                        "payload"=>"best match was found not found.222"

                    );
                }


            }


        }

        echo(json_encode($return_array));


    }

}
?>