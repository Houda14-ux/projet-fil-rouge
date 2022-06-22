<?php 
include_once("../navbar.php"); 

$Nom = "";
$Prenom = "";
$tel = "";
$email = "";
$message = "";
$position = "";
 
if (isset($_POST["Nom"]) && !empty($_POST["Nom"])) {

        $Nom = trim($_POST["Nom"]);
		$Prenom = trim($_POST["Prenom"]);
		$tel = trim($_POST["tel"]);
		$email = trim($_POST["email"]);
		$adresse = trim($_POST["adresse"]);
		$detaille = trim($_POST["detaille"]);

    $query = "INSERT INTO devis (Nom,Prenom,tel,email,adresse,detaille) VALUES (?,?,?,?,?,?)";
    $params = [ $Nom,$Prenom,$tel,$email,$adresse,$detaille  ];

    $res = $connection->execute($query,$params);
    
    if( $res ){
        header('location:index.php');
    }
}
?>
<body>
    <section class="pt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="page-header">
                        <h2>Ajouter</h2>
                    </div>
                    <p></p>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">

                        <div class="form-group">
                                <label>Nom</label>
                                <input type="text" name="Nom" maxlength="50"class="form-control" value="<?php echo $Nom; ?>">
                                <span class="form-text"><?php echo $Nom_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>Prenom</label>
                                <input type="text" name="Prenom" maxlength="50"class="form-control" value="<?php echo $Prenom; ?>">
                                <span class="form-text"><?php echo $Prenom_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>tel</label>
                                <input type="text" name="tel" maxlength="15"class="form-control" value="<?php echo $tel; ?>">
                                <span class="form-text"><?php echo $tel_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>email</label>
                                <input type="text" name="email" maxlength="50"class="form-control" value="<?php echo $email; ?>">
                                <span class="form-text"><?php echo $email_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>adresse</label>
                                <input type="text" name="adresse" maxlength="250"class="form-control" value="<?php echo $adresse; ?>">
                                <span class="form-text"><?php echo $adresse_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>detaille</label>
                                <textarea name="detaille" class="form-control"><?php echo $detaille ; ?></textarea>
                                <span class="form-text"><?php echo $detaille_err; ?></span>
                            </div>

                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-secondary">Annuler</a>
                    </form>
                </div>
            </div>
        </div>
    </section>
<?php include_once("../footer.php"); ?>