<?php 
                            
                             
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'aczw954';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);


if(! $conn ) {
die('Could not connect: ' . mysqli_error());
}


	try{
		$pdo_conn = new PDO("mysql:host={$dbhost};dbname={$dbname}",$dbuser,$dbpass);
		$pdo_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOException $e){
		echo $e->getMessage();
	}
	



 ?>