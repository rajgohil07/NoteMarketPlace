<!DOCTYPE html>
<html lang="en">

<head>

    <!--Meta tags-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0 ,user-scalable=no">
    <meta charset="UTF-8">

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

    <div class="above-footer">



        <!--header -->
        <?php include "header.php" ?>
        <!--header end-->

        <div id="user-profile">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="blue-font-34 heading-margin margin-b-15">My Profile</h4>
                    </div>
                    <div class="form-group col-md-6">
                        <label id="contact-us-first-label-form">First Name *</label>
                        <input type="text" class="form-control input-light-color" placeholder="Enter your first Name">
                        <label class>Last Name *</label>
                        <input type="text" class="form-control input-light-color" placeholder="Enter your last Name">
                        <label>Email *</label>
                        <input type="email" class="form-control input-light-color"
                            placeholder="Enter your email address">
                        <label>Secondary Email</label>
                        <input type="email" class="form-control input-light-color"
                            placeholder="Enter your email address">
                        <label class="right-content">Phone Number</label>
                        <div class="form-row">
                            <div class="col-4">
                                <select class="form-control options-arrow-down input-light-color right-content">
                                    <option>+91</option>
                                    <option>+61</option>
                                    <option>+43</option>
                                    <option>+880</option>
                                    <option>+92</option>
                                    <option>+81</option>
                                </select>
                            </div>
                            <div class="col">
                                <input type="tel" class="form-control right-content"
                                    placeholder="Enter your phone number">
                            </div>
                        </div>
                        <label>Profile Picture</label>
                        <div class="user-profile-photo-uploader">
                            <label for="image-uploader"><img src="images/upload-file.png"
                                    title="Click here to upload your photo" alt="Upload your photo here"></label>
                            <input id="image-uploader" class="form-control input-light-color" type="file">
                        </div>
                    </div>
                    <div class="col-md-6"></div>
                    <div class="col-md-12">
                        <button id="my-profile-btn" type="submit"
                            class="btn btn-primary blue-button-hover-white margin-top-15">submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--footer-->
    <?php include "footer.php"; ?>
    <!--footer end-->




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