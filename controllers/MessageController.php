<?php

require "./managers/MessageManager.php";

class MessageController{

    //fonction pour créer un message
    function createMessage(){
        //on regarde que les données sont envoyées
        if(isset($_POST['submit'])){
            //on regarde si un ou plusieurs champs sont vide
            if(!empty($_POST['name']) && !empty($_POST['id']) && !empty($_POST['message'])){
                //on regarde si le messge ne dépasse pas 255 chars
                if(strlen($_POST['message']) < 255){
                    //on crée nos variables pour le message
                    date_default_timezone_set('Europe/Paris');
                    $username = $_POST['name'];
                    $message = htmlspecialchars($_POST['message']);
                    $date = date('Y-m-d H:i:s');
                    $articleId = $_POST['id'];
                    //on créé le méssage
                    $mm = new MessageManager();
                    $createMessage = $mm->createMessage($username, $message, $date, $articleId);
                    //on renvoie vers le meme article
                    header('Location: index.php?route=article&id='.$_POST['id']);
                }else{
                    //si le champ dépasse 255 chars alors on renvoie a la meme page avec une erreur
                    $_SESSION['error'] = '<p class="error">VVotre message ne doit pas dépasser 255 caractères<p>';
                    header('Location: index.php?route=article&id='.$_POST['id']);
                }
                
            }else{
                //si le champ est vide alors on renvoie a la meme page avec une erreur
                $_SESSION['error'] = '<p class="error">Veuillez remplir tout les champs<p>';
                header('Location: index.php?route=article&id='.$_POST['id']);
            }   
            
        }
    }
}
?>