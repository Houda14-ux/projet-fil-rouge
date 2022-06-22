<?php 
include_once('config_admin.php');
$message = '';
if( isset($_GET['logout']) ){
    //a la deconnection  on detruit la session
    $_SESSION = null;
    session_destroy();
}elseif(isset($_SESSION['Email'])){
    header('location:index.php');
}

if(isset($_POST['email'])){
    //verifier que l'utilisateur est 'actif' et que l'email/pass sont correct
    $requette =  "select Nom,Prenom,Email from admin where actif is true and email = '" . $_POST['email'] . "' and pw = '". $_POST['pass'] ."' limit 1";
    $result = $connection->select($requette);    
    if(count($result) > 0){
        $_SESSION = $result[0];
        //requperer le resultat sous form de tableau et le stocker dans la session
        header('location:index.php');
        //une fois connecté avec succes et la session crée on redirige vers la page index
    }
    else{
        $message = 'Email ou mot de pass incorrcte !';
    }

}

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css">
</head>

<body class="text-center">
    <form class="form-signin" action="" method="post">
        <img class="mb-4" src="/pfr/image/logo2.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <?php 
            if(!empty($message)){
        ?>
        <div class="alert alert-danger" role="alert">
        <?php
            echo $message;
        ?>
        </div>
        <?php
        }
        ?>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Mot de pass" required>
        <div class="checkbox mb-3">

        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</body>

</html>


<style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: -webkit-box;
        display: flex;
        -ms-flex-align: center;
        -ms-flex-pack: center;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
    }

    .form-signin {
        width: 100%;
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }

    .form-signin .checkbox {
        font-weight: 400;
    }

    .form-signin .form-control {
        position: relative;
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
    }

    .form-signin .form-control:focus {
        z-index: 2;
    }

    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }

    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>