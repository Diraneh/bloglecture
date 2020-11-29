<?php $title = 'Home'; ?>

<?php ob_start(); ?>

<section>
<div class="container-fluid">
 
    <div class="row">
      <div class="col-md-8 blog-main">
        <h3 class="pb-3 mb-4 font-italic border-bottom">
          From the Firehose
        </h3>

        <div class="blog-post">
          <h2 class="blog-post-title">Sample blog post</h2>
          <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>

          <p>This blog post shows a few different types of content that's supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>
          <hr>
          <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
          <blockquote>
            <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
          </blockquote>
          <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          
        </div><!-- /.blog-post -->

      

      </div><!-- /.blog-main -->

      <aside class="col-md-4 blog-sidebar">
        <div class="p-3 mb-3 bg-light rounded">
          <h4 class="font-italic">About</h4>
          <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
        </div>

        <div class="p-3">
          <h4 class="font-italic">Archives</h4>
          <ol class="list-unstyled mb-0">
            <li><a href="#">March 2014</a></li>
            <li><a href="#">February 2014</a></li>
            <li><a href="#">January 2014</a></li>
            <li><a href="#">December 2013</a></li>
            <li><a href="#">November 2013</a></li>
            <li><a href="#">October 2013</a></li>
            <li><a href="#">September 2013</a></li>
            <li><a href="#">August 2013</a></li>
            <li><a href="#">July 2013</a></li>
            <li><a href="#">June 2013</a></li>
            <li><a href="#">May 2013</a></li>
            <li><a href="#">April 2013</a></li>
          </ol>
        </div>

       
      </aside><!-- /.blog-sidebar -->

    </div><!-- /.row -->

  </main><!-- /.container -->

<section >
     <div class="container-fluid">
        <div class="row mb-2">
      <div class="col-md-3">
       
        
          <?php foreach($blo as $Rr){ ?>
            <h3 class="mb-0">
            <?=$Rr['Nom'] ?>
            <?=$Rr['prenom'] ?>
            </h3>
            <p ><?=$Rr['date_publication'] ?> by <a href="#"><?=$Rr['Edition_publication'] ?></a></p>
            <div class="mb-1 text-muted">
            <?=$Rr['description_text1'] ?>
           </div>
            
           
           
         
          
          <img class="card-img-right flex-auto d-none d-md-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" style="width: 200px; height: 250px;" src="<?=$Rr['img'] ?>" data-holder-rendered="true">
          <a href="#">Continue reading</a>
      </div>
      <div class="col-md-3">
        
            
            <?php } ?>
           
    </div>
  </div>
 
     </div>
   </section>
   

  <?php $content = ob_get_clean(); ?>

<?php require('templates/template.php'); ?>