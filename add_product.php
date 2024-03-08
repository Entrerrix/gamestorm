<?php include("register.php") ?>
<?php include("userlogin.php") ?>
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
            <div class="row">
                
                <div class="col-10">


                    <h4 class="mb-70">Add Product</h4>

                    <?php 

                    include("db_conection.php");
                    session_start(); 
                    if(isset($_SESSION['admin']))
                    {
                        $id_product=$_GET["product"];
                        $select_product="select * from product WHERE ID = '$id_product'";
                        $run_query=mysqli_query($conn,$select_product);
                        $product=mysqli_fetch_array($run_query);

                        $name=$product["Name"];
                        $genre=$product["Genre"];
                        $platform=$product["Platform"];
                        $company=$product["Company"];
                        $rank=$product["Rank"];
                        $image=$product["Image"];


                    } else {

                        header("Location: index.php");
                    }

                    if (isset($_POST["Name"])) {

                        $name=$_POST["Name"];
                        $genre=$_POST["Genre"];
                        $platform=$_POST["Platform"];
                        $company=$_POST["Company"];
                        $rank=$_POST["Rank"];
                        $narrative=$_POST["Narrative"];
                        $image=$_POST["Image"];
                        $date = date("yy/m/d");


                       $add_product = $pdo_conn->prepare('insert into product (Name, Genre, Platform, Company, Rank, Narrative, Image, Type, Stock_quantity, Price, Discount, Barcode, Creationdate, Modificationdate) values (:name, :genre, :platform, :company, :rank, :narrative, :image, "Game", "100", "60", "10%", "XXX-XXX", "2020/04/24", "2020/04/24")');

                        $add_product->execute(array(":name"=>$name,":genre"=>$genre,":platform"=>$platform,":company"=>$company,":rank"=>$rank, ":narrative" => $narrative, ":image"=>$image));

                        

                        echo "<script>alert('Data successfully added!')</script>";


                    }



                     ?>




                    <div class="contact-form-area mb-100">
                        <form action="add_product.php" method="post">                     
                            <div class="row">
                                <div class="col-6 col-lg-6">
                                    <label><b>Name</b></label>
                                    <input type="text" class="form-control" name="Name">
                                    <label><b>Genre</b></label>        
                                    <input type="text" class="form-control" name="Genre">
                                </div>
                                 <div class="col-6 col-lg-6">
                                    <label><b>Platform</b></label>
                                    <input type="text" class="form-control" name="Platform">
                                    <label><b>Company</b></label>
                                    <input type="text" class="form-control" name="Company">
                                </div>
                                <div class="col-6 col-lg-6">
                                    <label><b>Rank</b></label>
                                    <input type="number" class="form-control" name="Rank">
                                </div>
                                <div class="col-6">
                                    <label><b>Image</b></label>
                                    <input type="text" class="form-control" name="Image">
                                </div>
                                <div class="col-12">
                                    <label><b>Narrative</b></label><br>
                                     <textarea name="Narrative" rows="6" cols="130"></textarea>
                                </div>

                                <div class="col-6">
                                    <br><button class="btn gamestorm-btn w-100" type="submit">Add</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                </div>


            </div>
        </div>
    </section>

    <?php include("footer.php"); ?>

    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/plugins/plugins.js"></script>
    <script src="js/active.js"></script>
</body>

</html>