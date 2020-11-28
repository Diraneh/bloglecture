<?php
require('Models/Model.php');


function homeView(){
 $blo=new blog();
 $blo=$blo->blog();

   require("views/lire.php");
}
