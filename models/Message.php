<?php

class Message
{
    private int $id;
    private string $username;
    private string $content;
    private string $date;
    private int $articleId;
    
    function __construct(int $id, string $username, string $content, string $date, int $articleId)
    {
        $this->id = $id;
        $this->username = $username;
        $this->content = $content;
        $this->date = $date;
        $this->articleId = $articleId;
    }
    
    public function getId() : int
    {
        return $this->id;
    }
    
    public function setId(int $id) : void
    {
        $this->id = $id;
    }
    
    public function getUsername() : string
    {
        return $this->username;
    }
    
    public function setUsername(string $username) : self
    {
        $this->username = $username;
        return $this;
    }
    
    public function getContent() : string
    {
        return $this->content;
    }
    
    public function setContent(string $content) : self
    {
        $this->content = $content;
        return $this;
    }
    
    public function getDate() : datetime
    {
        return $this->date;
    }
    
    public function setDate(string $date) : self
    {
        $this->date = $date;
        return $this;
    }
    
    public function getArticleId() : int
    {
        return $this->articleId;
    }
    
    public function setArticleId(int $articleId) : self
    {
        $this->articleId = $articleId;
        return $this;
    }
} 
?>