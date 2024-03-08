
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
 
   
    echo '<h3>Total Games: '.$num_total_rows.'</h3>';
    echo '<h3>Page '.$page.' of ' .$total_pages.' pages.</h3>';

    if (isset($_POST["search-top"])) {

        $result = $conn->query('SELECT * FROM product WHERE Name LIKE "%"'.$_POST["search-top"]);

    } else{

        $result = $conn->query('SELECT * FROM product ORDER BY Name DESC LIMIT '.$start.', '.$num_items_page);
    }
 
    

    if ($result->num_rows > 0) {
        echo '<ul class="row items">';
        while ($row = $result->fetch_assoc()) {
            echo '<li class="col-lg-4">';
            echo '<div class="item">';
            echo '<h3>'.$row['Name'].'</h3>';
            echo '</div>';
            echo '</li>';
        }
        echo '</ul>';
    }
 
    echo '<nav>';
    echo '<ul class="pagination">';
 
    if ($total_pages > 1) {
        if ($page != 1) {
            echo '<li class="page-item"><a class="page-link" href="index.php?page='.($page-1).'"><span aria-hidden="true">&laquo;</span></a></li>';
        }
 
        for ($i=1;$i<=$total_pages;$i++) {
            if ($page == $i) {
                echo '<li class="page-item active"><a class="page-link" href="#">'.$page.'</a></li>';
            } else {
                echo '<li class="page-item"><a class="page-link" href="index.php?page='.$i.'">'.$i.'</a></li>';
            }
        }
 
        if ($page != $total_pages) {
            echo '<li class="page-item"><a class="page-link" href="index.php?page='.($page+1).'"><span aria-hidden="true">&raquo;</span></a></li>';
        }
    }
    echo '</ul>';
    echo '</nav>';
}

 ?>