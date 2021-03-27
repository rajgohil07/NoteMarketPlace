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
                    <h4 class="blue-font-30 heading-margin margin-l">Manage Administrator</h4>
                </div>
                <div class="col-md-6 column-padding-remover">
                    <button type="submit" class="btn btn-primary blue-button-hover-white margin-top-15 margin-l">add
                        administrator</button>
                </div>
                <div class="col-md-2"></div>
                <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover margin-top-15">
                    <div class="dashboard-search-jointer">
                        <input type="text" class="form-control dashboard-search-icon margin-l search-icon"
                            placeholder="&#xf002; Search">
                        <button class="btn btn-primary blue-button-hover-white margin-r">search</button>
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
                                <th>first name</th>
                                <th>last name</th>
                                <th>email</th>
                                <th>phone no.</th>
                                <th>data added</th>
                                <th>active</th>
                                <th>action</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>khyati</td>
                                <td>patel</td>
                                <td>khyatipatel@gmail.com</td>
                                <td>9823482372</td>
                                <td>09-12-2020, 10:10</td>
                                <td>yes</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>rahul</td>
                                <td>shah</td>
                                <td>rahulshah@gmail.com</td>
                                <td>9823449272</td>
                                <td>12-02-2020, 01:10</td>
                                <td>yes</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>suman</td>
                                <td>trivedi</td>
                                <td>sumantrivedi@gmail.com</td>
                                <td>7723582572</td>
                                <td>21-07-2020, 10:30</td>
                                <td>no</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>raj</td>
                                <td>vaghela</td>
                                <td>rajvaghela@gmail.com</td>
                                <td>9824328281</td>
                                <td>25-05-2020, 03:17</td>
                                <td>yes</td>
                                <td><img src="images/edit.png" alt="edit" title="click to edit">
                                    <img src="images/delete.png" alt="delete" title="click to delete">
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>niya</td>
                                <td>punt</td>
                                <td>niyapunt@gmail.com</td>
                                <td>9943412369</td>
                                <td>01-03-2020, 11:40</td>
                                <td>yes</td>
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




    <!--jquery js-->
    <script src="js/jquery/jquery.min.js"></script>

    <!--bootstrap js-->
    <script src="js/bootstrap/bootstrap.min.js"></script>

    <!--Custom Script-->
    <script src="js/script.js"></script>

</body>

</html>