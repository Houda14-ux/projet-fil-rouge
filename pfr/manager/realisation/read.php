<?php 
include_once("../navbar.php"); 

if(isset($_GET["id"]) && !empty($_GET["id"])){
    $sql = "SELECT * FROM realisation WHERE id = " . intval( $_GET["id"] ) ;
    $result = $connection->select($sql);
    if ( !empty($result) ) {
        $row = $result[0];
    }
} else{
    // URL doesn't contain id parameter. Redirect to error page
    header("location: index.php");
    exit();
}
?>

<body>
    <section class="pt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="page-header">
                        <h1>Afficher Element</h1>
                    </div>

                     <div class="form-group">
                            <h4>titre</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["titre"]); ?></p>
                        </div><div class="form-group">
                            <h4>description</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["description"]); ?></p>
                        </div><div class="form-group">
                            <h4>media</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["media"]); ?></p>
                        </div>

                    <p><a href="index.php" class="btn btn-primary">Retour</a></p>
                </div>
            </div>
        </div>
    </section>
<?php include_once("../footer.php"); ?>