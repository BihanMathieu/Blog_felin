<?php

require "./managers/ContactUsManager.php";

class ContactUsController{
    
    private ContactUsManager $cm;
    
    //fonction pour charger le template de contact
    public function contactUs():void{
        $page = "contactUs";
        require "./templates/layout.phtml";
    }
    
    
    //function pour envoyer un mail
    function sendMail(){
        
        
        //je verifie que le formulaire a bien été envoyé
        if(isset($_POST['submit'])){
            //je vérifie que les champs ne sont pas vide
            if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['message'])){
                
                //j'instancie mes variables
                $name = htmlspecialchars($_POST['name']);
                $email = htmlspecialchars($_POST['email']);
                $message = htmlspecialchars($_POST['message']);
                
                $send = mail('mathieu.bihan35@gmail.com','suject',$message,'Reply-to:'.$email);
                
                if($send){
                    echo"votre message a ete envoye";
                }
                
                //je crée le contact en bdd
                $cm = new ContactUsManager();
                $createContact= $cm->createContact($name,$email,$message);
                
            }else{
                echo "veuillez remplir tout les champs";
            }
            
        }
    }
    
}
?>