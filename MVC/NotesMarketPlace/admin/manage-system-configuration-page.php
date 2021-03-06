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
                        <h4 class="blue-font-34 heading-margin margin-b-10">Manage System Configuration</h4>
                    </div>
                    <div class="form-group col-md-6">
                        <label id="contact-us-first-label-form">Support email address *</label>
                        <input type="email" class="form-control input-light-color" placeholder="Enter email address">
                        <label class>Support phone number *</label>
                        <input type="number" class="form-control input-light-color" placeholder="Enter phone number">
                        <label>Email Address(es) (for various events system will send notifications to these
                            users) *</label>
                        <input type="email" class="form-control input-light-color" placeholder="Enter email address">
                        <label>Facebook URL</label>
                        <input type="text" class="form-control input-light-color" placeholder="Enter facebook URL">
                        <label>Twitter URL</label>
                        <input type="text" class="form-control input-light-color" placeholder="Enter twitter URL">
                        <label>LinkedIn URL</label>
                        <input type="text" class="form-control input-light-color" placeholder="Enter LinkedIn URL">
                        <label> Default image for notes (if seller do not upload)</label>
                        <div class="user-profile-photo-uploader">
                            <label><img src="images/upload-file.png" title="Click here to upload your photo"
                                    alt="Upload your photo here"></label>
                            <input class="form-control input-light-color" type="file">
                        </div>
                        <label>Default Profile picture (if seller do not upload)</label>
                        <div class="user-profile-photo-uploader">
                            <label><img src="images/upload-file.png" title="Click here to upload your photo"
                                    alt="Upload your photo here"></label>
                            <input class="form-control input-light-color" type="file">
                        </div>
                    </div>
                    <div class="col-md-6"></div>
                    <div class="col-md-12">
                        <button type="submit" id="my-profile-btn"
                            class="btn btn-primary blue-button-hover-white margin-top-15 margin-b-30">submit</button>
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