<?php

include("db_conection.php");

if(isset($_POST['login']))
{
    $user_email=$_POST['Email'];
    $user_password=$_POST['Password'];

    $check_user="select Email from staff WHERE Email='$user_email'";
    $run1=mysqli_query($conn,$check_user);
    $user_log=mysqli_fetch_array($run1); 
    $check_pass="select Password from staff WHERE Email='$user_email'";
    $run2=mysqli_query($conn,$check_pass);
    $hash_pass=mysqli_fetch_array($run2);


    if (password_verify($user_password, $hash_pass["Password"]) && $user_email == $user_log["Email"]) {
         
        session_start();  
        $_SESSION['admin']=$user_email;
        header("Location: admin.php");

    } else {

        $error = "Email or password is incorrect!";
    }


    
}
?>