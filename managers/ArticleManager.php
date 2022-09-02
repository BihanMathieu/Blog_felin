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
    
    function getArticleMedia(){
            $getArticle = $this->db->prepare('SELECT articles.*,media.* FROM articles INNER JOIN media ON articles.media_id = media.id ORDER BY articles.id DESC');
            $getArticle->execute();
            $result = $getArticle->fetchall(PDO::FETCH_NAMED);
            // var_dump($result);
            // die();
            $articles = [];

            foreach ($result as $item){
            $media = new Media($item['id'][1], $item['original_name'], $item['file_name'], $item['file_type'], $item['url']);
            $article = new Article($item['id'][0], $item['category'], $item['title'], $item['description'], $item['content'], $item['username'], $item['date'], $item['media_id'], $media);
            $articles[] = $article;
            } 
            
            return $articles;
           
    }
    
    function getArticleById(int $id){
            $getArticle = $this->db->prepare('SELECT articles.*,media.* FROM articles INNER JOIN media WHERE articles.id ='.$id.' AND media_id = media.id');
            $getArticle->execute();
            $result = $getArticle->fetch(PDO::FETCH_ASSOC);
            
            $media = new Media($result['id'], $result['original_name'], $result['file_name'], $result['file_type'], $result['url']);
            $article = new Article($result['id'], $result['category'], $result['title'], $result['description'], $result['content'], $result['username'], $result['date'], $result['media_id'], $media);
            
            
            return $article;
    }
    
}
    
?>