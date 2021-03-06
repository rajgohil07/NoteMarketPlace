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

        <div class="dashboard-in-progress-notes">
            <div class="container heading-margin">
                <div class="row">
                    <div class="col-md-12 column-padding-remover">
                        <h3 class="blue-font-30 margin-b-10 margin-l">Notes Under Review</h3>
                        <h3 class="dark-font-16 margin-l">Seller</h3>
                    </div>
                    <div class="col-md-6 column-padding-remover">
                        <select id="notes-seller-picker"
                            class="form-control margin-l text-hidden under-review-res options-arrow-down input-light-color">
                            <option selected disabled>Select Seller</option>
                            <option>Khyati</option>
                            <option>Raj</option>
                            <option>Rahul</option>
                            <option>Mahek</option>
                            <option>Suresh</option>
                            <option>Jane </option>
                            <option>Ram</option>
                            <option>Mayur </option>
                            <option>Parth</option>
                            <option>Monil </option>
                            <option>Aman</option>
                            <option>Yash</option>
                        </select>
                    </div>
                    <div class="col-md-2"></div>
                    <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover ">
                        <div class="dashboard-search-jointer">
                            <input type="text" class="form-control margin-l dashboard-search-icon search-icon"
                                placeholder="&#xf002; Search">
                            <button class="btn btn-primary margin-r blue-button-hover-white">search</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="dashboard-table-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 column-padding-remover">
                        <div class="table-responsive">
                            <table class="table entire-table text-center table-small notes-review-t">
                                <tr class="table-heading">
                                    <th>sr no.</th>
                                    <th>note title</th>
                                    <th>category</th>
                                    <th>seller</th>
                                    <th>date added</th>
                                    <th>status</th>
                                    <th class="text-center">action</th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Software engineer</td>
                                    <td>IT</td>
                                    <td>khyati patel <a href=""><img src="images/eye.png" alt="View"></a></td>
                                    <td>09-10-2020, 10:10</td>
                                    <td>InReview</td>
                                    <td><button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                        <button class="btn btn-light inreview-btn">InReview</button>
                                    </td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Notes</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Remove Seller</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Computer basic</td>
                                    <td>Computer</td>
                                    <td>khyati patel <a href=""><img src="images/eye.png" alt="View"></a></td>
                                    <td>19-12-2020, 10:10</td>
                                    <td>InReview</td>
                                    <td><button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                        <button class="btn btn-light inreview-btn">InReview</button>
                                    </td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Notes</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Remove Seller</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>HUman Body</td>
                                    <td>science</td>
                                    <td>khyati patel <a href=""><img src="images/eye.png" alt="View"></a></td>
                                    <td>04-05-2020, 12:10</td>
                                    <td>InReview</td>
                                    <td><button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                        <button class="btn btn-light inreview-btn">InReview</button>
                                    </td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Notes</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Remove Seller</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>world war 2</td>
                                    <td>history</td>
                                    <td>khyati patel <a href=""><img src="images/eye.png" alt="View"></a></td>
                                    <td>31-01-2020, 11:11</td>
                                    <td>InReview</td>
                                    <td><button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                        <button class="btn btn-light inreview-btn">InReview</button>
                                    </td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Notes</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Remove Seller</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Accounting</td>
                                    <td>account</td>
                                    <td>khyati patel <a href=""><img src="images/eye.png" alt="View"></a></td>
                                    <td>26-03-2020, 07:30</td>
                                    <td>InReview</td>
                                    <td><button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                        <button class="btn btn-light inreview-btn">InReview</button>
                                    </td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Notes</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Remove Seller</h6>
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