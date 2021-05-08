<?php
include "db.php";

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

$mail_sent = false;
$account_exist = true;
if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $query = "SELECT * FROM users WHERE emailid='$email'";
    $result = mysqli_query($con, $query);
    $email_count = mysqli_num_rows($result);

    if ($email_count == 1) {

        $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
        for ($i = 0; $i < 12; $i++) {
            $num = rand(0, strlen($alphabet) - 1);
            $password[$i] = $alphabet[$num];
        }

        //query for password change
        $query = "UPDATE users SET password='$password' WHERE emailid='$email'";
        mysqli_query($con, $query);

        //mail function
        require 'PHPMailer/Exception.php';
        require 'PHPMailer/PHPMailer.php';
        require 'PHPMailer/SMTP.php';

        $mail = new PHPMailer(true);

        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            $config_email = 'raj69gohil@gmail.com';
            $mail->Username = $config_email;
            $mail->Password = '123raj321';

            // Sender and recipient settings
            $mail->setFrom($config_email, 'NotesMarketPlace');

            $mail->addAddress($email, 'Dear user');
            $mail->addReplyTo($config_email, 'NotesmarktPlace');

            $mail->IsHTML(true);
            $mail->Subject = "Forgot password";
            $mail->Body = " Hello,<br>
            We have generated a new password for you<br>
            Password: $password <br>
            Email: $email <br>
            Regards,<br>
            Notes Marketplace<br>";
            $mail->AltBody = '';

            $mail->send();
            $mail_sent = true;
        } catch (Exception $e) {
            echo "Error in sending email. Mailer Error: {$mail->ErrorInfo}";
        }
    } else if ($email_count == 0) {
        $account_exist = false;
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
                    <div class="col-lg-3 col-md-3 col-sm-2 col-0"></div>
                    <div id="logo" class="col-lg-6 col-md-6 col-sm-8 col-12 text-center">
                        <img src="images/top-logo.png" alt="White-logo" title="Website White Logo"
                            class="img-responsive">
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-2 col-0"></div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-1"></div>
                    <div class="col-lg-4 col-md-6 col-sm-8 col-10">

                        <!--Login form -->
                        <div id="log-in">

                            <!--Form-->
                            <form method="POST" id="forgot_form_id" name="forgot_form">
                                <h2 class="text-center">
                                    Forgot Password?
                                </h2>
                                <p class="text-center">
                                    Enter your email to reset your password
                                </p>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control" id="login-email"
                                        placeholder="Enter your email">
                                </div>
                                <div class="general-btn">
                                    <button name="submit" id="forget-password-btn" type="submit"
                                        class="btn btn-primary btn-block">submit</button>
                                </div>
                                <div id="account-error">
                                    <?php
                                    if (!$account_exist)
                                        echo "<h3>There isn't any account associated with this email <span>" . $email . "</span></h3>";
                                    else if ($mail_sent)
                                        echo "<h3>Your password has been changed successfully and newly generated password is sent on your registered email address <span> " . $email . "</span></h3>";
                                    ?>
                                </div>
                            </form>
                            <!-- form ends here -->

                        </div>
                    </div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-1"></div>
                </div>
            </div>
        </div>
    </div>

    <!--jquery js-->
    <script src="js/jquery/jquery.min.js"></script>

    <!--bootstrap js-->
    <script src="js/bootstrap/bootstrap.min.js"></script>

    <!-- validation js -->
    <script src="js/jquery.validate.min.js"></script>

    <script>
    $.validator.setDefaults({
        submitHandler: function() {
            document.forgot_form.submit();
        }
    });

    $(function() {
        $("#forgot_form_id").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                email: {
                    required: "Please enter your email first!"
                }
            },
            errorElement: "em",
            errorPlacement: function(error, element) {
                error.css({
                    "font-style": "normal"
                });
                error.addClass("correct-email");
                error.insertAfter(element);
            }
        });
    });
    </script>

    <!--Custom Script-->
    <script src="js/script.js"></script>

</body>

</html>