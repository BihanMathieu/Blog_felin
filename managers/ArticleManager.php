<?php

require "./models/Article.php";

class ArticleManager{
    
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO (
        'mysql:host=db.3wa.io;port=3306;dbname=mathieubihan_Blog_felin',
        'mathieubihan',
        '363dce9d2ee9b1de8aa743164b30ff7f'
        );
    }
    
    //fonction rentrer un article dans la bdd
    function createArticle($category, $title, $description, $content, $username, $date, $mediaId){
            
            $insertArticle = $this->db->prepare('INSERT INTO articles(category,title,description,content,username,date,media_id) VALUES(?,?,?,?,?,?,?)');
            $insertArticle->execute(array($category, $title, $description, $content, $username, $date, $mediaId));
    }
    
    //fonction pour rentrer un media dans la bdd
    function createMedia($originalName, $fileName, $fileType, $url){
            
            $insertMedia = $this->db->prepare('INSERT INTO media(original_name,file_name,file_type,url) VALUES(?,?,?,?)');
            $insertMedia->execute(array($originalName, $fileName, $fileType, $url));
            return $this->db->lastInsertId();
    }
    
    function retrieveArticleMadia(){
        
    }
}
    
?>