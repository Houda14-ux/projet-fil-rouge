<?php 
include_once("../navbar.php"); 

$Nom = "";
$Prenom = "";
$email = "";
$pw = "";
$actif = "";

if (isset($_POST["id"]) && !empty($_POST["id"])) {

    $id = $_POST["id"];
    $Nom = trim($_POST["Nom"]);
    $Prenom = trim($_POST["Prenom"]);
    $email = trim($_POST["email"]);
    $pw = trim($_POST["pw"]);
    $actif = isset($_POST["actif"])? 1 : 0;

    $query = "UPDATE admin SET Nom=?,Prenom=?,email=?,pw=?,actif=? WHERE id=?";
    $params = [$Nom, $Prenom, $email, $pw, $actif, $id];

    $res = $connection->execute($query,$params);
    if( $res ){
        header('location:index.php');
    }
} else {
    if(isset($_GET["id"]) && !empty($_GET["id"])){
        $id = $_GET["id"];
        $sql = "SELECT * FROM admin WHERE id = " . intval( $_GET["id"] ) ;
        $result = $connection->select($sql);
        if ( !empty($result) ) {
            $row = $result[0];

            $Nom = htmlspecialchars($row["Nom"]);
            $Prenom = htmlspecialchars($row["Prenom"]);
            $email = htmlspecialchars($row["email"]);
            $pw = htmlspecialchars($row["pw"]);
            $actif = htmlspecialchars($row["actif"]);
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
                        <h2>Update Record</h2>
                    </div>
                    <p>Please edit the input values and submit to update the record.</p>
                    <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">

                        <div class="form-group">
                            <label>Nom</label>
                            <input type="text" name="Nom" maxlength="50" class="form-control" value="<?php echo $Nom; ?>">

                        </div>
                        <div class="form-group">
                            <label>Prenom</label>
                            <input type="text" name="Prenom" maxlength="50" class="form-control" value="<?php echo $Prenom; ?>">

                        </div>
                        <div class="form-group">
                            <label>email</label>
                            <input type="text" name="email" maxlength="100" class="form-control" value="<?php echo $email; ?>">

                        </div>
                        <div class="form-group">
                            <label>pw</label>
                            <input type="text" name="pw" maxlength="50" class="form-control" value="<?php echo $pw; ?>">

                        </div>
                        <div class="form-group">
                            <label>actif</label>
                            <input type="checkbox" name="actif" value="1" <?php echo ($actif == 1)? 'checked':''; ?>  style="margin-left:50px;">
                        </div>

                        <input type="hidden" name="id" value="<?php echo $id; ?>" />
                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-secondary">Annuler</a>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <?php include_once("../footer.php"); ?>