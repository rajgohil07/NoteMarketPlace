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

        <div class="container">
            <div class="row">
                <div class="col-md-12 column-padding-remover">
                    <h4 class="blue-font-30 heading-margin">Manage Country</h4>
                </div>
                <div class="col-md-6 column-padding-remover">
                    <button type="submit" class="btn btn-primary blue-button-hover-white margin-top-15">add
                        country</button>
                </div>
                <div class="col-md-2"></div>
                <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover margin-top-15">
                    <div class="dashboard-search-jointer">
                        <input type="text" class="form-control dashboard-search-icon search-icon"
                            placeholder="&#xf002; Search">
                        <button class="btn btn-primary blue-button-hover-white">search</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12 column-padding-remover margin-top-15">
                    <div class="table-responsive">
                        <table class="table entire-table text-center table-small">
                            <tr class="table-heading">
                                <th>sr no.</th>
                                <th>country name</th>
                                <th>country code</th>
                                <th>date added</th>
                                <th>added by</th>
                                <th>active</th>
                                <th>action</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>india</td>
                                <td>11</td>
                                <td>09-12-2020, 10:10</td>
                                <td>khyati patel</td>
                                <td>yes</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>australia</td>
                                <td>24</td>
                                <td>21-11-2020, 11:10</td>
                                <td>rahul shah </td>
                                <td>yes</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>USA</td>
                                <td>04</td>
                                <td>17-04-2020, 12:12</td>
                                <td>suman trivedi </td>
                                <td>no</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>united kingdom</td>
                                <td>12</td>
                                <td>12-10-2020, 03:15</td>
                                <td>raj maheswari</td>
                                <td>yes</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>canada</td>
                                <td>13</td>
                                <td>13-07-2020, 11:11</td>
                                <td>khyati patel</td>
                                <td>no</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
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