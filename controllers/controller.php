<?php
require('Models/Model.php');


function homeView(){
 $blo=new blog();
 $blo=$blo->lireblog();

   require("views/lire.php");
}


function homearticle(){
  $blo=new blog();
  $blo=$blo->article();
 
    require("views/article_one.php");
 }
