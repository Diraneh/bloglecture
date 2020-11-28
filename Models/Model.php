<?php
require_once('public/connect.php');


class blog extends Databases{
    
    /**
     * recettes
     * SELECT ALL blog METHOD
     * @return void
     */
    public function blog(){
        $blo = $this->connect()->prepare('SELECT * FROM recette');
        $blo->execute();
        $blo = $blo->fetchALL(PDO::FETCH_ASSOC);
        return $blo;
     }




















}