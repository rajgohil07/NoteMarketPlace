<?php
include "db.php";
$limit = 8;

if (isset($_GET["page"])) {
    $page  = $_GET["page"];
} else {
    $page = 1;
};
$start_from = ($page - 1) * $limit;
if (isset($_POST['search'])) {

    $search_result = $_POST['search_result'];

    $query = "SELECT downloads.notetitle,downloads.notecategory,referencedata.value,downloads.purchasedprice,
             downloads.attactmentdownloadeddate FROM downloads LEFT JOIN referencedata 
             ON downloads.ispaid=referencedata.refdataid WHERE notetitle LIKE '%$search_result%' LIMIT $start_from, $limit";

    $result = mysqli_query($con, $query);

    $result_num = mysqli_query($con, "SELECT COUNT(downloads.downloadid) FROM downloads LEFT JOIN referencedata 
    ON downloads.ispaid=referencedata.refdataid WHERE notetitle LIKE '%$search_result%'");

    $row = mysqli_fetch_row($result_num);
    $total_records = $row[0];
    $total_pages = ceil($total_records / $limit);
} else {

    $query = "SELECT downloads.notetitle,downloads.notecategory,referencedata.value,downloads.purchasedprice,
             downloads.attactmentdownloadeddate FROM downloads LEFT JOIN referencedata 
             ON downloads.ispaid=referencedata.refdataid LIMIT $start_from, $limit";

    $result = mysqli_query($con, $query);

    $result_num = mysqli_query($con, "SELECT COUNT(downloads.downloadid) FROM downloads LEFT JOIN referencedata 
    ON downloads.ispaid=referencedata.refdataid");

    $row = mysqli_fetch_row($result_num);
    $total_records = $row[0];
    $total_pages = ceil($total_records / $limit);
}

?>
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
                    <form action="buyer-request-page.php" method="post">
                        <div class="row">
                            <div class="col-md-6 column-padding-remover">
                                <h3 class="blue-font-24 dashboard-title">Buyer Reqests</h3>
                            </div>
                            <div class="col-md-2">
                            </div>
                            <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover">
                                <div class="dashboard-search-jointer dashboard-title">
                                    <input type="text" name="search_result"
                                        class="form-control dashboard-search-icon search-icon"
                                        placeholder="&#xf002; Search">
                                    <button type="submit" name="search"
                                        class="btn btn-primary blue-button-hover-white dashboard-title-r">search</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Table -->
        <div class="container">
            <div class="row">
                <div class="col-md-12 column-padding-remover">
                    <div class="table-responsive">
                        <table class="table entire-table table-medium">
                            <tr class="table-heading">
                                <th>SR no.</th>
                                <th>note title</th>
                                <th>category</th>
                                <th>buyer</th>
                                <th>phone no.</th>
                                <th>sell type</th>
                                <th>price</th>
                                <th>downloaded data/time</th>
                                <th></th>
                            </tr>
                            <?php
                            $i = 1;
                            while ($row = mysqli_fetch_assoc($result)) {
                                $title = $row['notetitle'];
                                $category = $row['notecategory'];
                                $type = $row['value'];
                                $price = $row['purchasedprice'];
                                $time = $row['attactmentdownloadeddate'];
                                echo " 
                                    <tr>
                                        <td>" . $i++ . "</td>
                                        <td>$title</td>
                                        <td>$category</td>
                                        <td>Testing" . $i . $i * 2 . ($i * 7) . "@gmail.com</td>
                                        <td>+91 98" . $i . "5" . $i . "9" . $i . $i . "7</td>
                                        <td>$type</td>
                                        <td>&#36;$price</td>
                                        <td>$time</td>
                                        <td>
                                            <div class='table-pic-combiner'>
                                                <img src='images/eye.png' class='table-first-img' alt='View'>
                                                <div class='dropdown dropleft'>
                                                    <a class='btn' href='#' role='button' id='dropdownMenuLink'
                                                        data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                                        <img src='images/dots.png' alt='open menu'></a>
                                                    <ul class='dropdown-menu shadow-drop dropdowncustom-width dropdowncustom'>
                                                        <li><a href='#'>
                                                                <h6 class='dropdown-first-option'>Allow Download</h6></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>";
                            }
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Table end-->

        <!-- pagination -->

        <div class="search-pagination">
            <ul class="pagination justify-content-center">
                <?php
                echo "<li class='page-item'><a class='page-link' href='buyer-request-page.php?page=" . ($page - 1)
                    . "'>❮</a></li>";
                for ($i = 1; $i <= $total_pages; $i++) {
                    if ($i == $page) {
                        echo "<li class='page-item active'><a class='page-link' href='buyer-request-page.php?page=$i'>$i</a></li>";
                    } else echo "<li class='page-item'><a class='page-link' href='buyer-request-page.php?page=$i'>$i</a></li>";
                }
                echo "<li class='page-item'><a class='page-link' href='buyer-request-page.php?page=" . ($page + 1)
                    . "'>❯</a></li>";
                ?>
            </ul>
        </div>

        <!-- pagination end -->

        <!--footer-->
        <?php include "footer.php" ?>
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