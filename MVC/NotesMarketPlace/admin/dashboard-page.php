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

        <div id="dashboard-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 column-padding-remover">
                        <h3 class="blue-font-34 margin-l">Dashboard</h3>
                    </div>
                </div>
            </div>
        </div>

        <div id="dashboard-statistics">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 column-padding-remover text-center">
                        <div class="row">
                            <div class="col-md-4 dashboard-right-statistics">
                                <div class="dashboard-right-statistics-inner margin-dash-l-r margin-l margin-r">
                                    <h3 class="blue-font-30">20</h3>
                                    <h3 class="dark-font-18">Number of Notes in Review for Publish</h3>
                                </div>
                            </div>
                            <div class="col-md-4 dashboard-right-statistics">
                                <div class="dashboard-right-statistics-inner margin-dash-l-r margin-l margin-r">
                                    <h3 class="blue-font-30">103</h3>
                                    <h3 class="dark-font-18 margin-b-0"> Number of New Notes Download</h3>
                                    <h3 class="dark-font-18">(last 7 days)</h3>
                                </div>
                            </div>
                            <div class="col-md-4 dashboard-right-statistics">
                                <div class="dashboard-right-statistics-inner margin-dash-l-r margin-r margin-l">
                                    <h3 class="blue-font-30">223</h3>
                                    <h3 class="dark-font-18 margin-b-0">Numbers of New Registrations</h3>
                                    <h3 class="dark-font-18">(last 7 days)</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="dashboard-in-progress-notes">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 column-padding-remover">
                        <h3 class="blue-font-24 margin-l dashboard-pub">Published Notes</h3>
                    </div>
                    <div id="dashboard-search-btn-2" class="col-md-6 column-padding-remover">
                        <div class="dashboard-search-jointer">
                            <input type="text" class="form-control margin-l dashboard-search-icon search-icon"
                                placeholder="&#xf002; Search">
                            <button class="btn btn-primary blue-button-hover-white">search</button>
                            <select id="dashboard-month"
                                class="form-control margin-r text-hidden options-arrow-down input-light-color">
                                <option selected disabled>Select Month</option>
                                <option>January</option>
                                <option>February</option>
                                <option>March</option>
                                <option>April</option>
                                <option>May</option>
                                <option>June </option>
                                <option>July</option>
                                <option>August </option>
                                <option>September</option>
                                <option>October </option>
                                <option>November</option>
                                <option>December</option>
                            </select>
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
                            <table class="table text-center table-medium entire-table dashboard-t">
                                <tr class="table-heading">
                                    <th> sr no. </th>
                                    <th>title </th>
                                    <th>category</th>
                                    <th>attachment size</th>
                                    <th>sell type</th>
                                    <th>price</th>
                                    <th>publisher</th>
                                    <th>Published date</th>
                                    <th>Number of downlods</th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Data Science</td>
                                    <td>Science</td>
                                    <td>10KB</td>
                                    <td>free</td>
                                    <td>&#36;0</td>
                                    <td>pritesh panchal</td>
                                    <td>09-10-2020, 10:10</td>
                                    <td>10</td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Unpublish</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>acoounts</td>
                                    <td>commerce</td>
                                    <td>23MB</td>
                                    <td>paid</td>
                                    <td>&#36;22</td>
                                    <td>rahil shah </td>
                                    <td>10-10-2020, 11:10</td>
                                    <td>21</td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Unpublish</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>social studies</td>
                                    <td>social</td>
                                    <td>3MB</td>
                                    <td>paid</td>
                                    <td>&#36;56</td>
                                    <td>anish patel </td>
                                    <td>11-10-2020, 11:11</td>
                                    <td>13</td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Unpublish</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>AI</td>
                                    <td>IT</td>
                                    <td>1MB</td>
                                    <td>free</td>
                                    <td>&#36;0</td>
                                    <td>vijay vaishnav</td>
                                    <td>12-11-2020, 12:10</td>
                                    <td>34</td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Unpublish</h6>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Data Science</td>
                                    <td>Lorem</td>
                                    <td>500KB</td>
                                    <td>paid</td>
                                    <td>&#36;3</td>
                                    <td>pritesh panchal</td>
                                    <td>23-11-2020, 06:10</td>
                                    <td>7</td>
                                    <td>
                                        <div class="dropdown dropleft">
                                            <a class="btn" href="#" role="button" id="dropdownMenuLink"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <img src="images/dots.png" alt="open menu">
                                            </a>
                                            <ul class="dropdown-menu shadow-drop dropdowncustom-width dropdowncustom">
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Download Note</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">View More Details</h6>
                                                    </a></li>
                                                <li><a href="#">
                                                        <h6 class="dropdown-first-option">Unpublish</h6>
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