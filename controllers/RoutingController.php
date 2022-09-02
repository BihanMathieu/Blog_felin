<?php

require "./managers/PageManager.php";
require "ContactUsController.php";
require "AuthentificationController.php";
require "ArticleController.php";
require "MessageController.php";

class RoutingController
{
    private PageManager $pm;
    
    function __construct()
    {
        $this->pm = new PageManager();
    }
    
    private function sortRoute(string $route, array $get, array $post = null) : void
    {
        if($route === "homescreen")
        {
            $ac = new ArticleController();
            $ac->article("homescreen");
            
        }
        else if($route === "contactUs")
        {
            $cc = new ContactUsController();
            $cc->contactUs();
            $cc->sendMail();
        }
        else if($route === "signIn")
        {
            $ac = new AuthentificationController();
            $ac->signIn();
            $ac->verificationConnexion();
        }
        else if($route === "registration")
        {
            $ac = new AuthentificationController();
            $ac->registration();
            $ac->createUser();
        }
        else if($route === "disconnect")
        {
            $ac = new AuthentificationController();
            $ac->disconnect();
        }
        else if($route === "newArticle")
        {
            $ac = new ArticleController();
            $ac->newArticle();
            $ac->createArticle();
        }
        else if($route === "species")
        {
            $ac = new ArticleController();
            $ac->article("species");
        }
        else if($route === "news")
        {
            $ac = new ArticleController();
            $ac->article("news");
        }
        else if($route === "article")
        {
            $ac = new ArticleController();
            $ac->articleById($_GET['id']);
        }
        else if($route === "message"){
            $mc = new MessageController();
            $mc->createMessage();
        }
        else
        {
            echo "<h1>404 page not found</h1>";
        }
    }
    
    public function matchRoute(string $route = "homescreen", array $get, array $post = null) : void
    {
        $existingRoutes = $this->pm->getAllPagesRoutes();
        
        $found = false;
        
        foreach($existingRoutes as $item)
        {
            if($route === $item["route"])
            {
                $found = true;
                $this->sortRoute($route, $get, $post);
                break;
            }
        }
        
        if(!$found)
        {
            $this->sortRoute("404", $get);   
        }
    }
}