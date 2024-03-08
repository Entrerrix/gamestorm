
<?php 

include("db_conection.php");


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

    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>

<?php include("header.php"); ?>
   


    <section class="game-review-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">

                   <?php 


$result = $conn->query('SELECT COUNT(*) as total_products FROM product');
$row = $result->fetch_assoc();
$num_total_rows = $row['total_products'];
$num_items_page = 5;


if ($num_total_rows > 0
    ) {
    $page = false;
 
    if (isset($_GET["page"])) {
        $page = $_GET["page"];
    }
 
    if (!$page) {
        $start = 0;
        $page = 1;
    } else {
        $start = ($page - 1) * $num_items_page;
    }
    
    $total_pages = ceil($num_total_rows / $num_items_page);
 

    if (isset($_POST["top-search"])) {


        $search="%{$_POST['top-search']}%";
       
        $stmt = $conn->prepare('SELECT * FROM product WHERE Name LIKE ?');
        $stmt->bind_param('s', $search); 

        $stmt->execute();

        $result = $stmt->get_result();
    

    } else{

    
        $result = $conn->query('SELECT * FROM product ORDER BY Name DESC LIMIT '.$start.', '.$num_items_page);
        
    }
 
    if ($result->num_rows > 0) {
        echo '<ul class="row items">';
        while ($row = $result->fetch_assoc()) {
            
?>
                    <div class="single-game-review-area d-flex flex-wrap mb-30">
                        <div class="game-thumbnail">
                            <?php 
                            $source='img/bg-img/'.$row["Image"];
                            echo  '<img src="'.$source.'" alt="">';

                             ?>
                           
                        </div>
                        <div class="game-content">



                            
                            <a href="" class="game-title"><?=$row["Name"]?></a>
                            <div class="game-meta">
                                <a href="#" class="game-comments"><?=$row["Genre"]?></a>
                                <a href="#" class="game-date"><?=$row["Platform"]?></a>
                                <a href="#" class="game-date"><?=$row["Company"]?></a>
                               
                            </div>
                            <p><?=$row["Narrative"]?></p>
                            
                            <div class="download-rating-area d-flex align-items-center justify-content-between">
                                <div class="download-area">
                                    <a href="#"><img src="img/core-img/app-store.png" alt=""></a>
                                    <a href="#"><img src="img/core-img/google-play.png" alt=""></a>
                                </div>
                                <div class="rating-area text-center">
                                    <h3><?=$row["Rank"]?></h3>
                                    <div class="stars">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                   
                    

                   <?php 

                    }
                    }
                    }


  echo '<nav aria-label="Page navigation example">';
    echo '<ul class="pagination mt-100">';
 
    if ($total_pages > 1) {
        if ($page != 1) {
           

           echo '<li class="page-item"><a class="page-link" href="game-review.php?page='.($page-1).'"><span aria-hidden="true">&laquo;</span></a></li>';
           
                  }
 
        for ($i=1;$i<=$total_pages;$i++) {
            if ($page == $i) {
                echo '<li class="page-item active"><a class="page-link" href="#">'.$page.'</a></li>';
            } else {
                echo '<li class="page-item"><a class="page-link" href="game-review.php?page='.$i.'">'.$i.'</a></li>';
            }
        }
 
        if ($page != $total_pages) {
            echo '<li class="page-item"><a class="page-link" href="game-review.php?page='.($page+1).'"><span aria-hidden="true">&raquo;</span></a></li>';
        }
    }
    echo '</ul>';
    echo '</nav>';


                    ?>


                       
                            
                        
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


<<?php  mysqli_close($conn); ?>