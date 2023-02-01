<?php

require "./models/Message.php";

class MessageManager{
    
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
    
    //fonction rentrer un message dans la bdd
    function createMessage($username, $message, $date, $articleId){
            
        $insertMessage = $this->db->prepare('INSERT INTO messages(username, message, date, article_id) VALUES(:username, :message, :date, :article_id)');
        $parameters = [
            'username' => $username, 
            'message' => $message, 
            'date' => $date, 
            'article_id' => $articleId
            ];
        $insertMessage->execute($parameters);
    }
    
    
    //fonction pour récuperer les messages en bdd
    function getMessageByArticleId(int $id){
        $getMessage = $this->db->prepare('SELECT id,username,message,date,article_id FROM messages WHERE article_id = :id');
        $parameters = [
            'id' => $id
            ];
        $getMessage->execute($parameters);
        $result = $getMessage->fetchall(PDO::FETCH_ASSOC);
             
            //j'instancie une variable avec un tableau vide
            $messages = [];
            
            //pour chaque valeur du tableau je crée un message et je l'hydrate avec les informations
            foreach ($result as $item){
                
                $message = new Message ($item['id'], $item['username'], $item['message'], $item['date'], $item['article_id']);
                $messages[] = $message;
            }
            
            //je retourne un tableau de tous les messages
            return $messages;
        
    }
    
    function deleteMessageByArticleId(int $id){
        $getMessage = $this->db->prepare('DELETE FROM messages WHERE article_id ='.$id);
        $getMessage->execute();
    }
    
}

?>