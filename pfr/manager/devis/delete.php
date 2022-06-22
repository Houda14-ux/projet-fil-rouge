<?php include_once("../navbar.php");
// Process delete operation after confirmation
if(isset($_POST["id"]) && !empty($_POST["id"])){
    $id = $_POST["id"];
    $query = "DELETE FROM devis WHERE id = ?";
    $res = $connection->execute($query,[$id]);
    if( $res ){
        header('location:index.php');
    }
} else{
    // Check existence of id parameter
	$_GET["id"] = trim($_GET["id"]);
    if(empty($_GET["id"])){
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
                        <h1>Supprimer</h1>
                    </div>
                    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                        <div class="alert alert-danger fade-in">
                            <input type="hidden" name="id" value="<?php echo trim($_GET["id"]); ?>"/>
                            <p>Etes vous sur de vouloir supprimer ??</p><br>
                            <p>
                                <input type="submit" value="Yes" class="btn btn-danger">
                                <a href="index.php" class="btn btn-secondary">No</a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
<?php include_once("../footer.php"); ?>
