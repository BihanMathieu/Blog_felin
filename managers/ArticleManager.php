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
    function createArticle($category, $content, $username, $date, $alt, $mediaId){
            
            $insertArticle = $this->db->prepare('INSERT INTO articles(category,content,username,date,alt_image,media_id) VALUES(:category,:content,:username,:date,:alt_image,:media_id)');
            $parameters = [
                'category' => $category,
                'content' => $content,
                'username' => $username,
                'date' => $date,
                'alt_image' => $alt,
                'media_id' => $mediaId
                ];
            $insertArticle->execute($parameters);
    }
    
    //fonction pour rentrer un media dans la bdd
    function createMedia($originalName, $fileName, $fileType, $url){
            
            $insertMedia = $this->db->prepare('INSERT INTO media(original_name,file_name,file_type,url) VALUES(:original_name,:file_name,:file_type,:url)');
            $parameters = [
                'original_name' => $originalName,
                'file_name' => $fileName,
                'file_type' => $fileType,
                'url' => $url
                ];
            $insertMedia->execute($parameters);
            return $this->db->lastInsertId();
    }
    
    //fonction pour recupérer tout les articles aves leurs media
    function getArticleMedia(){
            $getArticle = $this->db->prepare('SELECT articles.*,media.* FROM articles INNER JOIN media ON articles.media_id = media.id ORDER BY articles.id DESC');
            $getArticle->execute();
            $result = $getArticle->fetchall(PDO::FETCH_NAMED);
            $articles = [];

            foreach ($result as $item){
            $media = new Media($item['id'][1], $item['original_name'], $item['file_name'], $item['file_type'], $item['url']);
            $article = new Article($item['id'][0], $item['category'], $item['content'], $item['username'], $item['date'], $item['media_id'],$item['alt_image'], $media);
            $articles[] = $article;
            } 
            
            return $articles;
           
    }
    
    //fonction pour recupérer un article par son id
    function getArticleById(int $id){
        
            $getArticle = $this->db->prepare('SELECT articles.*,media.* FROM articles INNER JOIN media WHERE articles.id = :id AND media_id = media.id');
            $parameters = [
                'id' => $id
                ];
            $getArticle->execute($parameters);
            $result = $getArticle->fetch(PDO::FETCH_NAMED);
            
            if (!$result){
                throw new Exception("impossible");
            }
            
            $media = new Media($result['id'][1], $result['original_name'], $result['file_name'], $result['file_type'], $result['url']);
            $article = new Article($result['id'][0], $result['category'], $result['content'], $result['username'], $result['date'],$result['media_id'], $result['alt_image'], $media);
            
            
            return $article;
    }
    
    //suprimer un article par son id
    function deleteArticleById(int $id){
        
        $deleteArticle = $this->db->prepare('DELETE articles.*,media.* FROM articles INNER JOIN media WHERE articles.id = :id AND media_id = media.id');
        $parameters = [
                'id' => $id
                ];
        $deleteArticle->execute($parameters);
    }
    
    //fonction pour recupérer id et url du media par id de l'article
    function getMediaUrlIdByArticleId(int $id){
        $getMediaUrlId = $this->db->prepare('SELECT media.url, media.id FROM articles INNER JOIN media WHERE articles.id = :id AND media_id = media.id');
        $parameters = [
                'id' => $id
                ];
        $getMediaUrlId->execute($parameters);
        $result = $getMediaUrlId->fetch(PDO::FETCH_ASSOC);
        $urlIdMedia = $result;
        return $urlIdMedia;
        
    }
    
    //function pour modifier l'article
    function updateArticle(int $id, $category, $content, $alt) {
        $updateArticle = $this->db->prepare('UPDATE articles SET category = :category ,content = :content, alt_image = :alt_image WHERE id = :id ');
        $parameters = [
                'category' => $category,
                'content' => $content,
                'alt_image' => $alt,
                'id' => $id
            ];
        $updateArticle->execute($parameters);
    }
    
    
    //fonction pour modifier le media
    function updateMedia(int $id, $originalName, $fileName, $fileType, $url) {
        $updateMedia = $this->db->prepare('UPDATE media SET original_name = :originalName ,file_name = :fileName ,file_type = :fileType ,url = :url WHERE id = :id');
        $parameters = [
                'originalName' => $originalName,
                'fileName' => $fileName,
                'fileType' => $fileType,
                'url' => $url,
                'id' => $id
            ];
        $updateMedia->execute($parameters);
    }
}
    
?>