<?php 
include_once("../navbar.php"); 

if(isset($_GET["id"]) && !empty($_GET["id"])){
    $sql = "SELECT * FROM contact WHERE id = " . intval( $_GET["id"] ) ;
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
                            <h4>Nom</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["Nom"]); ?></p>
                        </div><div class="form-group">
                            <h4>Prenom</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["Prenom"]); ?></p>
                        </div><div class="form-group">
                            <h4>tel</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["tel"]); ?></p>
                        </div><div class="form-group">
                            <h4>email</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["email"]); ?></p>
                        </div><div class="form-group">
                            <h4>message</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["message"]); ?></p>
                        </div><div class="form-group">
                            <h4>position</h4>
                            <p class="form-control-static"><?php echo htmlspecialchars($row["position"]); ?></p>
                        </div>

                    <p><a href="index.php" class="btn btn-primary">Retour</a></p>
                </div>
            </div>
        </div>
    </section>
<?php include_once("../footer.php"); ?>