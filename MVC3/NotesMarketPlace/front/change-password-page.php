<?php
include "db.php";
session_start();

if (!isset($_SESSION['email']))
    header('Location:log-in-page.php');

$email = $_SESSION['email'];
$query = mysqli_query($con, "SELECT * FROM users WHERE emailid='$email'");
while ($row = mysqli_fetch_array($query)) {
    $password = $row['password'];
    $userid = $row['userid'];
}

if (isset($_POST['submit'])) {
    $old_pass = $_POST['old_pass'];
    $new_pass = $_POST['new_pass'];
    $confirm_pass = $_POST['confirm_pass'];

    if ($password == $old_pass) {
        $update_pass = mysqli_query($con, "UPDATE users SET password='$new_pass',modifieddate=NOW(),modifiedby=$userid WHERE userid=$userid");
        echo '<script>alert("Your password has been changed sucessfully!\nyou will be logged out and redirect to login page")</script>';
        echo '<script>window.location.replace("logout.php")</script>';
    } else
        echo "<script>$('#wrong_old_psd_displayer').show()</script>";
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
                    <div class="col-lg-4 col-md-3 col-sm-2 col-1"></div>
                    <div id="logo" class="col-lg-4 col-md-6 col-sm-8 col-10 text-center">
                        <img src="images/top-logo.png" alt="White-logo" title="Website White Logo" class="img-fluid">
                    </div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-1"></div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-0"></div>
                    <div class="col-lg-4 col-md-6 col-sm-8 col-12">

                        <!--change password form -->
                        <div id="log-in">

                            <!--Form-->
                            <form method="POST" id="change_password_form_id" name="change_password_form">
                                <h2 class="text-center">
                                    Change Password
                                </h2>
                                <p class="text-center">
                                    Enter your new password to change your password
                                </p>
                                <div class="form-group">

                                    <!-- hidden input field for user password -->
                                    <input type="hidden" value="<?php echo $password ?>" id="current_user_psd">

                                    <!-- Old password -->
                                    <label class="change-psd-label">Old password</label>
                                    <div class="reset-passowrd-eye pull-right">
                                        <img src="images/eye.png" toggle="#old-password" class="toggle-password"
                                            alt="View"> &nbsp;
                                    </div>
                                    <input type="password" name="old_pass" class="form-control" id="old-password"
                                        placeholder="Enter your old password" onkeyup="showData()">
                                    <div class="correct-email" id="wrong_old_psd_displayer">
                                        Your old password isn't correct!
                                    </div>
                                </div>

                                <!-- New password -->
                                <div class="form-group">
                                    <label class="change-psd-label">New password</label>
                                    <div class="reset-passowrd-eye pull-right">
                                        <img src="images/eye.png" toggle="#new-password" class="toggle-password"
                                            alt="View"> &nbsp;
                                    </div> <input type="password" name="new_pass" class="form-control" id="new-password"
                                        placeholder="Enter your new password">
                                </div>

                                <!-- Confirm password -->
                                <div class="form-group">
                                    <label class="change-psd-label">Confirm password</label>
                                    <div class="reset-passowrd-eye pull-right">
                                        <img src="images/eye.png" toggle="#confirm-password" class="toggle-password"
                                            alt="View"> &nbsp;
                                    </div> <input type="password" name="confirm_pass" class="form-control"
                                        id="confirm-password" placeholder="Enter your confirm password">
                                </div>

                                <!-- submit button -->
                                <div class="general-btn">
                                    <button id="reset-passowrd-btn" type="submit" name="submit"
                                        class="btn btn-primary btn-block">submit</button>
                                </div>

                            </form>
                        </div>
                        <!--change password form ends-->

                    </div>
                    <div class="col-lg-4 col-md-3 col-sm-2 col-0"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Ajax call -->
    <div id="showData"></div>

    <!--jquery js-->
    <script src="js/jquery/jquery.min.js"></script>

    <!--bootstrap js-->
    <script src="js/bootstrap/bootstrap.min.js"></script>

    <!-- validation js -->
    <script src="js/jquery.validate.min.js"></script>

    <!--Custom Script-->
    <script src="js/script.js"></script>
    <script>
    function showData() {
        $.ajax({
            url: "ajax/change-password-ajax.php",
            method: "GET",
            data: {
                old_pass: $("#old-password").val(),
                new_pass: $("#new-password").val(),
                confirm_pass: $("#confirm-password").val(),
                current_user_psd: $("#current_user_psd").val()
            },
            success: function(data) {
                $("#showData").html(data);
            }
        });
    }

    //submit form
    $.validator.setDefaults({
        submitHandler: function() {
            document.change_password_form.submit();
        }
    });

    $(function() {
        showData();
        $("#wrong_old_psd_displayer").hide();

        //validation js
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
        $("#change_password_form_id").validate({
            rules: {
                old_pass: {
                    required: true
                },
                new_pass: {
                    required: true,
                    hasUppercase: true,
                    hasLowercase: true,
                    hasNumber: true,
                    minlength: 6,
                },
                confirm_pass: {
                    required: true,
                    minlength: 6,
                    equalTo: "#new-password"
                },
            },
            messages: {
                old_pass: "Please enter your current password!",
                new_pass: {
                    required: "Please enter your new password!",
                    minlength: "The Password Length Should be more then 6 characters"
                },
                confirm_pass: {
                    required: "Please enter your confirm password!",
                    minlength: "The Password Length Should be more then 6 characters",
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

</body>

</html>