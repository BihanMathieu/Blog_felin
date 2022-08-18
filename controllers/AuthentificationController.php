<?php

require "./managers/AuthentificationManager.php";

class AuthentificationController{


    public function signIn():void{
        $page = "signIn";
        require "./templates/layout.phtml";
    }
    public function registration():void{
        $page = "registration";
        require "./templates/layout.phtml";
    }
    
    
    function createUser(){
        if(isset($_POST['submit'])){
            if(!empty($_POST['username']) && !empty($_POST['password'])){
                
                $username = htmlspecialchars($_POST['username']);
                $password = password_hash(htmlspecialchars($_POST['password']),PASSWORD_BCRYPT);
                
                if(strlen($username) > 15 || strlen($_POST['password']) > 15){
                    echo "votre nom d'utilisateur ou mots de passe est trop long";
                }else{
                    $ac = new AuthentificationManager();
                    $users = $ac->verificationConnexion();
                    
                $sameUser = false;
                
                foreach ($users as $user){
                    if($user->getUsername() === $username){
                        $sameUser = true;
                        echo "ce nom d'utilisateur est deja pris";
                    }
                }
                if($sameUser === false){
                    $ac = new AuthentificationManager();
                    $c = $ac->createUser($username,$password);
                    $_SESSION['isLogin'] = true;
                    $_SESSION['name'] = $username;
                    $_SESSION['admin']= $user->getAdmin();
                    
                    header('Location: index.php?route=homescreen');
                }
            }
            }else{
                echo "veuillez remplir tout les champs";
            }
        }   
    }
    
    function verificationConnexion(){
        
        if(isset($_POST['submit'])){
            if(!empty($_POST['username']) && !empty($_POST['password'])){
                $username = htmlspecialchars($_POST['username']);
                $password = htmlspecialchars($_POST['password']);
                
                $ac = new AuthentificationManager();
                $users = $ac->verificationConnexion();
                
                foreach ($users as $user){
                    
                    if($user->getUsername() === $username ){
                        if(password_verify($password, $user->getPassword())){
                            echo "vous etes connecte";
                            $_SESSION['isLogin'] = true;
                            $_SESSION['name'] = $username;
                            $_SESSION['admin']= $user->getAdmin();
                            
                            header('Location: index.php?route=homescreen');
                            
                        }else{
                            echo "votre mots de passe ou nom d'utilisateur n'est pas valide";
                            $_SESSION['isLogin'] = false;
                        }
                    }
                }
            }else{
                echo"veuillez remplir tout les champs";
            }
        }
    }
    
    function disconnect(){
        
        session_start();
        
        session_destroy();
        
        header('Location: index.php?route=homescreen');
    }
}
?>