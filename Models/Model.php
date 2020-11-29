<?php
require_once('public/connect.php');


class blog extends Databases{
    
    /**
     * recettes
     * SELECT ALL blog METHOD
     * @return void
     */
    public function lireblog(){
        $blo = $this->connect()->prepare('SELECT
        Nom,
        prenom,
        Telp,
        description_text1,
        description_text2,
        description_text3,
        date_publication,
        Edition_publication,
        
        img
        
       
    FROM
        auteur
    INNER JOIN description ON description.Id_auteur = auteur.Id_auteur
    INNER join textblog on textblog.Id_textblog=auteur.Id_auteur ORDER BY RAND() ');
        $blo->execute();
        $blo = $blo->fetchALL(PDO::FETCH_ASSOC);
        return $blo;
     }

     public function article(){
        $blo = $this->connect()->prepare('SELECT
        Nom,
        prenom,
       
        description_text1,
        
        date_publication,
        Edition_publication,
        
        img
        
       
    FROM
        auteur
    INNER JOIN description ON description.Id_auteur = auteur.Id_auteur
    INNER join textblog on textblog.Id_textblog=auteur.Id_auteur ORDER BY RAND() ');
        $blo->execute();
        $blo = $blo->fetchALL(PDO::FETCH_ASSOC);
        return $blo;
     }



















}