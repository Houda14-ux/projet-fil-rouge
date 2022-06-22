<?php  

 class Connecter { 
  private $cnx = null;

  function __construct()
  {
      
  }

  function connect(){
    $this->cnx = new mysqli("localhost","root",null,"pfr");
    if ($this->cnx -> connect_errno) {
      echo "Failed to connect to MySQL: " . $this->cnx-> connect_error;
      exit();
    }

  }

  function execute( $query,array $params ){
    if( $this->cnx == null ){
        $this->connect();
    }
    //preparer la requette pour remplacer les points d'interrogation ar leur valeur (params)
    $statement = $this->cnx->prepare($query);
    //lier les valeur de $params avec les points d'interrogation de la requette preparé  
    $statement->bind_param(str_repeat('s', count($params)), ...$params);
    //executer la requette pour enregistrer les modification dans la BD 
    $res = $statement->execute();
    //$res est un boolean true ou false si la requette contien des erreurs
    return $res;
  }

  function select($query){
    //se connecter si la connection n'est pas encors initialisé
      if( $this->cnx == null ){
          $this->connect();
      }
    $result = $this->cnx->query( $query );
    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);//(MYSQLI_ASSOC) retourne le resultat sous format de tableau
    return $rows ; 
  }



}

$connection = new Connecter();

?>