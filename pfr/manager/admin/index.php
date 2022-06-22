<?php include_once("../navbar.php"); ?>

<body>
    <section class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header clearfix">
                        <h2 class="float-left">admin</h2>
                        <a href="create.php" class="btn btn-success float-right">Ajouter</a>
                    </div>
                    <?php
                    $sql = "SELECT * FROM admin";
                    $result = $connection->select($sql);
                    if ( !empty($result) ) {
                            echo "<table class='table table-bordered table-striped'>";
                            echo "<thead>";
                            echo "<tr>";
                            echo "<th>id</th>";
                            echo "<th>Nom</th>";
                            echo "<th>Prenom</th>";
                            echo "<th>email</th>";
                            echo "<th>pw</th>";
                            echo "<th>actif</th>";
                            echo "<th>Action</th>";
                            echo "</tr>";
                            echo "</thead>";
                            echo "<tbody>";
                            foreach($result as $row ) {
                                echo "<tr>";
                                echo "<td>" . htmlspecialchars($row['id']) . "</td>";
                                echo "<td>" . htmlspecialchars($row['Nom']) . "</td>";
                                echo "<td>" . htmlspecialchars($row['Prenom']) . "</td>";
                                echo "<td>" . htmlspecialchars($row['email']) . "</td>";
                                echo "<td>" . htmlspecialchars($row['pw']) . "</td>";
                                echo "<td>" . htmlspecialchars($row['actif']) . "</td>";
                                echo "<td>";
                                echo "<a href='read.php?id=" . $row['id'] . "' title='Afficher Element' ><i class='far fa-eye'></i></a>";
                                echo "<a href='update.php?id=" . $row['id'] . "' title='Update Record' ><i class='far fa-edit'></i></a>";
                                echo "<a href='delete.php?id=" . $row['id'] . "' title='Supprimer' ><i class='far fa-trash-alt'></i></a>";
                                echo "</td>";
                                echo "</tr>";
                            }
                            echo "</tbody>";
                            echo "</table>";

                        } else {
                            echo "<p class='lead'><em>Aucun element trouvé.</em></p>";
                        }
                        


                    mysqli_close($link);
                    ?>
                </div>
            </div>
        </div>
    </section>

    <?php include_once("../footer.php"); ?>