<?php 

require "./config/BddConnexion.php";


class ContactUSManager{
    
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO (
        'mysql:host=db.3wa.io;port=3306;dbname=mathieubihan_Blog_felin',
        'mathieubihan',
        '363dce9d2ee9b1de8aa743164b30ff7f'
        );
    }

    function createContact($name,$email,$message){
            
            $insertContact = $this->db->prepare('INSERT INTO contacts(name,email,message) VALUES(?,?,?)');
            $insertContact->execute(array($name,$email,$message));
    } 
    
}
?>