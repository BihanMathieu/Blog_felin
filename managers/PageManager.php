<?php

require "./models/Page.php";

class PageManager
{
    private PDO $db;
    
    function __construct()
    {
        $this->db = new PDO (
            'mysql:host=127.0.0.1;port=3306;dbname=Blog_felin',
            'root',
            '',
            array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES latin1')
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