<?php

require "./managers/MessageManager.php";

class MessageController{

    //fonction pour créer un message
    function createMessage(){
        if(isset($_POST['submit'])){
            if(!empty($_POST['name']) && !empty($_POST['id']) && !empty($_POST['message'])){
                if(strlen($_POST['message']) < 255){
                    date_default_timezone_set('Europe/Paris');
                    $username = $_POST['name'];
                    $message = htmlspecialchars($_POST['message']);
                    $date = date('Y-m-d H:i:s');
                    $articleId = $_POST['id'];
                    
                    $mm = new MessageManager();
                    $createMessage = $mm->createMessage($username, $message, $date, $articleId);
                    
                    header('Location: index.php?route=article&id='.$_POST['id']);
                }else{
                    echo"<p>Votre message ne doit pas dépasser 255 caractères<p>";
                }
                
            }else{
                echo"<p>Veuillez remplir tout les champs<p>";
            }    
        }
    }
}
?>