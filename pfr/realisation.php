<?php
  include_once('header.php');

?>

  <!-- =====realisation===== -->
  <section class="py-5">
    <div class="container  ">
      <div class="row text-center" style="width:100%;">


        <?php
        
        $requette = 'select * from realisation';
        if( isset( $_GET['realisation'] ) ){
          $requette .= ' where id = '. intval( $_GET['realisation']);
        }
        
        $realisations = $connection->select($requette);
        
        if( empty($realisations) ){
            echo '<div class="alert alert-danger" role="alert" style="margin:auto;">
                Element introuvable !<br>Assurez vous que votre lien est correcte.
            </div>';
        }
        else{
        for($i = 0 ; $i<count($realisations); $i++){
          $realisation  = $realisations[$i];
        ?>
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="card mb-3" style="padding:5px;">
                <h5 class="card-title"><?php echo $realisation['titre'] ?></h5>
              <img src="image/realisation/<?php echo $realisation['media'] ?>" class="card-img-top" style="width:100%;margin:auto" >
              <div class="card-body" style="background-color:aliceblue;">
                <p class="card-text"><?php echo $realisation['description'] ?></p>
              </div>
            </div>
          </div>
          <?php
        }
          ?>

      </div>
    </div>

    <?php 
        }
        include_once('footer.php') 
    ?>