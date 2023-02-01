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
            $mc = new MessageController();
            $mc->createMessage();
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
        //on regarde que les données sont envoyées
        if(isset($_POST['submit'])){
            //on regarde si un ou plusieurs champs sont vide
            if(!empty($_POST['category'] && $_POST['content'] && $_POST['descriptionImg'] && $_FILES['image'])){
                if(strlen($_POST['content']) < 10000 && strlen($_POST['descriptionImg']) < 255 ){
                    //on appelle la fonction upload pour vérifier l'image et créé un nouveau média
                    $mc =new MediaController();
                    $media = $mc->upload($_FILES['image'],null);
                    
                    //on crée ensuite nos variables avec le retour de la methode upload
                    $originalName = $media->getOriginalName();
                    $fileName = $media->getFileName();
                    $fileType = $media->getFileType();
                    $url = $media->getUrl();
                     
                    //on envoie le tous en bdd
                    $am = new ArticleManager();
                    $createMedia = $am->createMedia($originalName, $fileName, $fileType, $url);
                    
                    //on crée nos variables pour l'article
                    date_default_timezone_set('Europe/Paris');
                    $category = $_POST['category'];
                    $content = strip_tags($_POST['content'],"<h1><h2><h3><p>\"");
                    $username = $_SESSION['name'];
                    $date = date('Y-m-d H:i:s');
                    $alt = htmlspecialchars($_POST['descriptionImg']);
                    $media = $createMedia;
    
                    //on envoie le tous en bdd
                    $am = new ArticleManager();
                    $createArticle = $am -> createArticle($category,$content,$username,$date,$alt,$media);
                    
                    //on renvoie a la page d'accueil
                    header('Location: index.php?route=homescreen');
                }else{
                    $_SESSION['error'] = '<p class="error">Un des champs contient trop de caractères<p>';
                    header('Location: index.php?route=newArticle');
                }
            }else{
                //si un ou plusieurs champs sont vides alors on renvoie a la meme page avec une erreur
                $_SESSION['error'] = '<p class="error">Veuillez remplir tout les champs<p>';
                header('Location: index.php?route=newArticle');
            }
        }
    
    }
    
    // fonction pour modifier un article
    function updateArticle(){
        
        //on regarde que les données sont envoyées
        if(isset($_POST['submit'])){
            //on regarde si un ou plusieurs champs sont vide
            if(!empty($_POST['id'] && $_POST['category'] && $_POST['content'] && $_FILES['image'] && $_POST['descriptionImg'])){
                if(strlen($_POST['content']) < 10000 && strlen($_POST['descriptionImg']) < 255 ){
                    //on récupère l'url et l'id d'un media avec l'article id
                    $am = new ArticleManager();
                    $urlIdMedia = $am->getMediaUrlIdByArticleId($_POST['id']);
                    
                    //on vérifie le fichier envoyer et on suprime l'ancien
                    $mc =new MediaController();
                    $media = $mc->upload($_FILES['image'], $_POST['id']);
                    $deleteOldMedia = $mc->deleteFile($urlIdMedia['url']);
                    
                    //on crée ensuite nos variables avec le retour de la methode upload
                    $originalName = $media->getOriginalName();
                    $fileName = $media->getFileName();
                    $fileType = $media->getFileType();
                    $url = $media->getUrl();
                     
                    //on met a jour le media
                    $am = new ArticleManager();
                    $updateMedia = $am->updateMedia($urlIdMedia['id'], $originalName, $fileName, $fileType, $url);
                    
                    //on crée nos variables pour l'article
                    $category = $_POST['category'];
                    $content = strip_tags($_POST['content'],"<h1><h2><h3><p>");
                    $alt = htmlspecialchars($_POST['descriptionImg']);
    
                    //on met a jour l'article
                    $am = new ArticleManager();
                    $updateArticle = $am -> updateArticle($_POST['id'], $category, $content, $alt);
                    
                    //on renvoie vers l'article
                    header('Location: index.php?route=article&id='.$_POST['id']);
                }else{
                    $_SESSION['error'] = '<p class="error">Un des champs contient trop de caractères<p>';
                    header('Location: index.php?route=newArticle');
                }
            }else{
                //si un ou plusieurs champs sont vides alors on renvoie a la meme page avec une erreur
                $_SESSION['error'] = '<p class="error">Veuillez remplir tout les champs<p>';
                header('Location: index.php?route=update&id='.$_POST['id']);
            }
        }
    }

    
    //fonction pour suprimer les articles par id
    public function deleteArticleById(int $id):void{
        $page = "homescreen";
        
        //on récupère l'url et l'id d'un media avec l'article id
        $am = new ArticleManager();
        $urlIdMedia = $am->getMediaUrlIdByArticleId($id);

        //on supprime le media 
        $mc =new MediaController();
        $deleteOldMedia = $mc->deleteFile($urlIdMedia['url']);
        
        //on suprime l'article puis on recupère les article restant et on affiche la page d'accueil
        $am = new ArticleManager();
        $getArticle = $am->deleteArticleById($id);
        $getArticle = $am->getArticleMedia();
        require "./templates/layout.phtml";
    }
}?>