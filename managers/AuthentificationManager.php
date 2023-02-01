<?php

require "./models/User.php";

class AuthentificationManager{
    
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO (
            'mysql:host=127.0.0.1;port=3306;dbname=Blog_felin',
            'root',
            '',
            array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES latin1')
            );
    }
    
    //fonction rentrer un utilisateur dans la bdd
    function createUser($username,$password,$admin){
            
            $insertUser = $this->db->prepare('INSERT INTO users(username,password,admin) VALUES(:username,:password,:admin)');
            $parameters = [
                    'username' => $username,
                    'password' => $password,
                    'admin' => $admin
                ];
            $insertUser->execute($parameters);
    } 
    
    
    //function pour récuperer les utilisateurs
    function verificationConnexion(){
            
            $verifConnexion = $this->db->prepare('SELECT id,username,password,admin FROM users');
            $verifConnexion->execute();
            $result = $verifConnexion->fetchall(PDO::FETCH_ASSOC);
            
            //j'instancie une variable avec un tableau vide
            $users = [];
            
            //pour chaque valeur du tableau je crée un utilisateur et je l'hydrate avec les informations
            foreach ($result as $item){
                $user = new User ($item['id'], $item['username'], $item['password'], $item['admin']);
                $users[] = $user;
            }
            
            //je retourne un tableau de tous les utilisateurs
            return $users;
    }
    
}

?>