<?php 
include_once('header.php');

if (isset($_POST["Nom"]) && !empty($_POST["Nom"])) {
        $Nom = trim($_POST["Nom"]);
		$Prenom = trim($_POST["Prenom"]);
		$tel = trim($_POST["tel"]);
		$email = trim($_POST["email"]);
		$message = trim($_POST["message"]);
		$position = trim($_POST["position"]);

    $query = "INSERT INTO contact (Nom,Prenom,tel,email,message,position) VALUES (?,?,?,?,?,?)";
    $params = [ $Nom,$Prenom,$tel,$email,$message,$position ];

    $res = $connection->execute($query,$params);
    
    if( $res ){
        header('location:index.php');
    }
}

?> 
<section id="contact" class="contact ">
    <div class="container ">

        <div class="section-title">
            <h2  style="margin-top:150px;margin-bottom: 50px;color:red" data-aos="fade-up">Contact</h2>
            <p data-aos="fade-up">Pour toute demande de renseignements ou suggestions sur notre site, n’hésitez pas à nous contacter, nous vous répondrons dans les plus brefs délais..</p>
        </div>

        <div class="row justify-content-center ">

            <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up">
                <div class="info-box">
                    <i class="bx bx-map"></i>
                    <h4>Address</h4>
                    <p>LOT RIB ANZARAN
N°49 HAY EL MASSIRA ERRACHIDIA</p>
                </div>
            </div>

            <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="100">
                <div class="info-box">
                    <i class="bx bx-envelope"></i>
                    <h4>Email </h4>
                    <p>auditel@electricite.com<br>contact@auditel.com</p>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="200">
                <div class="info-box">
                    <i class="bx bx-phone-call"></i>
                    <h3>Appelez-Nous</h3>
                    <p>+212600103907</p>
                </div>
            </div>
        </div>

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
            <div class="col-xl-9 col-lg-12 mt-4">
                <form action="" method="post" role="form" class="php-email-form">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="text" name="Nom" class="form-control" id="nom" placeholder="Nom..." required>
                        </div>
                        <div class="col-md-6 form-group">
                            <input type="text" name="Prenom" class="form-control" id="prenom" placeholder="Prenom..." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="text" class="form-control" name="tel" id="tel" placeholder="telephon" required>
                        </div>

                        <div class="col-md-6 form-group mt-3 mt-md-0">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control" name="address" id="address" placeholder="address" required>
                        </div>
                    </div>

                    <div class="form-group mt-3">
                        <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                    </div>
                    <div class="text-center"><button type="submit" class="btn btn-success">Send Message</button></div>
                </ >
            </div>

        </div>

    </div>
</section>

<!--  Localisation  Section -->


<section id="contact" class="contact">
  <div class="container">

    <div class="section-title ">
      <h2 style="margin-top:150px;margin-bottom: 50px;color:red">Localisation map</h2>
      <p data-aos="fade-up">Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
      <div class="row justify-content-center">
        <div class="gmap_canvas"><iframe width="100%" height="800" id="gmap_canvas" src="https://maps.google.com/maps?q=errachidia&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://fmovies-online.net"></a><br>
          <style>
            /* .mapouter {
              
              text-align: center;
              height: 500px;
              width: 100%;
            } */
          </style><a href="https://www.embedgooglemap.net">custom google map for website</a>
          <style>
            .gmap_canvas {
              overflow: hidden;
              background: none !important;
              height: 800px;
              width: 100%;
            }
          </style>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- end Localisation  Section -->






<?php
include_once('footer.php');
?>