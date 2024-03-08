
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
    <header class="header-area wow fadeInDown" data-wow-delay="500ms">

        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 d-flex align-items-center justify-content-between">

                        <div class="logo">
                            <a href="index.php"><img src="img/core-img/flash.jpg" alt=""></a>
                        </div>


                        <div class="search-login-area d-flex align-items-center">

                            <div class="top-search-area">
                                <form action="game-review.php" method="post">
                                    <input type="search" name="top-search" id="topSearch" placeholder="Search">
                                    <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                </form>
                            </div>

                            <div class="login-area">
                                <?php 
                                session_start();
                                if(isset($_SESSION['admin'])){
                                    echo '<a href="logout.php"><span>Logout</span> <i class="fa fa-lock" aria-hidden="true"></i></a>';
                                }else {
                                    echo '<a href="register_form.php"><span>Login / Register</span> <i class="fa fa-lock" aria-hidden="true"></i></a>';
                                } 

                                ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="gamestorm-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">

                    <nav class="classy-navbar justify-content-between" id="gamestormNav">


                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>


                        <div class="classy-menu">


                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>


                            <div class="classynav">
                                <ul>
                                    <li><a href="index.php">Home</a></li>
                                    
                                   <li><a href="game-review.php">Game</a></li>

                                <?php   if(isset($_SESSION['admin'])){
                                    echo '<li><a href="admin.php">Manage</a></li>';
                                } 

                                ?>
                                   
                               
                                </ul>
                            </div>

                        </div>

                        
                    </nav>
                </div>
            </div>
        </div>
    </header>
