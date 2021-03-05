<?php
include "db.php";
$login_failed = false;

if (isset($_POST['login'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];

    $email = mysqli_real_escape_string($con, $email);
    $password = mysqli_real_escape_string($con, $password);

    $query = "SELECT * FROM users WHERE emailid='$email' AND password='$password' AND isactive=1 AND (roleid=2 OR roleid=3)";
    $result = mysqli_query($con, $query);
    $user_count = mysqli_num_rows($result);

    if ($user_count == 1) {
        header('Location:dashboard-page.php');
    } else {
        $login_failed = true;
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <!--Meta tags-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0 ,user-scalable=no">

    <!--Title-->
    <title>Notes Marketplace</title>

    <!--Fevicon-->
    <link rel="icon" href="images/favicon.ico">

    <!--Google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!--Font-Awesome-->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">

    <!--bootstrap css-->
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">

    <!--Custom css-->
    <link rel="stylesheet" href="css/style.css">

    <!--Responsive css-->
    <link rel="stylesheet" href="css/responsive.css">

</head>

<body>

    <div id="home-background">
        <div id="login-with-img">
            <!--Grid-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 col-lg-3 col-sm-2 col-0 col-xl-4"></div>
                    <div id="log-in-logo" class="col-md-6 col-sm-8 col-12 col-lg-4 text-center">
                        <img src="images/top-logo.png" alt="White-logo" title="Website White Logo" class="img-fluid">
                    </div>
                    <div class="col-md-3 col-lg-3 col-0 col-sm-2 col-xl-4"></div>
                    <div class="col-md-3 col-lg-4 col-0 col-sm-2 col-xl-4"></div>
                    <div class="col-md-6 col-lg-4 col-12 col-sm-8 col-xl-4">
                        <!--Login form -->
                        <div id="log-in">
                            <!--Form-->
                            <form action="log-in-page.php" method="POST">
                                <h2 class="text-center">
                                    Login
                                </h2>
                                <p class="text-center">
                                    Enter your email address and password to login
                                </p>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control" id="login-email"
                                        placeholder="Enter your email">
                                </div>
                                <div class="form-group">
                                    <label>Password</label> <a id="forget-psd" href="forgot-passowrd-page.php"
                                        class="pull-right" title="Click here if you forget your password">
                                        <h6>Forgot Password?</h6>
                                    </a><img src="images/eye.png" toggle="#login-password" alt="View Password"
                                        class="pull-right login-eye toggle-password">
                                    <input type="password" name="password" class="form-control" id="login-password"
                                        placeholder="Enter your password">
                                    <div id="incorrect-psd">
                                        <?php
                                        if ($login_failed)
                                            echo "The password that you've entered is incorrect!";
                                        ?>
                                    </div>
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="login-remember-me">
                                    <label id="login-remember-me-label" class="form-check-label">
                                        <h6>Remember Me</h6>
                                    </label>
                                </div>
                                <div class="general-btn">
                                    <button id="login-btn" type="submit" name="login"
                                        class="btn btn-primary btn-block">LOGIN</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-4 col-0 col-sm-2 col-lx-4"></div>
                </div>
            </div>
        </div>
    </div>

    <!--jquery js-->
    <script src="js/jquery/jquery.min.js"></script>

    <!--bootstrap js-->
    <script src="js/bootstrap/bootstrap.min.js"></script>

    <!--Custom Script-->
    <script src="js/script.js"></script>

</body>

</html>