<?php
    include '../initialize.php';
    session_start();
    $visualData = new Visual();
    $decode = $visualData->getVisualData($_SESSION['userdata']['position']);
    $output = array();
    $data = array();
    
    foreach($decode as $row)
    {
        $sub_array = array();
        
            $Action = '<td>
                        <button type="button" class="btn btn-success start-visual"  data-id="'.$row["id"].'">START TESTING</button>
                      </td>';
           
            $sub_array[] = $row["upload_mvisr"];
            $sub_array[] = $row["upload_plate"];
            $sub_array[] = $row["upload_mvfile"];
            $sub_array[] = $Action;


        $data[] = $sub_array;
    }
    

    $output = array(
        "draw"              =>   intval($_POST["draw"]),
        "recordsTotal"      =>   0,
        "recordsFiltered"   =>   0,
        "data"              =>   $data
    );
    echo json_encode($output);
