<?php
include_once('header.php');

//quand je click sur envoyer 
if (isset($_POST["Nom"]) ) {
        $Nom = trim($_POST["Nom"]);
		$Prenom = trim($_POST["Prenom"]);
		$tel = trim($_POST["tel"]);
		$email = trim($_POST["email"]);
		$adresse = trim($_POST["address"]);
		$detaille = '';

    $query = "INSERT INTO devis (Nom,Prenom,tel,email,adresse,detaille) VALUES (?,?,?,?,?,?)";
    $params = [ $Nom,$Prenom,$tel,$email,$adresse,$detaille  ];

    $res = $connection->execute($query,$params);
    
    if( $res ){
        header('location:index.php');
    }
}
?>
<form action="" method="post" role="form" class="php-email-form">

<section id="contact" class="contact ">
    <div class="container ">

        <div class="section-title">
            <h2 style="margin-top:150px;margin-bottom: 50px;color:red" data-aos="fade-up">Demander un Devis</h2>
            <p data-aos="fade-up">Vous avez un projet et vous souhaitez obtenir un devis pour vos travaux électriques, afin d’estimer le coût de vos travaux ?
                <br> Que vous soyez Particulier, Professionnel ou encore Industriel, AUDITEL Électricité répond à vos besoins.
                <br> Merci de renseigner le formulaire ci-dessous pour obtenir un devis gratuit.
            </p>
        </div>
        <div style="border: 1px solid gray;">
            <div class="row justify-content-center " style="font-size: large;">

                <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up">
                    <div class="info-box">
                        <i class="bx bx-map"></i>
                        <h5>Address</h5>
                        <p>LOT RIB ANZARAN
                            N°49 HAY EL MASSIRA ERRACHIDIA</p>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="info-box">
                        <i class="bx bx-envelope"></i>
                        <h5>Email </h5>
                        <p>auditel@electricite.com<br>contact@auditel.com</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="info-box">
                        <i class="bx bx-phone-call"></i>
                        <h5>Appelez-Nous</h5>
                        <p>+212600103907</p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
                <div class="col-xl-9 col-lg-12 mt-4">
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


                            <div class="form-group col-md-12">
                                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                            </div>

                            <div class="col-md-12 form-group" style="font-size: large;">
                                <fieldset>
                                    <legend>Veuillez sélectionner vos intérêts :</legend>
                                    <div>
                                        <input type="checkbox" id="coding" name="interest" value="coding">
                                        <label for="coding">Sécurité électrique et courant faible</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="music" name="interest" value="music">
                                        <label for="music">Maintenance et réalisation électrique.</label> <br>

                                        <input type="checkbox" id="coding" name="interest" value="coding">
                                        <label for="coding">Système de vidéo surveillance IP et analogique.</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="music" name="interest" value="music">
                                        <label for="music">Système de détection d’incendie.</label> <br>

                                        <input type="checkbox" id="coding" name="interest" value="coding">
                                        <label for="coding">Système de contrôle d’accès.</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="music" name="interest" value="music">
                                        <label for="music">Système d’alarme anti intrusion.</label> <br>
                                        <input type="checkbox" id="coding" name="interest" value="coding">
                                        <label for="coding">Pré-câblage de réseau informatique.</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="music" name="interest" value="music">
                                        <label for="music">Domotique.</label>
                                    </div>
                                </fieldset>
                            </div>
                        </div>


                </div>

            </div>

        </div>

    </div>
    <div class="text-center" style="padding: 20px;"><button type="submit" class="btn btn-danger">Envoyer Message</button></div>

</section>

                </form>
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