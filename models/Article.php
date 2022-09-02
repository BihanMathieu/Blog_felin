<?php

class Article{
    
    private int $id;
    private string $category;
    private string $title;
    private string $description;
    private string $content;
    private string $username;
    private string $date;
    private int $mediaId;
    private ?Media $media;
    
     function __construct(int $id, string $category, string $title, string $description, string $content, string $username, string $date, int $mediaId, ?Media $media )
    {
        $this->id =$id;
        $this->category = $category;
        $this->title = $title;
        $this->description = $description;
        $this->content = $content;
        $this->userName = $username;
        $this->date = $date;
        $this->mediaId = $mediaId;
        $this->media = $media;
    }
    
    public function getId() : int
    {
        return $this->id;
    }
    
    public function setId(int $id) : void
    {
        $this->id = $id;
    }
    
    public function getCategory() : string
    {
        return $this->category;
    }
    
    public function setCategory(string $category) : string
    {
        $this->category = $category;
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
    
    public function getMedia() : Media
    {
        return $this->media;
    }
}

?>