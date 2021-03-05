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

    <div id="user-profile">
        <div id="search-top-img">
            <img src="images/banner-with-overlay-user-profile.jpg" alt="Banner image" class="img-fluid">
            <div id="search-home-heading" class="text-center">
                <h3 class="heading-margin">User Profile</h3>
            </div>
        </div>
        <div id="form-heading-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        basic profile details
                    </div>
                </div>
            </div>
        </div>
        <!--Form-1-->
        <form>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>First Name *</label>
                                <input type="text" class="form-control input-light-color"
                                    placeholder="Enter your first name">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">Last Name *</label>
                                <input type="text" class="form-control input-light-color right-content"
                                    placeholder="Enter your last anme">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Email *</label>
                                <input type="email" class="form-control input-light-color"
                                    placeholder="Enter your email address">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">Date Of Birth</label>
                                <input type="date" class="form-control input-light-color right-content">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label>Gender</label>
                                    <select class="form-control options-arrow-down input-light-color">
                                        <option selected disabled>Select your gender</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">Phone Number</label>
                                <div class="form-row">
                                    <div class="col-4">
                                        <select class="form-control input-light-color options-arrow-down right-content">
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
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Profile Picture</label>
                                <div class="user-profile-photo-uploader">
                                    <label for="image-uploader"><img src="images/upload-file.png"
                                            title="Click here to upload your photo"
                                            alt="Upload your photo here"></label>
                                    <input id="image-uploader" class="form-control input-light-color" type="file">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--Address part-->
        <div id="form-heading-2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        Address details
                    </div>
                </div>
            </div>
        </div>
        <!--Form-2-->
        <form>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Address Line 1 *</label>
                                <input type="text" class="form-control input-light-color"
                                    placeholder="Enter your address">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">Address Line 2</label>
                                <input type="text" class="form-control input-light-color right-content"
                                    placeholder="Enter your address">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>City *</label>
                                <input type="text" class="form-control input-light-color" placeholder="Enter your city">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">State *</label>
                                <input type="text" class="form-control input-light-color right-content"
                                    placeholder="Enter your state">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>ZipCode *</label>
                                <input type="number" class="form-control input-light-color"
                                    placeholder="Enter your zipcode">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">Country *</label>
                                <select class="form-control input-light-color options-arrow-down right-content">
                                    <option selected disabled>Select your country</option>
                                    <option>India</option>
                                    <option>Japan</option>
                                    <option>USA</option>
                                    <option>China</option>
                                    <option>Canada</option>
                                    <option>Australia</option>
                                    <option>Pakistan</option>
                                    <option>Tajikistan</option>
                                    <option>Taiwan</option>
                                    <option>Switzerland</option>
                                    <option>Sri Lanka</option>
                                    <option>North Korea</option>
                                    <option>South Korea</option>
                                    <option>Philippines</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--University infomation-->
        <div id="form-heading-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        university and college infomation
                    </div>
                </div>
            </div>
        </div>
        <!--Form-3-->
        <form>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>University</label>
                                <input type="text" class="form-control input-light-color"
                                    placeholder="Enter your university">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="right-content">College</label>
                                <input type="text" class="form-control input-light-color right-content"
                                    placeholder="Enter your college">
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" id="user-profile-submit-btn" class="btn btn-primary">Submit</button>
            </div>
        </form>

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