<?php
include_once('header.php');

if (!isset($_GET['service'])) {
  header('location:index.php');
}

?>

<!-- =====service===== -->
<section class="py-5">
  <div class="container  ">
    <div class="row text-center" style="width:100%;">


      <?php
      
      $services = $connection->select('select * from service where id = ' . intval($_GET['service']));

      if (empty($services)) {
        echo '<div class="alert alert-danger" role="alert" style="margin:auto;">
                Element introuvable !<br>Assurez vous que votre lien est correcte.
            </div>';
      } else {
        $service  = $services[0];
      ?>
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="card mb-3" style="padding:5px;">
              <h5 class="card-title"><?php echo $service['Nom'] ?></h5>
            <img src="image/service/<?php echo $service['media'] ?>" class="card-img-top" style="width:100%;margin:auto">
            <div class="card-body" style="background-color:aliceblue;">
              <p class="card-text"><?php echo $service['description'] ?></p>
            </div>
          </div>
        </div>

    </div>
  </div>

<?php }
      include_once('footer.php')
?>