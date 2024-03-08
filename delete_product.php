<?php
include("db_conection.php");
session_start(); 
if(isset($_SESSION['admin']))
{
	$id_product=$_GET["product"];
	$delete="delete from product WHERE ID = '$id_product'";
	$run_query=mysqli_query($conn,$delete);



	echo "<script>alert('Product successfully deleted')</script>";
	echo"<script>window.open('admin.php','_self')</script>";

} else {


}



 ?>