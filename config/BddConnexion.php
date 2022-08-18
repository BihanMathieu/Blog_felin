<?php


function db_connect(){
    try{
        $db = new PDO (
        'mysql:host=db.3wa.io;port=3306;dbname=mathieubihan_Blog_felin',
        'mathieubihan',
        '363dce9d2ee9b1de8aa743164b30ff7f'
        );
    }catch(Exception $e){
        die('Erreur : '.$e->getMessage());
    }
}

?>