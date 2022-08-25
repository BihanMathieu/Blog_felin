<?php

class Article{
    
    private int $id;
    private string $category;
    private string $title;
    private string $descritpion;
    private string $content;
    private string $username;
    private datetime $date;
    
    public function getId() : int
    {
        return $this->id;
    }
    
    public function setId(int $id) : void
    {
        $this->id = $id;
    }
    
    public function getTitle() : string
    {
        return $this->title;
    }
    
    public function setTitle(string $title) : void
    {
        $this->title = $title;
    }
    
    public function getDescription() : string
    {
        return $this->description;
    }
    
    public function setDescription(string $description) : void
    {
        $this->description = $description;
    }
    
    public function getContent() : string
    {
        return $this->content;
    }
    
    public function setContent(string $content) : void
    {
        $this->content = $content;
    }
    
    public function getUsername() : string
    {
        return $this->username;
    }
    
    public function setUsername(string $username) : void
    {
        $this->username = $username;
    }
    
    public function getDate() : string
    {
        return $this->date;
    }
    
    public function setDate(datetime $date) : void
    {
        $this->date = $date;
    }
}

?>