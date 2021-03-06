<?php
include "db.php";
$limit = 5;

if (isset($_GET["page"])) {
    $page  = $_GET["page"];
} else {
    $page = 1;
};
$start_from = ($page - 1) * $limit;
if (isset($_POST['search_1'])) {

    $search_result = $_POST['search_result'];

    $query = "SELECT sellernotes.noteid,sellernotes.modifieddate,sellernotes.title,
              notecategories.name,referencedata.value FROM sellernotes LEFT JOIN 
              notecategories ON sellernotes.category=notecategories.categoryid LEFT JOIN referencedata 
              ON sellernotes.status=referencedata.refdataid WHERE sellernotes.title LIKE '%$search_result%' 
              AND sellernotes.isactive=1 AND referencedata.refdataid IN (3,4,5) 
              ORDER BY sellernotes.modifieddate DESC LIMIT $start_from, $limit";

    $result = mysqli_query($con, $query);

    $result_num = mysqli_query($con, "SELECT COUNT(noteid) FROM sellernotes WHERE title LIKE '%$search_result%' AND sellernotes.isactive=1 AND status IN (3,4,5)");
    $row = mysqli_fetch_row($result_num);
    $total_records = $row[0];
    $total_pages = ceil($total_records / $limit);
} else {

    $query = "SELECT sellernotes.noteid,sellernotes.modifieddate,sellernotes.title,notecategories.name,
              referencedata.value FROM sellernotes LEFT JOIN notecategories ON 
              sellernotes.category=notecategories.categoryid LEFT JOIN referencedata 
              ON sellernotes.status=referencedata.refdataid WHERE referencedata.refdataid IN (3,4,5) 
              AND sellernotes.isactive=1 ORDER BY sellernotes.modifieddate DESC LIMIT $start_from, $limit";

    $result = mysqli_query($con, $query);

    $result_num = mysqli_query($con, "SELECT COUNT(noteid) FROM sellernotes WHERE status IN (3,4,5) AND sellernotes.isactive=1");
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
        <div id="dashboard-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-6">
                        <h3 class="blue-font-34 dashboard-title">Dashboard</h3>
                    </div>
                    <div class="col-md-6 col-6 column-padding-remover text-right ">
                        <a href="add-notes-page.php"><button
                                class="btn btn-primary dashboard-title-r blue-button-hover-white">Add note</button></a>
                    </div>
                </div>
            </div>
        </div>

        <div id="dashboard-statistics">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 col-12 dashboard-left-res">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 text-center dashboard-my-earnings">
                                <div class="dashboard-left-statistics-inner">
                                    <img src="images/my-earning.png" title="Detailed View of Earning" alt="My Earnings"
                                        class="img-fluid">
                                    <h4 class="blue-font-30 text-center">My Earning</h4>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 dashboard-sold-note text-center">
                                <div class="dashboard-left-statistics-inner">
                                    <div class="dashboard-sold-note-inner">
                                        <h3 class="blue-font-30">100</h3>
                                        <h3 class="dark-font-18">Number of Notes Sold</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 col-sm-5 text-center dashboard-earned-money">
                                <div id="dashboard-earned-money-inner">
                                    <h3 class="blue-font-30">&#36;10,00,000</h3>
                                    <h3 class="dark-font-18">Money Earned</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12 column-padding-remover text-center">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 dashboard-right-statistics">
                                <div class="dashboard-right-statistics-inner">
                                    <h3 class="blue-font-30">38</h3>
                                    <h3 class="dark-font-18">My Downloads</h3>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 dashboard-right-statistics">
                                <div class="dashboard-right-statistics-inner">
                                    <h3 class="blue-font-30">12</h3>
                                    <h3 class="dark-font-18">My Rejected Notes</h3>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 dashboard-right-statistics">
                                <div class="dashboard-right-statistics-inner">
                                    <h3 class="blue-font-30">102</h3>
                                    <h3 class="dark-font-18">Buyer Requests</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="dashboard-in-progress-notes">
            <div class="container">
                <form action="dashboard-page.php" method="post">
                    <div class="row">
                        <div class="col-md-6 col-12 column-padding-remover">
                            <h3 class="blue-font-24 dashboard-title">In Progress Notes</h3>
                        </div>
                        <div class="col-md-2 col-0">
                        </div>
                        <div id="dashboard-search-btn-2" class="col-md-4 column-padding-remover">
                            <div class="dashboard-search-jointer dashboard-title">
                                <input type="text" name="search_result"
                                    class="form-control dashboard-search-icon search-icon"
                                    placeholder="&#xf002; Search">
                                <button name="search_1" type="submit"
                                    class="btn btn-primary blue-button-hover-white dashboard-title-r">search
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
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
                                    <?php
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $date = $row['modifieddate'];
                                        $title = $row['title'];
                                        $category_name = $row['name'];
                                        $refe_data = $row['value'];
                                        $noteid = $row['noteid'];
                                        echo "<tr>
                                        <td>$date</td>
                                        <td>$title</td>
                                        <td>$category_name</td>
                                        <td>$refe_data</td>";
                                        if ($refe_data == 'Draft') {
                                            echo " <td>
                                            <a href='delete_draft.php?id=$noteid'>
                                            <img src='images/delete.png' title='Click to delete' alt='Delete'></a>
                                            <a href='add-notes-page.php?id=$noteid'>
                                            <img src='images/edit.png' title='Click to Edit' alt='edit'></a>
                                        </td>
                                    </tr>";
                                        } else {
                                            echo " <td>
                                        <img src='images/eye.png' title='Click to View' alt='View'>
                                        </td>
                                    </tr>";
                                        }
                                    }
                                    ?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- pagination -->

        <div class="search-pagination">
            <ul class="pagination justify-content-center">
                <?php
                echo "<li class='page-item'><a class='page-link' href='dashboard-page.php?page=" . ($page - 1)
                    . "'>❮</a></li>";
                for ($i = 1; $i <= $total_pages; $i++) {
                    if ($i == $page) {
                        echo "<li class='page-item active'><a class='page-link' href='dashboard-page.php?page=$i'>$i</a></li>";
                    } else echo "<li class='page-item'><a class='page-link' href='dashboard-page.php?page=$i'>$i</a></li>";
                }
                echo "<li class='page-item'><a class='page-link' href='dashboard-page.php?page=" . ($page + 1)
                    . "'>❯</a></li>";
                ?>
            </ul>
        </div>

        <!-- pagination end -->

        <div class="dashboard-in-progress-notes">
            <div class="container">
                <form action="dashboard-page.php" method="post">
                    <div class="row">
                        <div class="col-md-6 column-padding-remover">
                            <h3 class="blue-font-24 dashboard-title dashboard-title">Published Notes</h3>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div id="dashboard-search-btn" class="col-md-4 column-padding-remover">
                            <div class="dashboard-search-jointer dashboard-title">
                                <input type="text" name="search_result2"
                                    class="form-control dashboard-search-icon search-icon"
                                    placeholder="&#xf002; Search">
                                <button type="submit" name="search_2"
                                    class="btn btn-primary blue-button-hover-white dashboard-title-r">search</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <?php
        if (isset($_GET["page_info"])) {
            $page_info  = $_GET["page_info"];
        } else {
            $page_info = 1;
        };
        $start_from2 = ($page_info - 1) * $limit;

        if (isset($_POST['search_2'])) {

            $search_result2 = $_POST['search_result2'];

            $query2 = "SELECT sellernotes.publisheddate,sellernotes.title,notecategories.name,
                        referencedata.value,sellernotes.selling_price FROM sellernotes LEFT JOIN 
                        notecategories ON sellernotes.category=notecategories.categoryid LEFT JOIN
                        referencedata ON sellernotes.ispaid=referencedata.refdataid WHERE 
                        sellernotes.title LIKE '%$search_result2%' AND sellernotes.status=6 
                        ORDER BY sellernotes.modifieddate DESC LIMIT $start_from2, $limit";

            $result2 = mysqli_query($con, $query2);

            $result_num2 = mysqli_query($con, "SELECT COUNT(noteid) FROM sellernotes WHERE title LIKE '%$search_result2%' AND status=6");
            $row2 = mysqli_fetch_row($result_num2);
            $total_records2 = $row2[0];
            $total_pages2 = ceil($total_records2 / $limit);
        } else {
            $query2 = "SELECT sellernotes.publisheddate,sellernotes.title,notecategories.name,
                        referencedata.value,sellernotes.selling_price FROM sellernotes LEFT JOIN 
                        notecategories ON sellernotes.category=notecategories.categoryid LEFT JOIN
                        referencedata ON sellernotes.ispaid=referencedata.refdataid WHERE 
                        sellernotes.status=6 ORDER BY sellernotes.modifieddate DESC LIMIT $start_from2, $limit";

            $result2 = mysqli_query($con, $query2);

            $result_num2 = mysqli_query($con, "SELECT COUNT(noteid) FROM sellernotes WHERE status=6");
            $row2 = mysqli_fetch_row($result_num2);
            $total_records2 = $row2[0];
            $total_pages2 = ceil($total_records2 / $limit);
        }

        ?>
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
                                <?php
                                while ($row = mysqli_fetch_assoc($result2)) {
                                    $date2 = $row['publisheddate'];
                                    $title2 = $row['title'];
                                    $category_name2 = $row['name'];
                                    $refe_data2 = $row['value'];
                                    $sell_price = $row['selling_price'];
                                    echo "<tr>
                                        <td>$date2</td>
                                        <td>$title2</td>
                                        <td>$category_name2</td>
                                        <td>$refe_data2</td> 
                                        <td>$sell_price</td>
                                        <td> <a href='notes-details-page.php'><img src='images/eye.png' title='Click to View' alt='View'></a> </td>
                                         </tr>";
                                }
                                ?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- pagination start -->
        <div class="search-pagination">
            <ul class="pagination justify-content-center">
                <?php
                echo "<li class='page-item'><a class='page-link' href='dashboard-page.php?page_info=" . ($page_info - 1)
                    . "'>❮</a></li>";
                for ($i = 1; $i <= $total_pages2; $i++) {
                    if ($i == $page_info) {
                        echo "<li class='page-item active'><a class='page-link' href='dashboard-page.php?page_info=$i'>$i</a></li>";
                    } else echo "<li class='page-item'><a class='page-link' href='dashboard-page.php?page_info=$i'>$i</a></li>";
                }
                echo "<li class='page-item'><a class='page-link' href='dashboard-page.php?page_info=" . ($page + 1)
                    . "'>❯</a></li>";
                ?>
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
