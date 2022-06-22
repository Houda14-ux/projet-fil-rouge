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
		$description = trim($_POST["description"]);
        $filename = trim($_POST["nom_image"]);


        if( isset($_FILES["media"]) && $_FILES["media"]['size'] > 0 ){
            $filename = uniqid() . '.' . pathinfo( $_FILES["media"]["name"], PATHINFO_EXTENSION);//uniqid generer un nom aleatoire unique pour l'image
            $tempname = $_FILES["media"]["tmp_name"];  
            $folder = "../../image/service/".$filename;
            $upload = move_uploaded_file($tempname, $folder);
        }

    $query = "UPDATE service SET Nom=?,description=?,media=? WHERE id=?";
    $params = [ $Nom,$description,$filename,$id  ];

    $res = $connection->execute($query,$params);
    
    if( $res ){
        header('location:index.php');
    }
} else {
    if(isset($_GET["id"]) && !empty($_GET["id"])){
        $id = $_GET["id"];
        $sql = "SELECT * FROM service WHERE id = " . intval( $_GET["id"] ) ;
        $result = $connection->select($sql);
        if ( !empty($result) ) {
            $row = $result[0];
            $Nom = htmlspecialchars($row["Nom"]);
            $description = htmlspecialchars($row["description"]);
            $media = htmlspecialchars($row["media"]);
        }
    } else{
        // URL doesn't contain id parameter. Redirect to error page
        header("location: index.php");
        exit();
    }
}

?>

<body>
    <section class="pt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="page-header">
                        <h2>Modifier</h2>
                    </div>
                    <p>Please edit the input values and submit to update the record.</p>
                    <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                                <label>Nom</label>
                                <input type="text" name="Nom" maxlength="50"class="form-control" value="<?php echo $Nom; ?>">

                            </div>
						<div class="form-group">
                                <label>description</label>
                                <textarea name="description" class="form-control"><?php echo $description ; ?></textarea>

                            </div>
						<div class="form-group">
                                <label>media</label>
                                <input type="file" accept=".jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff" name="media" maxlength="250"class="form-control" value="">
                                <input type="hidden" name="nom_image" value="<?php echo $media; ?>"/>
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