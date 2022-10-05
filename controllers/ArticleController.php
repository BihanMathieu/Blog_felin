<?php

require "./managers/ArticleManager.php";
require "MediaController.php";

class ArticleController{
    
    //fonction pour charger la page d'acceuil + pages catégories avec tout les articles
    public function article(string $pages):void{
        $page = $pages;
        $am = new ArticleManager();
        $getArticle = $am->getArticleMedia();
        require "./templates/layout.phtml";
    }
    
    //fonction pour charger la page article avec les messages associés
    public function articleById($id):void{
        try{
        $page = 'article';
        $am = new ArticleManager();
        $mm = new MessageManager();
        $getArticle = $am->getArticleById($id);
        $getMessage = $mm->getMessageByArticleId($id);
        require "./templates/layout.phtml";
        }catch(Exception $e){
            $page = '404';
            require "./templates/layout.phtml";
        }
    }
    
    //fonction pour afficher la page de modification
    public function update(int $id):void{
        try{
            $page = "update";
            $am = new ArticleManager();
            $getArticle = $am->getArticleById($id);
            require "./templates/layout.phtml";
        }catch(Exception $e){
            $page = '404';
            require "./templates/layout.phtml";
        }
    }
    
    
    // fonction pour charger le template de formulaire pour un nouvelle article
    public function newArticle():void{
        $page = "newArticle";
        require "./templates/layout.phtml";
    }
    
    //fonction pour créer un article 
    function createArticle(){
        if(isset($_POST['submit'])){
            if(!empty($_POST['category'] && $_POST['content']) && !empty($_FILES['image']) && !empty($_POST['descriptionImg'])){
                
                $mc =new MediaController();
                $media = $mc->upload($_FILES['image']);
        
                $originalName = $media->getOriginalName();
                $fileName = $media->getFileName();
                $fileType = $media->getFileType();
                $url = $media->getUrl();
                 
                $am = new ArticleManager();
                $createMedia = $am->createMedia($originalName, $fileName, $fileType, $url);
                
                
                date_default_timezone_set('Europe/Paris');
                $category = $_POST['category'];
                $content = strip_tags($_POST['content'],"<h1><h2><h3><p>");
                $username = $_SESSION['name'];
                $date = date('Y-m-d H:i:s');
                $alt = htmlspecialchars($_POST['descriptionImg']);
                $media = $createMedia;


                $am = new ArticleManager();
                $createArticle = $am -> createArticle($category,$content,$username,$date,$alt,$media);
                
                header('Location: index.php?route=homescreen');
                
            }else{
                echo "veuillez remplir tout les champs";
            }
        }
    
    }
    
    // fonction pour modifier un article
    function updateArticle(){
        if(isset($_POST['submit'])){
            if(!empty($_POST['id'] && $_POST['category'] && $_POST['content']) && !empty($_POST['descriptionImg'])){
                
                var_dump($_FILES['image']['error']);
                $am = new ArticleManager();
                $urlIdMedia = $am->getMediaUrlIdByArticleId($_POST['id']);
                
                
                $mc =new MediaController();
                $media = $mc->upload($_FILES['image']);
                var_dump($_FILES['image']);
                $deleteOldMedia = $mc->deleteFile($urlIdMedia['url']);
                
                $originalName = $media->getOriginalName();
                $fileName = $media->getFileName();
                $fileType = $media->getFileType();
                $url = $media->getUrl();
                 
                $am = new ArticleManager();
                $updateMedia = $am->updateMedia($urlIdMedia['id'], $originalName, $fileName, $fileType, $url);
                
                $category = $_POST['category'];
                $content = strip_tags($_POST['content'],"<h1><h2><h3><p>");
                $alt = htmlspecialchars($_POST['descriptionImg']);


                $am = new ArticleManager();
                $updateArticle = $am -> updateArticle($_POST['id'], $category, $content, $alt);
                
                header('Location: index.php?route=article&id='.$_POST['id']);
            }else{
                
                echo "veuillez remplir tout les champs";
                
            }
        }
    
    }
    
    //fonction pour suprimer les articles par id
    public function deleteArticleById(int $id):void{
        $page = "homescreen";
        
        $am = new ArticleManager();
        $urlIdMedia = $am->getMediaUrlIdByArticleId($id);
        
        $mc =new MediaController();
        $deleteOldMedia = $mc->deleteFile($urlIdMedia['url']);
        
        $am = new ArticleManager();
        $getArticle = $am->deleteArticleById($id);
        $getArticle = $am->getArticleMedia();
        require "./templates/layout.phtml";
    }
}
?>
