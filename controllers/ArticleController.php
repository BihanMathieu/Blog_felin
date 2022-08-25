<?php

require "./managers/ArticleManager.php";
require "MediaController.php";

class ArticleController{

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
                 
                $ac = new ArticleManager();
                $article = $ac->createMedia($originalName, $fileName, $fileType, $url);
                
                $category = $_POST['category'];
                $title = htmlspecialchars($_POST['title']);
                $description = htmlspecialchars($_POST['description']);
                $content = htmlspecialchars($_POST['content']);
                $username = $_SESSION['name'];
                $date = date('Y-m-d H:i:s');
                $mediaId = $article;


                $ac = new ArticleManager();
                $a = $ac -> createArticle($category,$title,$description,$content,$username,$date,$mediaId);
            }
        }
    
    }
}
?>
