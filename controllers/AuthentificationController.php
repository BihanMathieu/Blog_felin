<?php

require "./managers/AuthentificationManager.php";

class AuthentificationController{
    
    public $erreur = "";
    
    // fonction pour charger le template de connexion
    public function signIn():void{
        $page = "signIn";
        // $ac = new
        // $this->verificationConnexion();
        // $erreur = $this->erreur;
        require "./templates/layout.phtml";
    }
    
    //fonction pour charger le template d'inscription
    public function registration():void{
        $page = "registration";
        require "./templates/layout.phtml";
    }
    
    //function pour cree un utilisteur
    function createUser(){
        
        //Je verifie que le formulaire est envoyé
        if(isset($_POST['submit'])){
            
            //je verifie que tous les champs de formulaire son remplies
            if(!empty($_POST['username']) && !empty($_POST['password'])){
                
                //j'instancie mes variables
                $username = htmlspecialchars($_POST['username']);
                $password = password_hash(htmlspecialchars($_POST['password']),PASSWORD_BCRYPT);
                $admin = 'no';
                
                //je verifie que le nom et le mot de passe ne depasse pas 15 caracteres
                if(strlen($username) > 15 || strlen($_POST['password']) > 15){
                    echo "votre nom d'utilisateur ou mots de passe est trop long";
                    
                //je recupere la liste des utilisateurs
                }else{
                    $ac = new AuthentificationManager();
                    $users = $ac->verificationConnexion();
                    
                    //j'instencie une variable a false    
                    $sameUser = false;
                
                    //je fais défile la liste des utilisateurs
                    foreach ($users as $user){
                    //je verifie que le nom rentre est n'est pas deja present dans la bdd 
                        if($user->getUsername() === $username){
                            $sameUser = true;
                            echo "ce nom d'utilisateur est deja pris";
                        }
                    }
                    
                    //si le nom n'est pas deja present je rentre l'utilisateur en bdd et lance une session
                    if($sameUser === false){
                        $ac = new AuthentificationManager();
                        $c = $ac->createUser($username,$password,$admin);
                        $_SESSION['isLogin'] = true;
                        $_SESSION['name'] = $username;
                        $_SESSION['admin']= $user->getAdmin();
                    
                        //je rebascule l'utilateur a la page d'acceuil
                        header('Location: index.php?route=homescreen');
                    }
                }
            }else{
                echo"veuillez remplir tout les champs";
            }
        }   
    }
    
   
    // //fonction pour la connexion
    // function verificationConnexion(){
        
    //     //je verifie que le formulaire est envoye
    //     if(!isset($_POST['submit'])){
    //         return null;
    //     }
            
    //     //je verifie que les champs ne sont pas vide
    //     if(empty($_POST['username']) && empty($_POST['password'])){
    //         $this->erreur = "<p>veuillez remplir tout les champs<p>";
    //         return null;
    //     }
            
    //     //j'instancie mes variables
    //     $username = htmlspecialchars($_POST['username']);
    //     $password = htmlspecialchars($_POST['password']);
        
    //     //je recupere les utilisateurs
    //     $am = new AuthentificationManager();
    //     $users = $am->verificationConnexion();
        
    //     //je fais defiler les utisateurs
    //     foreach ($users as $user){
            
    //         //je regarde si un utilisateur a le même nom que celui rentré
    //         if($user->getUsername() === $username ){
                
    //             //je regarde si le mot de passe correspond bien et je lance une session
    //             if(password_verify($password, $user->getPassword())){
    //                 $_SESSION['isLogin'] = true;
    //                 $_SESSION['name'] = $username;
    //                 $_SESSION['admin']= $user->getAdmin();
                    
    //                 //je renvoie l'utilisateur a la page d'acceuil
    //                 header('Location: index.php?route=homescreen');
    //                  return null;
    //             }else{
    //                 echo "votre mots de passe ou nom d'utilisateur n'est pas valide";
    //                 $_SESSION['isLogin'] = false;
    //             }
    //         }
    //     }
    // }
    
     //fonction pour la connexion
    function verificationConnexion(){

        //je verifie que le formulaire est envoye
        if(isset($_POST['submit'])){
            
            //je verifie que les champs ne sont pas vide
            if(!empty($_POST['username']) && !empty($_POST['password'])){
                
                //j'instancie mes variables
                $username = htmlspecialchars($_POST['username']);
                $password = htmlspecialchars($_POST['password']);
                
                //je recupere les utilisateurs
                $ac = new AuthentificationManager();
                $users = $ac->verificationConnexion();
                
                //je fais defiler les utisateurs
                foreach ($users as $user){
                    
                    //je regarde si un utilisateur a le même nom que celui rentré
                    if($user->getUsername() === $username ){
                        
                        //je regarde si le mot de passe correspond bien et je lance une session
                        if(password_verify($password, $user->getPassword())){
                            $_SESSION['isLogin'] = true;
                            $_SESSION['name'] = $username;
                            $_SESSION['admin']= $user->getAdmin();
                            
                            //je renvoie l'utilisateur a la page d'acceuil
                            header('Location: index.php?route=homescreen');
                            
                        }else{
                            echo "votre mots de passe ou nom d'utilisateur n'est pas valide";
                            $_SESSION['isLogin'] = false;
                        }
                    }
                }
            }else{
                $_SESSION['error'] = "Les champs sont vide";
                header('Location: index.php?route=signIn');
                // $error = "Les champs sont vide";
                // header('Location: index.php?route=signIn&error='.$error);
            }
        }
        // $this->signIn();
    }
    
    //function de deconnexion
    function disconnect(){
        
        //je lance la session
        session_start();
        
        //je la suprime
        session_destroy();
        
        //je renvoie a l'acceuil
        header('Location: index.php?route=homescreen');
    }
}
?>