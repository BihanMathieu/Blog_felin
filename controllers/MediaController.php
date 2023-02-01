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
    
    public function upload( array $file, ?int $updateId) : Media
    {
        $id = null;
        if($this->checkFileExist($file, $updateId)){
            $originalName = $file["name"];
            $fileName = $this->generateFileName();
            $fileType = pathinfo($originalName)["extension"];
            $url = $this->uploadFile . $fileName . ".". $fileType;
            
            move_uploaded_file($file["tmp_name"], $url);
            
            return new Media($id, $originalName, $fileName, $fileType, $url);
        }
    }
    
    private function checkFileExist(array $file, ?int $updateId) : bool
    {
        //on regarde si le fichier est vide
        if($file["name"] == null || $file["name"] == ""){
            //si le fichier est vide on redirige vers la page adéquat avec une erreur
            if($_GET['route'] === "newArticle"){
                $_SESSION['error'] = '<p class="error">Veuillez ajouter un fichier<p>';
                header('Location:index.php?route=newArticle');
            }else{
                $_SESSION['error'] = '<p class="error">Veuillez ajouter un fichier<p>';
                header('Location:index.php?route=update&id='.$updateId);
            }
            //on retourne faux quoi qu'il arrive
            return false;
        }else{
            //sinon on verifie la taille
            return $this->checkFileSize($file, $updateId);
        }
    }
    
    private function checkFileSize(array $file,?int $updateId) :bool
    {
        // On regarde si le fichier a une taille superieure a 1 car le serveur met 0 la taille de tous fichier superieur a 2mo
        if($file['size'] < 1 || $file['size'] > $this->maxFileSize){
            //si le fichier est trop grand on redirige vers la page adéquat avec une erreur
            if($_GET['route'] === "newArticle"){
                $_SESSION['error'] = '<p class="error">Le fichier est trop volumineux<p>';
                header('Location:index.php?route=newArticle');
            }else{
                $_SESSION['error'] = '<p class="error">Le fichier est trop volumineux<p>';
                header('Location:index.php?route=update&id='.$updateId);
            }
            //on retourne faux quoi qu'il arrive
            return false;
        }else{
            //sinon on verifie le type de fichier
            return $this->checkFileType($file['type'], $updateId);
        }
    }
    
    private function checkFileType(string $fileType, ?int $updateId) :bool
    {
        //on vérifie si le type de fichier est autorisé
        if(!in_array($fileType, $this->allowedFileTypes)){
            if($_GET['route'] === "newArticle"){
                //si le fichier n'est pas d'un type autorisé on redirige vers la page adéquat avec une erreur
                $_SESSION['error'] = "<p class='error'>Ce type de fichier n'est pas autorisé<p>";
                header('Location:index.php?route=newArticle');
            }else{
                $_SESSION['error'] = "<p class='error'>Ce type de fichier n'est pas autorisé<p>";
                header('Location:index.php?route=update&id='.$updateId);
            }
            //on retourne faux quoi qu'il arrive
            return false;
        }else{
            //sinon toutes les condition sont remplie on renvoie vrai
            return true;
        }
    }
    
    public function deleteFile(string $url)
    {
        unlink($url);
    }
}     

?>