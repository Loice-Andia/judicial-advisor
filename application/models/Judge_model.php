<?php
class Judge_model extends CI_Model
{
	function get_case_num_from_details($case_details)
	{
		$this->db->where('case_details',$case_details);
		$query = $this->db->get('case_information');
        if ($query->num_rows() == 1) 
          {
            
            return $query->row()->case_num;
          }
          else
          {
           
            return -1;
        }

	}
  public function get_indicators(){
    $query=$this->db->get('indicators');
        return $query;
  }
   public function get_all_judgements(){
    $query=$this->db->get('judgements');
        return $query->num_rows();
  }


  public function average_time(){
    $this->db->where('user_id', $user_id);
        $this->db->from('users');
        $this->db->join('role','users.role_id=role.role_id');
        $query=$this->db->get();

        return $query;
  }

	public function get_case_judgement($case_details){

		$case_num = $this->get_case_num_from_details($case_details);
		
		$this->db->where('case_num', $case_num);
        $query = $this->db->get('judgements');
        if ($query->num_rows() == 1) 
          {
            
            return $query->row()->judgement;
          }
          else
          {
           
            return -1;
        }

	}

	public function get_judgement($case_num){

		$this->db->where('case_num',$case_num);
		$query = $this->db->get('judgements');
		if ($query->num_rows() == 1) 
          {
            
            return $query->row()->judgement;
          }
          else
          {
           
            return -1;
        }
	}

  public function get_best_judgement($case_best_match){
    

    $this->db->where('case_num',$case_best_match);
    $query = $this->db->get('judgements');
    if ($query->num_rows() == 1) 
          {
            
            return $query->row()->judgement;
          }
          else
          {
           
            return -1;
        }
  }




	public function get_best_case_match($case_details){


        $result=$this->db->get('case_information');

        $similarity=-2;
        $case_num=-1;

        //echo($question);
        if($result->num_rows()>0)
        {
            $result= $result->result();
            $temp_similarity=0;
            foreach($result as $res)
            {
                $res_case_details=$res->case_details;
                $res_case_num=$res->case_num;

                $res_case_details=pre_process_case_details($res_case_details);
                $temp_similarity=get_similarity($case_details,$res_case_details);
                similar_text($case_details,$res_case_details,$percentage);
                //$temp_similarity=$temp_similarity+($percentage/100);
                if(($temp_similarity>$similarity)&&($temp_similarity<1.0))
                {
                    $similarity=$temp_similarity;
                    
                    $case_num=$res_case_num;
                }
                
                
            }

            if($similarity>=SEMANTIC_SIMILARITY_SCORE)
            {
                //return question_id
                //todo add question to new questions with suggested answers
            echo($similarity);
            echo($case_num);
             $best_judgement=$this->get_judgement($case_num);
            

                return $best_judgement;
            }
            else
            {
               
                return -1;
            }

        }
    

	}
	
	public function update_judgement($case_num){
    $data = array(
      'judgement' => $this->input->post('judgement') ,
      );
     $this->db->where('case_num', $case_num);

    $query = $this->db->update('judgements', $data);
        return $query;

	}

}
?>