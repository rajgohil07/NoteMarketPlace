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

        <div class="container column-padding-remover">
            <div class="row padding-b-30 member-bottom-border">
                <div class="col-md-12 col-12 member-name">
                    <h3 class="blue-font-34 heading-margin margin-b-15 margin-l">Member Details</h3>
                </div>
                <div id="member-photo" class="col-md-3 col-lg-2 col-12">
                    <img src="images/member.png" class="img-fluid" alt="Member Photo">
                </div>
                <div class="col-md-9 col-lg-5 col-sm-12 member-deatils-spacer-res">
                    <div class="row">
                        <div class="col-md-5 col-lg-5 col-sm-6 col-6 space-remover-1">
                            <h4 class="member-dark-font">First Name:</h4>
                            <h4 class="member-dark-font">Last Name:</h4>
                            <h4 class="member-dark-font">Email:</h4>
                            <h4 class="member-dark-font">DOB:</h4>
                            <h4 class="member-dark-font">Phone Number:</h4>
                            <h4 class="member-dark-font">College/University:</h4>
                        </div>
                        <div class="col-md-7 col-lg-7 col-sm-6 col-6 space-remover-2">
                            <div id="member-center-border">
                                <h4 class="member-blue-font">Richard</h4>
                                <h4 class="member-blue-font">Brown</h4>
                                <h4 class="member-blue-font">richard77@gmail.com</h4>
                                <h4 class="member-blue-font">13-08-1990</h4>
                                <h4 class="member-blue-font">9876544916</h4>
                                <h4 class="member-blue-font">University of California</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 col-lg-4 col-12 member-deatils-spacer-res-2">
                    <div class="row">
                        <div class="col-md-5 col-lg-5 col-sm-6 col-6 space-remover-1">
                            <h4 class="member-dark-font">Address 1:</h4>
                            <h4 class="member-dark-font">Address 2:</h4>
                            <h4 class="member-dark-font">City:</h4>
                            <h4 class="member-dark-font">State:</h4>
                            <h4 class="member-dark-font">Country:</h4>
                            <h4 class="member-dark-font">Zip Code:</h4>
                        </div>
                        <div class="col-md-7 col-lg-7 col-sm-6 col-6 space-remover-2">
                            <h4 class="member-blue-font">144-Diamond Height</h4>
                            <h4 class="member-blue-font">Star Colony</h4>
                            <h4 class="member-blue-font">New York</h4>
                            <h4 class="member-blue-font">New York State</h4>
                            <h4 class="member-blue-font">United State</h4>
                            <h4 class="member-blue-font">11004-05</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>

        <!--Table start here-->
        <div class="container">
            <div class="row">
                <div class="col-md-12 column-padding-remover">
                    <h4 class="blue-font-24 margin-top-40 margin-l">Notes</h4>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12 column-padding-remover margin-top-15">
                    <div class="table-responsive">
                        <table class="table entire-table text-center table-large member-d-t">
                            <tr class="table-heading">
                                <th>sr no.</th>
                                <th>note title</th>
                                <th>category</th>
                                <th>status</th>
                                <th>downloaded notes</th>
                                <th>total earnings</th>
                                <th>date added</th>
                                <th>published data</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>software development</td>
                                <td>it</td>
                                <td>pubhlished</td>
                                <td>22</td>
                                <td>&#36;177</td>
                                <td>09-10-2020, 10:10</td>
                                <td>09-10-2020, 10:10</td>
                                <td>
                                    <div class="dropdown dropleft">
                                        <a class="btn" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="images/dots.png" alt="open menu">
                                        </a>
                                        <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                            <li><a href="#">
                                                    <h6 class="dropdown-first-option">Download Notes</h6>
                                                </a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>computer basic</td>
                                <td>computer</td>
                                <td>published</td>
                                <td>4</td>
                                <td>&#36;125</td>
                                <td>03-10-2020, 10:10</td>
                                <td>03-10-2020, 10:10</td>
                                <td>
                                    <div class="dropdown dropleft">
                                        <a class="btn" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="images/dots.png" alt="open menu">
                                        </a>
                                        <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                            <li><a href="#">
                                                    <h6 class="dropdown-first-option">Download Notes</h6>
                                                </a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>human body</td>
                                <td>science</td>
                                <td>inReview</td>
                                <td>17</td>
                                <td>&#36;276</td>
                                <td>11-10-2020, 10:10</td>
                                <td>11-10-2020, 10:10</td>
                                <td>
                                    <div class="dropdown dropleft">
                                        <a class="btn" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="images/dots.png" alt="open menu">
                                        </a>
                                        <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                            <li><a href="#">
                                                    <h6 class="dropdown-first-option">Download Notes</h6>
                                                </a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>world war 2 </td>
                                <td>history</td>
                                <td>published</td>
                                <td>42</td>
                                <td>&#36;25</td>
                                <td>13-10-2020, 10:10</td>
                                <td>13-10-2020, 10:10</td>
                                <td>
                                    <div class="dropdown dropleft">
                                        <a class="btn" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="images/dots.png" alt="open menu">
                                        </a>
                                        <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                            <li><a href="#">
                                                    <h6 class="dropdown-first-option">Download Notes</h6>
                                                </a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>accounting</td>
                                <td>account</td>
                                <td>published</td>
                                <td>48</td>
                                <td>&#36;38</td>
                                <td>01-10-2020, 10:10</td>
                                <td>01-10-2020, 10:10</td>
                                <td>
                                    <div class="dropdown dropleft">
                                        <a class="btn" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="images/dots.png" alt="open menu">
                                        </a>
                                        <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                            <li><a href="#">
                                                    <h6 class="dropdown-first-option">Download Notes</h6>
                                                </a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- pagination -->
        <div class="search-pagination">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">❮</a>
                </li>
                <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                <li class="page-item aria-current=" page"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">❯</a></li>
            </ul>
        </div>
        <!-- pagination end -->
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