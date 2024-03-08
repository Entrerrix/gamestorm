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
                


                <div class="col-6">


                    <h4 class="mb-70">Login</h4>

  
                    <div class="contact-form-area mb-100">
                        <form action="register_form.php" method="post">
                            <?php if (isset($error)) { echo "<p style='color:red'>Email or password is incorrect!</p>";} ?>
                            <div class="row">

                                <div class="col-6 col-lg-6">
                                    <input type="email" class="form-control" name="Email" placeholder="Email">
                                </div>
                                <div class="col-6">
                                    <input type="password" class="form-control" name="Password" placeholder="Password">
                                </div>
                                <div class="col-6">
                                    <button class="btn gamestorm-btn w-100" type="submit" name="login">Login</button>
                                </div>
                                
                            </div>
                        </form>
                    </div>

                    <h4 class="mb-70">Register</h4>


                    <div class="contact-form-area mb-100">
                        <form action="register_form.php" method="post">
                            <?php if (isset($error2)) { echo "<p style='color:red'>Customer is already exist, Please try another one!</p>";} ?>
                            <div class="row">
                                <div class="col-6 col-lg-6">
                                    <input type="text" class="form-control" name="Name" placeholder="Name">
                                </div>
                                <div class="col-6 col-lg-6">
                                    <input type="text" class="form-control" name="Surname" placeholder="Surame">
                                </div>
                                 <div class="col-6 col-lg-6">
                                    <input type="text" class="form-control" name="Address" placeholder="Address">
                                </div>
                                 <div class="col-6 col-lg-6">
                                    <input type="text" class="form-control" name="PhoneNo" placeholder="Phone number">
                                </div>
                                <div class="col-6 col-lg-6">
                                    <input type="email" class="form-control" name="Email" placeholder="Email">
                                </div>
                                <div class="col-6">
                                    <input type="password" class="form-control" name="Password" placeholder="Password">
                                </div>
                                <div class="col-6">
                                    <button class="btn gamestorm-btn w-100" type="submit" name="register">Register</button>
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