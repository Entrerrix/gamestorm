<?php

include("db_conection.php");

if(!$_SESSION['admin'])
{
    session_start();

}



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <title>Gamestorm</title>


    <link rel="icon" href="img/core-img/flash.jpg">


    <link rel="stylesheet" href="style.css">


</head>

<body>



    <?php include("header.php"); ?>


    <section class="contact-area section-padding-100">
        <div class="container">


            <?php 
            $result = $conn->query('SELECT * FROM product'); 
            $row = $result->fetch_assoc();
            ?>
           
                <form>
                    <a href="add_product.php" class='btn btn-success'>Add new product</a>
                </form>
                <table class="table" style="margin-top: 5%">
                  <tr>
                    <th>Name</th>
                    <th>Genre</th>
                    <th>Platform</th>
                    <th>Company</th>
                    <th>Rank</th>
                    <th></th>
                    <th></th>
                    <th></th>
                  </tr>


                <?php 




                if ($result->num_rows > 0) {
            
                    while ($row = $result->fetch_assoc()) {

                        echo "<tr>";
                        echo "<th>".$row["Name"]."</th>";
                        echo "<th>".$row["Genre"]."</th>";;
                        echo "<th>".$row["Platform"]."</th>";
                        echo "<th>".$row["Company"]."</th>";
                        echo "<th>".$row["Rank"]."</th>";
                        echo '<th><a name="edit" class="btn btn-primary" href="edit_product.php?product='.$row["ID"].'">Edit</a></th>';
                        echo '<th><a name="delete" class="btn btn-danger" href="delete_product.php?product='.$row["ID"].'">Delete</a></th>';
                        echo "</form>";
                        echo "</tr>";


                    }
                }



                 ?>
                 



                </table>
                

                
            

            


            </div>
        </div>
    </section>


    <?php include("footer.php"); ?>


    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/plugins/plugins.js"></script>
    <script src="js/active.js"></script>
    <script src="js/active.js"></script>
</body>

</html>