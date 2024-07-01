<?php
    include '../initialize.php';
    session_start();
    $visualData = new Visual();
    $decode = $visualData->getVisualDataAbove("A");
    $output = array();
    $data = array();
    
    foreach($decode as $row)
    {
        $sub_array = array();
        $resultData = '<td><button class="toggleButton" data-value="0" style="margin-right:5px;">➖</button>'.$row["visual_name"].'</td>';
        $sub_array[] = $resultData;
        $data[] = $sub_array;
    }
    $output = array(
        "draw"              =>   intval($_POST["draw"]),
        "recordsTotal"      =>   0,
        "recordsFiltered"   =>   0,
        "data"              =>   $data
    );
    echo json_encode($output);
