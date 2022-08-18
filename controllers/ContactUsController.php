<?php

require "./managers/ContactUsManager.php";

class ContactUsController{
    
    private ContactUsManager $cm;
    
    public function contactUs():void{
        $page = "contactUs";
        require "./templates/layout.phtml";
    }

    function sendMail(){
    
        if(isset($_POST['submit'])){
            if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['message'])){
                
                $name = htmlspecialchars($_POST['name']);
                $email = htmlspecialchars($_POST['email']);
                $message = htmlspecialchars($_POST['message']);
                
                $send = mail('mathieu.bihan35@gmail.com','suject',$message,'Reply-to:'.$email);
                
                if($send){
                    echo"votre message a ete envoye";
                }
                
                $cm = new ContactUsManager();
                $c = $cm->createContact($name,$email,$message);
                
            }else{
                echo "veuillez remplir tout les champs";
            }
            
        }
    }
    
}
?>