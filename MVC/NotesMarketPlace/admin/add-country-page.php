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
        <header class="site-header">
            <div class="container column-padding-remover">
                <div class="header-wrapper">
                    <div class="logo-wrapper">
                        <a class="navbar-brand" href="#"><img src="images/blue-logo.png" alt="logo"></a>
                        <!--Mobile Open Button-->
                        <span id="mobile-nav-open-btn">&#9776;</span>
                    </div>
                    <div class="navigation-wrapper">
                        <nav class="main-nav navbar navbar-expand-md">
                            <div class="collapse navbar-collapse">
                                <ul class="menu-navigation">
                                    <li><a href="dashboard-page.html">Dashboard</a></li>
                                    <li class="dropdown">
                                        <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Notes
                                        </a>
                                        <div class="dropdown-menu shadow-drop dropdowncustom"
                                            aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="notes-under-preview-page.html">
                                                <h6>Notes Under Review</h6>
                                            </a>
                                            <a class="dropdown-item" href="published-notes-page.html">
                                                <h6>Published Notes</h6>
                                            </a>
                                            <a class="dropdown-item" href="downloaded-notes-page.html">
                                                <h6>Downloaded Notes</h6>
                                            </a>
                                            <a class="dropdown-item" href="rejected-notes-page.html">
                                                <h6>Rejected Notes</h6>
                                            </a>
                                        </div>
                                    </li>
                                    <li><a href="member-details-page.html">Members</a></li>
                                    <li class="dropdown">
                                        <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Reports
                                        </a>
                                        <div class="dropdown-menu shadow-drop dropdowncustom"
                                            aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="spam-report-page.html">
                                                <h5>Spam Reports</h5>
                                            </a>
                                        </div>
                                    </li>
                                    <li><a href="my-profile-page.html">Settings</a></li>
                                    <li class="dropdown">
                                        <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <img src="images/user-img.png" alt="user" class="img-fluid">
                                        </a>
                                        <div class="dropdown-menu shadow-drop dropdowncustom"
                                            aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="my-profile-page.html">
                                                <h6>Update Profile</h6>
                                            </a>
                                            <a class="dropdown-item" href="#">
                                                <h6>Change Password</h6>
                                            </a>
                                            <a class="dropdown-item" href="log-in-page.html">
                                                <h5>LOGOUT</h5>
                                            </a>
                                        </div>
                                    </li>
                                    <li><a href="log-in-page.html">
                                            <button type="button"
                                                class="btn btn-purple btn-outline-primary">Logout</button>
                                        </a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>

                    <!--for Mobile Menu-->
                    <div id="mobile-nav">
                        <!--Mobile Close Button-->
                        <span id="mobile-nav-close-btn">&times;</span>
                        <div id="mobile-nav-content">
                            <ul class="menu-navigation">
                                <li><a href="dashboard-page.html">Dashboard</a></li>
                                <li class="dropdown">
                                    <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Notes
                                    </a>
                                    <div class="dropdown-menu shadow-drop dropdowncustom"
                                        aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="notes-under-preview-page.html">
                                            <h6>Notes Under Review</h6>
                                        </a>
                                        <a class="dropdown-item" href="published-notes-page.html">
                                            <h6>Published Notes</h6>
                                        </a>
                                        <a class="dropdown-item" href="downloaded-notes-page.html">
                                            <h6>Downloaded Notes</h6>
                                        </a>
                                        <a class="dropdown-item" href="rejected-notes-page.html">
                                            <h6>Rejected Notes</h6>
                                        </a>
                                    </div>
                                </li>
                                <li><a href="member-details-page.html">Members</a></li>
                                <li class="dropdown">
                                    <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Reports
                                    </a>
                                    <div class="dropdown-menu shadow-drop dropdowncustom"
                                        aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="spam-report-page.html">
                                            <h5>Spam Reports</h5>
                                        </a>
                                    </div>
                                </li>
                                <li><a href="my-profile-page.html">Settings</a></li>
                                <li class="dropdown">
                                    <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        <img src="images/user-img.png" alt="user" class="img-fluid">
                                    </a>
                                    <div class="dropdown-menu shadow-drop dropdowncustom"
                                        aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="my-profile-page.html">
                                            <h6>Update Profile</h6>
                                        </a>
                                        <a class="dropdown-item" href="my-profile-page.html">
                                            <h6>Change Password</h6>
                                        </a>
                                        <a class="dropdown-item" href="log-in-page.html">
                                            <h5>LOGOUT</h5>
                                        </a>
                                    </div>
                                </li>
                                <li><a href="log-in-page.html">
                                        <button type="button" class="btn btn-purple btn-outline-primary">Logout</button>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--header end-->

        <div id="user-profile">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="blue-font-30 heading-margin margin-b-15">Add Country</h4>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Country Name *</label>
                        <input type="text" class="form-control input-light-color" placeholder="Enter country name">
                        <label>Country Code *</label>
                        <input type="number" class="form-control input-light-color" placeholder="Enter country code">
                    </div>
                    <div class="col-md-12">
                        <button id="my-profile-btn"
                            class="btn btn-primary blue-button-hover-white margin-top-15 margin-b-40">submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer-->
    <footer>
        <div id="footer">
            <hr>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-1 col-sm-0 col-0">
                    </div>
                    <div class="col-md-5 col-sm-4 col-12">
                        <h4 id="footer-ver-info" class="dark-font-14">Version : 1.1.24</h4>
                    </div>
                    <div class="col-md-6 col-sm-8 col-12">
                        <h3>Copyright &#169; <a href="https://www.tatvasoft.com/"
                                title="TatvaSoft-click here for more info">TatvaSoft </a> All rights reserved.
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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