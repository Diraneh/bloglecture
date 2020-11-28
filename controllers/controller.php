<?php
require('Models/Model.php');


function homeView(){
 $blo=new blog();
 $blo=$blo->lireblog();

   require("views/lire.php");
}
