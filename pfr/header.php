<?php
include_once('connection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" type="image/png" href="image/logo2.png" />
  <link href="css/fontawesome/css/fontawesome.min.css" rel="stylesheet">
  <title>Auditel</title>
</head>

<body style="    background-color: azure;font-family: ui-monospace;font-size: large;">
  <div class="m-4">
    
<nav class="navbar navbar-expand-lg navbar-light bg-light"  style="font-size:x-large ;">
<a href="/pfr/index.php" class="navbar-brand" style="margin-right:5%">
          <img src="image/logo2.png" style="height: 61px;">
        </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0" style="margin: auto ;">
    <li style="margin:0 5%;"><a class="nav-item nav-link" href="/pfr/index.php">Acceuil</a></li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Services
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                  <?php
                  //recuperer les service de la base de donnée
                  $services = $connection->select('select * from service order by Nom');
                  for ($i = 0; $i < count($services); $i++) {
                    //afficher les  service dans la boucle for
                    $service = $services[$i];
                    echo '<a class="dropdown-item" href="service.php?service=' . $service['id'] . '">' . $service['Nom'] . '</a>';
                  }
                  ?>

                </div>
              </li>

              <li style="margin:0 5%;"><a class="nav-item nav-link" href="/pfr/realisation.php">Réalisation</a></li>
              <li style="margin:0 5%;"><a class="nav-item nav-link" href="/pfr/contact.php">Contact</a></li>
              <li style="margin:0 5%;"><a class="nav-item nav-link" href="/pfr/devis.php">Devis</a></li>
    </ul>
  </div>
</nav>

  </div>


  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container" data-aos="fade-in">
      <h1>Bienvenu chez AUDITEL</h1>
      <h2>La qualité est notre priorité</h2>
      <div class="d-flex align-items-center">
        <i class="bx bxs-right-arrow-alt get-started-icon"></i>
        <a href="#about" class="btn-get-started scrollto">Demander Devis!</a>
      </div>
    </div>
  </section><!-- End Hero -->