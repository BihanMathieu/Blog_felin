<?php

require "./models/Message.php";

class MessageManager{
    
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO (
        'mysql:host=db.3wa.io;port=3306;dbname=mathieubihan_Blog_felin',
        'mathieubihan',
        '363dce9d2ee9b1de8aa743164b30ff7f'
        );
    }
    
    //fonction rentrer un message dans la bdd
    function createMessage($username, $message, $date, $articleId){
            
        $insertMessage = $this->db->prepare('INSERT INTO messages(username, message, date, article_id) VALUES(?,?,?,?)');
        $insertMessage->execute(array($username, $message, $date, $articleId));
    }
    
    
    //fonction pour récuperer les messages en bdd
    function getMessageByArticleId(int $id){
        $getMessage = $this->db->prepare('SELECT * FROM messages WHERE article_id ='.$id);
        $getMessage->execute();
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
    
}

?>