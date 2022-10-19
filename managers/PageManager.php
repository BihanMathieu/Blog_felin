<?php

require "./models/Page.php";

class PageManager
{
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO(
            'mysql:host=db.3wa.io;port=3306;dbname=mathieubihan_Blog_felin',
            'mathieubihan',
            '363dce9d2ee9b1de8aa743164b30ff7f'
            );
            
    }
    
    //fonction pour récupérer les routes en bdd
    public function getAllPagesRoutes() : array
    {
        $query = $this->db->prepare('SELECT route FROM pages ');
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        
        return $result;
    }
    
    
    //fonction pour récupérer les pages égale a $route
    public function getPageByRoute(string $route) : Page
    {
        $query = $this->db->prepare('SELECT * FROM pages WHERE pages.route = :route');
        $parameters = [
            'route' => $route
        ];
        $query->execute($parameters);
        $result = $query->fetch(PDO::FETCH_ASSOC);
        
        return new Page($result['id'], $result['route'], $result['title']);
    }
}