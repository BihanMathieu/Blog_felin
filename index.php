<?php
    require "./controllers/RoutingController.php";
    
    $routing = new RoutingController();
    
    if(isset($_GET["route"]))
    {
        $routing->matchRoute($_GET["route"], $_GET, $_POST);
    }
    else
    {
        $routing->matchRoute("homescreen", $_GET);   
    }
    
?>