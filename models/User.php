<?php

class User
{
    private int $id;
    private string $username;
    private string $password;
    private string $admin;
    
    function __construct(?int $id, string $username, string $password, string $admin)
    {
        
        $this->id = $id;
        $this->username = $username;
        $this->password = $password;
        $this->admin = $admin;
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
    
    public function setUsername(string $username) : void
    {
        $this->username = $username;
    }
    
    public function getPassword() : string
    {
        return $this->password;
    }
    
    public function setPassword(string $password) : void
    {
        $this->password = $password;
    }
    
    public function getAdmin() : string
    {
        return $this->admin;
    }
    
    public function setAdmin(string $admin) : void
    {
        $this->admin = $admin;
    }
}

?>