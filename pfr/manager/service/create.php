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
    $description = trim($_POST["description"]);
    $filename = '';


    if( isset($_FILES["media"]) && $_FILES["media"]['size'] > 0 ){
        $filename = uniqid() . '.' . pathinfo( $_FILES["media"]["name"], PATHINFO_EXTENSION);//uniqid generer un nom aleatoire unique pour l'image
        $tempname = $_FILES["media"]["tmp_name"];  
        $folder = "../../image/service/".$filename;
        $upload = move_uploaded_file($tempname, $folder);
    }
    
    $query = "INSERT INTO service (Nom,description,media) VALUES (?,?,?)";
    $params = [ $Nom,$description,$filename  ];
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
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                                <label>Nom</label>
                                <input type="text" name="Nom" maxlength="50"class="form-control" value="<?php echo $Nom; ?>">
                                <span class="form-text"><?php echo $Nom_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>description</label>
                                <textarea name="description" class="form-control"><?php echo $description ; ?></textarea>
                                <span class="form-text"><?php echo $description_err; ?></span>
                            </div>
						<div class="form-group">
                                <label>media</label>
                                <input type="file" accept=".jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff" name="media" maxlength="250"class="form-control" value="">
                                <span class="form-text"><?php echo $media_err; ?></span>
                            </div>

                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-secondary">Annuler</a>
                    </form>
                </div>
            </div>
        </div>
    </section>
<?php include_once("../footer.php"); ?>