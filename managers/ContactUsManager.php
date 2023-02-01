<?php
class ContactUSManager{
    
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
    
    
    //function pour rentrer un contacte en bdd
    function createContact($name,$email,$message){
            
        $insertContact = $this->db->prepare('INSERT INTO contacts(name,email,message) VALUES(:name,:email,:message)');
        $parameters = [
            'name' => $name,
            'email' => $email,
            'message' => $message
            ];
        $insertContact->execute($parameters);
    } 
    
}
?>