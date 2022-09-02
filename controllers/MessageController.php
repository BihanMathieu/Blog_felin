<?php

require "./managers/MessageManager.php";

class MessageController{
    
    
    public function message(string $pages):void{
        $page = $pages;
        $mm = new MessageManager();
        $getMessage = $mm->getMessage();
        require "./templates/layout.phtml";
    }
    
    function createMessage(){
        if(isset($_POST['submit'])){
            if(!empty($_POST['name']) && !empty($_POST['id']) && !empty($_POST['message'])){
                $username = $_POST['name'];
                $message = htmlspecialchars($_POST['message']);
                $date = date('Y-m-d H:i:s');
                $articleId = $_POST['id'];
                
                $mm = new MessageManager();
                $createMessage = $mm->createMessage($username, $message, $date, $articleId);
                
                header('Location: index.php?route=article&id='.$_POST['id']);
                
                
            }else{
                echo "Veuillez remplir tout les champs";
            }    
        }
    }
    
    function getMessage(){
        
        $mm = new MessageManager();
        $message = $mm->getMessage();
        
        var_dump($message);
        
    }
}

?>