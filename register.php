<?php
include("db_conection.php");
if(isset($_POST['register']))
{
	
$email = $_POST['Email'];
$password = password_hash($_POST['Password'], PASSWORD_DEFAULT);
$firstname = $_POST['Name'];
$lastname = $_POST['Surname'];
$phone = $_POST['PhoneNo'];
$address = $_POST['Address'];


	$check_user="select * from staff WHERE Email='$email'";
    $run_query=mysqli_query($conn,$check_user);

    if(mysqli_num_rows($run_query)>0)
    {
    	$error2 = "Customer is already exist, Please try another one!";

    } else {
    	
    	$saveaccount=$pdo_conn->prepare("insert into staff (Email,Password,Name,Surname,Address,PhoneNo, Position, Status ) VALUE (:email,:password,:firstname,:lastname,:address, :phone, 'General Manager', 'Operative')");

    	 
       $saveaccount->execute(array(":email"=>$email,":password"=>$password,":firstname"=>$firstname,":lastname"=>$lastname,":address"=>$address,":phone"=>$phone));

	echo "<script>alert('Registration completed successfully')</script>";
    }
 


				
	
			
		
	
		

}

?>
