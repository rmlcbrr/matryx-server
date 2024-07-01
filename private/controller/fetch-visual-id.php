<?php
    include '../initialize.php';
    $visualData = new Visual();
    

    if($_SERVER['REQUEST_METHOD'] == "POST") {

        echo json_encode($visualData->fetchId($_POST["id"]));
    }