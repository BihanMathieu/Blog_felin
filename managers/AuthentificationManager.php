<?php

require "./models/User.php";

class AuthentificationManager{
    
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO (
        'mysql:host=db.3wa.io;port=3306;dbname=mathieubihan_Blog_felin',
        'mathieubihan',
        '363dce9d2ee9b1de8aa743164b30ff7f'
        );
    }
    
    //fonction rentrer un utilisateur dans la bdd
    function createUser($username,$password){
            
            $insertUser = $this->db->prepare('INSERT INTO users(username,password,admin) VALUES(?,?,"no")');
            $insertUser->execute(array($username,$password));
    } 
    
    
    //function pour récuperer les utilisateurs
    function verificationConnexion(){
            
            $verifConnexion = $this->db->prepare('SELECT * FROM users');
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