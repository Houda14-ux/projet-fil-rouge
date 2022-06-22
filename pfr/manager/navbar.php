<?php include_once('config_admin.php');
if (!isset($_SESSION['Email'])) {
  //rediriger vers la page login si la session n'est pas remplis
  header('location:/pfr/manager/login.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Auditel</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
  <link href="/pfr/css/fontawesome/css/fontawesome.min.css" rel="stylesheet">

  <link rel="icon" type="image/png" href="/pfr/image/logo2.png" />
  <style type="text/css">
    .page-header h2 {
      margin-top: 0;
    }

    table tr td:last-child a {
      margin-right: 5px;
    }

    body {
      font-size: 14px;
    }
  </style>
</head>


<nav class="navbar navbar-expand-lg navbar-light bg-light" style="font-size: x-large;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="/pfr/manager/admin/index.php">admin</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/pfr/manager/contact/index.php">contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/pfr/manager/devis/index.php">devis</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/pfr/manager/realisation/index.php">realisation</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/pfr/manager/service/index.php">service</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a title="<?php echo $_SESSION['Nom']; ?>" class="btn btn-outline-success my-2 my-sm-0" type="submit" href="/pfr/manager/login.php?logout=1">Deconnecter</a>
    </form>
  </div>
</nav>