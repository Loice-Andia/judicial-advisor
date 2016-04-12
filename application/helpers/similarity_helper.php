<?php


function pre_process_case_details($case_details)
{
    //convert to lower case
    //remove unnecessary white space

    //check if length is valid
    $case_details=strtolower($case_details);
    $case_details=trim($case_details,"\t\n\r\0\x0B");

    return $case_details;

}


function get_similarity($string1,$string2)
{
    $similarity=shell_exec('java -cp /var/www/html/judicial-advisor/application/semantics/src/ USAGE "'.$string1.'" "'.$string2.'"');

    //echo($string1);
    //echo($string2);
    //echo($similarity);
    return $similarity;
}
?>