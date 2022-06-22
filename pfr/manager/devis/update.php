<?php 
include_once("../navbar.php"); 

$Nom = "";
$Prenom = "";
$tel = "";
$email = "";
$message = "";
$position = "";
 
if (isset($_POST["id"]) && !empty($_POST["id"])) {
        $id = $_POST["id"];


        $Nom = trim($_POST["Nom"]);
		$Prenom = trim($_POST["Prenom"]);
		$tel = trim($_POST["tel"]);
		$email = trim($_POST["email"]);
		$adresse = trim($_POST["adresse"]);
		$detaille = trim($_POST["detaille"]);

    $query = "UPDATE devis SET Nom=?,Prenom=?,tel=?,email=?,adresse=?,detaille=? WHERE id=?";
    $params = [ $Nom,$Prenom,$tel,$email,$adresse,$detaille,$id  ];

    $res = $connection->execute($query,$params);
    
    if( $res ){
        header('location:index.php');
    }
} else {
    if(isset($_GET["id"]) && !empty($_GET["id"])){
        $id = $_GET["id"];
        $sql = "SELECT * FROM devis WHERE id = " . intval( $_GET["id"] ) ;
        $result = $connection->select($sql);
        if ( !empty($result) ) {
            $row = $result[0];

            $Nom = htmlspecialchars($row["Nom"]);
            $Prenom = htmlspecialchars($row["Prenom"]);
            $tel = htmlspecialchars($row["tel"]);
            $email = htmlspecialchars($row["email"]);
            $adresse = htmlspecialchars($row["adresse"]);
            $detaille = htmlspecialchars($row["detaille"]);
            
        }
    } else{
        // URL doesn't contain id parameter. Redirect to error page
        header("location: index.php");
        exit();
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Modifier</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<?php include_once("../navbar.php"); ?>
<body>
    <section class="pt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="page-header">
                        <h2>Modifier</h2>
                    </div>
                    <p>Please edit the input values and submit to update the record.</p>
                    <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">

                        <div class="form-group">
                                <label>Nom</label>
                                <input type="text" name="Nom" maxlength="50"class="form-control" value="<?php echo $Nom; ?>">

                            </div>
						<div class="form-group">
                                <label>Prenom</label>
                                <input type="text" name="Prenom" maxlength="50"class="form-control" value="<?php echo $Prenom; ?>">

                            </div>
						<div class="form-group">
                                <label>tel</label>
                                <input type="text" name="tel" maxlength="15"class="form-control" value="<?php echo $tel; ?>">

                            </div>
						<div class="form-group">
                                <label>email</label>
                                <input type="text" name="email" maxlength="50"class="form-control" value="<?php echo $email; ?>">

                            </div>
						<div class="form-group">
                                <label>adresse</label>
                                <input type="text" name="adresse" maxlength="250"class="form-control" value="<?php echo $adresse; ?>">

                            </div>
						<div class="form-group">
                                <label>detaille</label>
                                <textarea name="detaille" class="form-control"><?php echo $detaille ; ?></textarea>

                            </div>

                        <input type="hidden" name="id" value="<?php echo $id; ?>"/>
                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-secondary">Annuler</a>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <?php include_once("../footer.php"); ?>