<?php

/**
 * File Uploader class used for media upload
 * @author Mari Doucet & Mathieu Bihan
*/

require "./models/Media.php";

class MediaController
{
    private string $uploadFile = "./asset/uploads/";
    private array $allowedFileTypes = ["image/png", "image/PNG", "image/jpg", "image/JPG", "image/jpeg", "image/JPEG"];
    private int $maxFileSize = 2000000 ; // 2 Mo
    
    private function generateFileName() : string
    {
        $randomString = bin2hex(random_bytes(10)); // random string, 20 characters a-z 0-9
        
        return $randomString;
    }
    
    private function checkFileSize(int $fileSize)
    {
        if($fileSize > $this->maxFileSize){
            exit ("Le fichier est trop volumineux");
        }
    }
    
    private function checkFileType(string $fileType)
    {
        
        if(!in_array($fileType, $this->allowedFileTypes)){
            exit ("Le type fichier n'est pas authorisé");
        }
    }
    
    private function checkFileExist(int $fileError)
    {
        
        if($fileError === 4){
            exit ("Lveuiller ajouter un fichier");
        }
    }
    
    public function upload(array $file) : Media
    {
        $id = null;
        $this->checkFileExist($file['error']);
        $this->checkFileSize($file['size']);
        $this->checkFileType($file['type']); 
        $originalName = $file["name"];
        $fileName = $this->generateFileName();
        $fileType = pathinfo($originalName)["extension"];
        $url = $this->uploadFile . $fileName . ".". $fileType;
        
        move_uploaded_file($file["tmp_name"], $url);
        
        return new Media($id, $originalName, $fileName, $fileType, $url);
    }
    
    public function deleteFile(string $url)
    {
        
        unlink($url);
        
    }
}     

?>