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
        <div id="dashboard-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="blue-font-34 dashboard-title">Dashboard</h3>
                    </div>
                </div>
            </div>
        </div>

        <div id="dashboard-statistics">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-3 text-center dashboard-my-earnings">
                                <div class="dashboard-left-statistics-inner">
                                    <img src="images/my-earning.png" title="Detailed View of Earning" alt="My Earnings"
                                        class="img-fluid">
                                    <h4 style="font-size: 24px important;" class="blue-font-30 text-center">My Earning
                                    </h4>
                                </div>
                            </div>
                            <div class="col-md-4 dashboard-sold-note text-center">
                                <div class="dashboard-left-statistics-inner">
                                    <div class="dashboard-sold-note-inner">
                                        <h3 class="blue-font-30">100</h3>
                                        <h3 class="dark-font-18">Number of Notes Sold</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 text-center dashboard-earned-money">
                                <div id="dashboard-earned-money-inner">
                                    <h3 class="blue-font-30">&#36;10,00,000</h3>
                                    <h3 class="dark-font-18">Money Earned</h3>
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
                        <h3 class="blue-font-24 dashboard-title">In Progress Notes</h3>
                    </div>
                    <div class="col-md-2">
                    </div>
                    <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover">
                        <div class="dashboard-search-jointer dashboard-title">
                            <input type="text" class="form-control dashboard-search-icon search-icon"
                                placeholder="&#xf002; Search">
                            <button class="btn btn-primary blue-button-hover-white dashboard-title-r">search</button>
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
                            <table class="table entire-table table-small">
                                <tr class="table-heading">
                                    <th scope="col"> added date </th>
                                    <th scope="col">title </th>
                                    <th scope="col">category</th>
                                    <th scope="col">status</th>
                                    <th scope="col">actions</th>
                                </tr>
                                <tr>
                                    <td>9-10-2020</td>
                                    <td>Data Science</td>
                                    <td>Science</td>
                                    <td>Draft</td>
                                    <td>
                                        <img src="images/edit.png" alt="edit">
                                        <img src="images/delete.png" alt="delete">
                                    </td>
                                </tr>
                                <tr>
                                    <td>10-10-2020</td>
                                    <td>Account</td>
                                    <td>Commerce</td>
                                    <td>In Review</td>
                                    <td>
                                        <img src="images/eye.png" alt="View">
                                    </td>
                                </tr>
                                <tr>
                                    <td>11-10-2020</td>
                                    <td>Social Studies</td>
                                    <td>Social</td>
                                    <td>Submitted</td>
                                    <td>
                                        <img src="images/eye.png" alt="View">
                                    </td>
                                </tr>
                                <tr>
                                    <td>12-10-2020</td>
                                    <td>AI</td>
                                    <td>IT</td>
                                    <td>Submitted</td>
                                    <td>
                                        <img src="images/eye.png" alt="View">
                                    </td>
                                </tr>
                                <tr>
                                    <td>13-10-2020</td>
                                    <td>Lorem dusaacn gdhdc</td>
                                    <td>Lorem</td>
                                    <td>Draft</td>
                                    <td>
                                        <img src="images/edit.png" alt="edit">
                                        <img src="images/eye.png" alt="VIew">
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

        <div class="dashboard-in-progress-notes">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 column-padding-remover">
                        <h3 class="blue-font-24 dashboard-title">Published Notes</h3>
                    </div>
                    <div class="col-md-2">
                    </div>
                    <div id="dashboard-search-btn" class="col-md-4 column-padding-remover">
                        <div class="dashboard-search-jointer dashboard-title">
                            <input type="text" class="form-control dashboard-search-icon search-icon"
                                placeholder="&#xf002; Search">
                            <button class="btn btn-primary blue-button-hover-white dashboard-title-r">search</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="dashboard-table-2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 column-padding-remover">
                        <div class="table-responsive">
                            <table class="table entire-table table-small">
                                <tr class="table-heading">
                                    <th scope="col">added date </th>
                                    <th scope="col">title</th>
                                    <th scope="col">category</th>
                                    <th scope="col">sell type </th>
                                    <th scope="col">price</th>
                                    <th scope="col">actions</th>
                                </tr>
                                <tr>
                                    <td>9-10-2020</td>
                                    <td>Data Science</td>
                                    <td>Science</td>
                                    <td>Paid</td>
                                    <td>$575</td>
                                    <td>
                                        <img src="images/eye.png" alt="View">
                                    </td>
                                </tr>
                                <tr>
                                    <td>10-10-2020</td>
                                    <td>Account</td>
                                    <td>Commerce</td>
                                    <td>Free</td>
                                    <td>$0</td>
                                    <td>
                                        <img src="images/eye.png" alt="View">
                                    </td>
                                </tr>
                                <tr>
                                    <td>11-10-2020</td>
                                    <td>Social Studies</td>
                                    <td>Social</td>
                                    <td>Free</td>
                                    <td>$0</td>
                                    <td>
                                        <img src="images/eye.png" alt="VIew">
                                    </td>
                                </tr>
                                <tr>
                                    <td>12-10-2020</td>
                                    <td>AI</td>
                                    <td>IT</td>
                                    <td>Paid</td>
                                    <td>$3532</td>
                                    <td>
                                        <img src="images/eye.png" alt="View">
                                    </td>
                                </tr>
                                <tr>
                                    <td>13-10-2020</td>
                                    <td>Lorem dusaacn gdhdc</td>
                                    <td>Lorem</td>
                                    <td>Free</td>
                                    <td>$0</td>
                                    <td>
                                        <img src="images/eye.png" alt="VIew">
                                    </td>
                                </tr>
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