<?php 
include_once("../navbar.php"); 


if (isset($_POST["Nom"]) && !empty($_POST["Nom"])) {

    
    $Nom = trim($_POST["Nom"]);
    $Prenom = trim($_POST["Prenom"]);
    $email = trim($_POST["email"]);
    $pw = trim($_POST["pw"]);
    $actif = isset($_POST["actif"])? 1 : 0;

    $query = "INSERT INTO admin (Nom,Prenom,email,pw,actif) VALUES (?,?,?,?,?)";
    $params = [$Nom, $Prenom, $email, $pw, $actif];

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
                        <h2>Nouvelle element</h2>
                    </div>
                    <p></p>
                    <form action="" method="post">

                        <div class="form-group">
                                <label>Nom</label>
                                <input type="text" name="Nom" maxlength="50"class="form-control" value="<?php echo $Nom; ?>">

                            </div>
						<div class="form-group">
                                <label>Prenom</label>
                                <input type="text" name="Prenom" maxlength="50"class="form-control" value="<?php echo $Prenom; ?>">

                            </div>
						<div class="form-group">
                                <label>email</label>
                                <input type="text" name="email" maxlength="100"class="form-control" value="<?php echo $email; ?>">

                            </div>
						<div class="form-group">
                                <label>pw</label>
                                <input type="text" name="pw" maxlength="50"class="form-control" value="<?php echo $pw; ?>">

                            </div>
						<div class="form-group">
                                <label>actif</label>
                                <input type="checkbox" name="actif" value="1" <?php echo ($actif == 1)? 'checked':''; ?>  style="margin-left:50px;">

                            </div>

                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-secondary">Annuler</a>
                    </form>
                </div>
            </div>
        </div>
    </section>
<?php include_once("../footer.php"); ?>