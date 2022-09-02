<?php

require "./managers/ArticleManager.php";
require "MediaController.php";

class ArticleController{

    //fonction pour charger la page d'acceuil avec tout les articles
    public function article(string $pages):void{
        $page = $pages;
        $am = new ArticleManager();
        $getArticle = $am->getArticleMedia();
        require "./templates/layout.phtml";
    }
    
    public function articleById($id):void{
        $page = 'article';
        $am = new ArticleManager();
        $mm = new MessageManager();
        $getArticle = $am->getArticleById($id);
        $getMessage = $mm->getMessageByArticleId($id);
        require "./templates/layout.phtml";
    }
    
    
    // fonction pour charger le template de formulaire pour un nouvelle article
    public function newArticle():void{
        $page = "newArticle";
        require "./templates/layout.phtml";
    }
    
    function createArticle(){
        if(isset($_POST['submit'])){
            if(!empty($_POST['category'] && $_POST['title'] && $_POST['description'] && $_POST['content']) && !empty($_FILES['image'])){
                
                $mc =new MediaController();
                $media = $mc->upload($_FILES['image']);
        
                $originalName = $media->getOriginalName();
                $fileName = $media->getFileName();
                $fileType = $media->getFileType();
                $url = $media->getUrl();
                 
                $am = new ArticleManager();
                $article = $am->createMedia($originalName, $fileName, $fileType, $url);
                
                $category = $_POST['category'];
                $title = htmlspecialchars($_POST['title']);
                $description = htmlspecialchars($_POST['description']);
                $content = htmlspecialchars($_POST['content']);
                $username = $_SESSION['name'];
                $date = date('Y-m-d H:i:s');
                $mediaId = $article;


                $ac = new ArticleManager();
                $a = $ac -> createArticle($category,$title,$description,$content,$username,$date,$mediaId);
            }else{
                echo "veuillez remplir remplir tout les champs";
            }
        }
    
    }
}
?>
