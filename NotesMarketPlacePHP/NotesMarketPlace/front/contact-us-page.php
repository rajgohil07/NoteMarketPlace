<?php

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

$mail_sent = false;
if (isset($_POST['submit']) && $_POST['sender_email'] != "") {
    if (filter_var($_POST['sender_email'], FILTER_VALIDATE_EMAIL)) {
        $name = $_POST['name'];
        $sender_email = $_POST['sender_email'];
        $subject = $_POST['subject'];
        $comment = $_POST['comment'];


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
            $mail->setFrom($sender_email, $name);

            $mail->addAddress('raj69gohil@gmail.com', 'NotesMarketPlace');
            $mail->addReplyTo($sender_email, $name);

            $mail->IsHTML(true);
            $mail->Subject = "$subject";
            $mail->Body = "Sender Name: <b>$name</b><br><br>Sender Email: <b>$sender_email</b><br><br>
                           Comment: <b>$comment</b>";
            $mail->AltBody = '';
            $mail->send();
            $mail_sent = true;
        } catch (Exception $e) {
            echo "Error in sending email. Mailer Error: {$mail->ErrorInfo}";
        }
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

<body class="sticky-header">

    <!--header -->
    <?php include "header.php" ?>
    <!--header end-->

    <div id="search-all-font">
        <div id="search-top-img">
            <img src="images/banner-with-overlay-user-profile.jpg" alt="Banner image" class="img-fluid">
            <div id="search-home-heading" class="text-center">
                <h3 class="heading-margin">Contact Us</h3>
            </div>
        </div>
        <div id="contact-us-heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="email-sucess blue-font-34 text-center">
                            <?php
                            if ($mail_sent) {
                                echo "Your Feedback is Submitted";
                            }
                            ?>
                        </div>
                        <h4 class="blue-font-34 contact-us-heading-res">Get in Touch</h4>
                        <p id="contact-us-let-us" class="dark-font-18">Let us know how to get back to you</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contact us form -->
        <div id="contact-us-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="contact-us-page.php" method="POST">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label id="contact-us-first-label-form">Full Name *</label>
                                    <input type="text" name="name" class="form-control input-light-color"
                                        placeholder="Enter your full Name">
                                    <label class>Email Address *</label>
                                    <input type="mail" name="sender_email" class="form-control input-light-color"
                                        placeholder="Enter your email address">
                                    <label>Subject *</label>
                                    <input type="text" name="subject" class="form-control input-light-color"
                                        placeholder="Enter your subject Name">
                                </div>
                                <div class="form-group col-md-6">
                                    <label id="contact-us-comment" class="right-content">Comments / Questions *</label>
                                    <textarea id="contact-us-comment-box" name="comment"
                                        class="form-control right-content contact-us-res input-light-color"
                                        placeholder="Comments...."></textarea>
                                </div>
                            </div>
                            <div id="contact-us-btn">
                                <button type="submit" name="submit"
                                    class="btn btn-primary blue-button-hover-white">submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact us form end-->

        <!--footer-->
        <?php include "footer.php"; ?>
        <!--footer end-->
    </div>


    <!--popper js-->
    <script src="js/popper/popper.min.js"></script>

    <!--jquery js-->
    <script src="js/jquery/jquery.min.js"></script>

    <!--bootstrap js-->
    <script src="js/bootstrap/bootstrap.min.js"></script>

    <!--Custom Script-->
    <script src="js/script.js"></script>

</body>

</html>