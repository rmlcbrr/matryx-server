<?php
    include '../initialize.php';
    $visualData = new Visual();

    if($_SERVER['REQUEST_METHOD'] == "POST") {

        $VisualDescIm = "";
        $VisualResIm = "";
    if(isset($_POST["results"])){
        $PostData = trim(json_encode($_POST["results"]),'{}');
        $convertToArray = array($PostData);
        $VisualDesc = array();
        $VisualRes =array();
         foreach($convertToArray as $val){
             $slice = explode(',', $val);
             foreach($slice as $VR){
                
                 $removeColon = explode(':', $VR);
                 array_push($VisualDesc, $removeColon[0]);
                 array_push($VisualRes, $removeColon[1]);
             }
        }
        
        $VisualDescIm = str_replace('"', '',implode(',', $VisualDesc));
        $VisualResIm = str_replace('"', '',implode(',', $VisualRes));
    }
        

        echo json_encode($visualData->updateVisual((int)$_POST["id"],(int)$_POST["speedometer"],$VisualDescIm,$VisualResIm));
    }

    