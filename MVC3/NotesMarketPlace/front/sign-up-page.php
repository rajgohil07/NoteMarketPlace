<?php
include "db.php";

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

//booleans to display mail error
$mail_sent = false;
$mail_exist = false;

if (isset($_POST['submit_form'])) {
    $firstName = $_POST['fname'];
    $lastName = $_POST['lname'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $conform_psd = $_POST['conform_psd'];

    $email_checker = mysqli_query($con, "SELECT * FROM users WHERE emailid='$email'");
    $email_count = mysqli_num_rows($email_checker);

    if ($email_count == 0) {

        $query = "INSERT INTO users(roleid,firstname,lastname,emailid,password,isemailverified,createddate,isactive) VALUES(1,'$firstName','$lastName','$email','$password',0,NOW(),1)";
        $result = mysqli_query($con, $query);

        //userid getter
        $id = mysqli_insert_id($con);
        $dynamic_url = "http://localhost" . dirname($_SERVER['PHP_SELF']) . "/email-checker.php?id=$id";

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

            $mail->addAddress($email, $firstName . $lastName);
            $mail->addReplyTo($config_email, 'NotesMarketPlace');

            $mail->IsHTML(true);
            $mail->Subject = "Email verification";
            $mail->AddEmbeddedImage('images/blue-logo.png', 'logo');

            $mail->Body = "<table>
            <tr>
                <td style='height: 75px;'><img src='cid:logo' alt='NMP-logo'></td>
            </tr>
            <tr>
                <td
                    style='color: #6255a5; font-size: 26px; font-weight: 600; line-height: 30px; height: 50px;'>
                    Email Verification</td>
            </tr>
            <tr>
                <td style='height: 30px; font-size: 18px; color: #333333;font-weight: 400;'>
                <php
                <b>Dear $firstName  $lastName,</b>
                </td>
            </tr>
            <tr>
                <td style='font-size: 16px;font-weight: 400; height: 25px; color: #333333;'>
                    Thanks for signing up</td>
            </tr>
            <tr>
                <td style='font-size: 16px;font-weight: 400; height: 25px; color: #333333;'>
                    Simply click below for email verification.</td>
            </tr>
            <tr>
                <td style='height: 50px;'><a href='$dynamic_url'><button
                style='width: 300px;background-color: #6255a5;height: 35px;border-radius: 3px;font-size: 18px; border:transparent;text-transform: uppercase;color: #fff;'>verify
                email address</button></a></td>
            </tr>
        </table>";

            $mail->AltBody = '';

            $mail->send();
            $mail_sent = true;
        } catch (Exception $e) {
            echo "Error in sending email. Mailer Error: {$mail->ErrorInfo}";
        }
    }
    if ($email_count > 0) {
        $mail_exist = true;
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
                    <div class="col-lg-4 col-md-3 col-sm-2 col-0"></div>
                    <div id="logo" class="col-lg-4 col-md-6 col-sm-8 col-12 text-center signup-logo">
                        <img src="images/top-logo.png" alt="White-logo" title="Website White Logo"
                            class="img-responsive">
                    </div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-0"></div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-0"></div>
                    <div class="col-lg-4 col-md-6 col-sm-8 col-12">
                        <!--Login form -->
                        <div id="log-in" class="signup-background">

                            <!-- form elements -->
                            <form id="signup_form" action="sign-up-page.php" name="signup_form_name" method="POST">
                                <h2 class="text-center heading-login">
                                    Create an Account
                                </h2>
                                <p id="sign-up-p" class="text-center">
                                    Enter your details to signup
                                </p>

                                <!-- account success message -->
                                <div id="account-success" class="text-center">
                                    <?php
                                    if ($mail_sent)
                                        echo "<span> Your account has been successfully created</span>";
                                    ?>
                                </div>

                                <!-- first name -->
                                <div class="form-group signup-form">
                                    <label>First Name</label>
                                    <input type="text" name="fname" class="form-control signup-input" id="fname-signup"
                                        placeholder="Enter your first name">
                                </div>

                                <!-- last name -->
                                <div class="form-group signup-form">
                                    <label>Last Name</label>
                                    <input type="text" name="lname" class="form-control signup-input" id="lname-signup"
                                        placeholder="Enter your last name">
                                </div>

                                <!-- emailid -->
                                <div class="form-group signup-form">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control signup-input" id="email-signup"
                                        placeholder="Enter your email address">
                                    <div class="correct-email">
                                        <?php
                                        echo ($mail_exist) ? "Email address already exists!" : "";
                                        ?>
                                    </div>
                                </div>

                                <!-- password -->
                                <div class="form-group signup-block signup-form">
                                    <label>Password</label>
                                    <img src="images/eye.png" toggle="#password-signup"
                                        class="pull-right toggle-password" alt="View">
                                    <input type="password" name="password" class="form-control signup-input"
                                        id="password-signup" placeholder="Enter your password">
                                </div>

                                <!-- Confirm password -->
                                <div class="form-group signup-block signup-form">
                                    <label>Confirm Password</label>
                                    <img src="images/eye.png" toggle="#re-password-signup"
                                        class="pull-right toggle-password" alt="View">
                                    <input type="password" name="conform_psd" class="form-control signup-input"
                                        id="re-password-signup" placeholder="Re-enter your password">
                                </div>

                                <!-- sign up -->
                                <div class="general-btn">
                                    <button id="signup-btn" name="submit_form" class="btn btn-primary btn-block">sign
                                        up</button>
                                </div>

                                <!-- email sent notice -->
                                <div class="text-center" id="sign-up">
                                    <?php
                                    if ($mail_sent) {
                                    } else
                                        echo " Already have an account?<a href='log-in-page.php' title='click to Sign up'>Login</a>";
                                    ?>

                                    <!-- thanks sign up message -->
                                    <div id="thanks-signup">
                                        <?php
                                        if ($mail_sent) {
                                            echo "<h3>Please verify the email via clicking on the link we sent you at <span>" . $email . "</span>.</h3>";
                                        }
                                        ?>
                                    </div>

                                </div>
                            </form>
                            <!-- form ends here -->

                        </div>
                    </div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-0"></div>
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

    <!-- validation additional method js -->
    <script src="js/additional-methods.min.js"></script>

    <script>
    $.validator.setDefaults({
        submitHandler: function() {
            document.signup_form_name.submit();
        }
    });

    $(function() {

        $.validator.addMethod("hasUppercase", function(value, element) {
            if (this.optional(element)) {
                return true;
            }
            return /[A-Z]/.test(value);
        }, "Must contain 1 uppercase charecter");

        $.validator.addMethod("hasLowercase", function(value, element) {
            if (this.optional(element)) {
                return true;
            }
            return /[a-z]/.test(value);
        }, "Must contain 1 lowercase charecter");

        $.validator.addMethod("hasNumber", function(value, element) {
            if (this.optional(element)) {
                return true;
            }
            return /[0-9]/.test(value);
        }, "Must contain 1 numeric charecter");

        $("#signup_form").validate({
            rules: {
                fname: {
                    required: true,
                    lettersonly: true,
                    minlength: 3,
                },
                lname: {
                    required: true,
                    lettersonly: true,
                    minlength: 3,
                },
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    hasUppercase: true,
                    hasLowercase: true,
                    hasNumber: true,
                    minlength: 6,
                },
                conform_psd: {
                    required: true,
                    minlength: 6,
                    equalTo: "#password-signup"
                }
            },
            messages: {
                fname: {
                    required: "First name is required!",
                    minlength: "First name greater then or equals to 3 charecters!",
                    lettersonly: "Only charecters Allowed!"
                },
                lname: {
                    required: "Last name is required!",
                    minlength: "Last name greater then or equals to 3 charecters!",
                    lettersonly: "Only charecters Allowed!"
                },
                email: "Please enter a valid email address",
                password: {
                    minlength: "The Password Length Should be more then 6 characters",
                    required: "Password is required field",
                },
                conform_psd: {
                    minlength: "The Password Length Should be more then 6 characters",
                    required: "Confirm Password is required field",
                    equalTo: "The Password and Confirm Password doesn't match!"
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
    })
    </script>

    <!--Custom Script-->
    <script src="js/script.js"></script>

</body>

</html>