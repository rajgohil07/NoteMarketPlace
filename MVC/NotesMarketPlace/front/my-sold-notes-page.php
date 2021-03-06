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
        <div id="my-downloads-heading">
            <div class="dashboard-in-progress-notes">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 column-padding-remover">
                            <h3 class="blue-font-24 dashboard-title">My Sold Notes</h3>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover">
                            <div class="dashboard-search-jointer dashboard-title">
                                <input type="text" class="form-control dashboard-search-icon search-icon"
                                    placeholder="&#xf002; Search">
                                <button
                                    class="btn btn-primary blue-button-hover-white dashboard-title-r">search</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Table -->
        <div class="container">
            <div class="row">
                <div class="col-md-12 column-padding-remover">
                    <div class="table-responsive">
                        <table class="table entire-table table-small column-padding-remover">
                            <tr class="table-heading">
                                <th>SR no.</th>
                                <th>note title</th>
                                <th>category</th>
                                <th>buyer</th>
                                <th>sell type</th>
                                <th>price</th>
                                <th>downloaded data/time</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>data science</td>
                                <td>science</td>
                                <td>testing123@gmail.com</td>
                                <td>paid</td>
                                <td>&#36;250</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>accounts</td>
                                <td>commerce</td>
                                <td>testing123@gmail.com</td>
                                <td>free</td>
                                <td>&#36;0</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>social studies</td>
                                <td>social</td>
                                <td>testing123@gmail.com</td>
                                <td>free</td>
                                <td>&#36;0</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>AI</td>
                                <td>IT</td>
                                <td>testing123@gmail.com</td>
                                <td>Paid</td>
                                <td>&#36;158</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Lorem, ipsum.</td>
                                <td>lorem</td>
                                <td>testing123@gmail.com</td>
                                <td>free</td>
                                <td>&#36;0</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>data science</td>
                                <td>science</td>
                                <td>testing123@gmail.com</td>
                                <td>paid</td>
                                <td>&#36;250</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>accounts</td>
                                <td>commerce</td>
                                <td>testing123@gmail.com</td>
                                <td>free</td>
                                <td>&#36;0</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>social studies</td>
                                <td>social</td>
                                <td>testing123@gmail.com</td>
                                <td>free</td>
                                <td>&#36;0</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>AI</td>
                                <td>IT</td>
                                <td>testing123@gmail.com</td>
                                <td>Paid</td>
                                <td>&#36;158</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Lorem, ipsum.</td>
                                <td>lorem</td>
                                <td>testing123@gmail.com</td>
                                <td>free</td>
                                <td>&#36;0</td>
                                <td>27 nov 2020,11:24:34</td>
                                <td>
                                    <div class="table-pic-combiner">
                                        <img src="images/eye.png" class="table-first-img" alt="View">
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Table end-->

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