<?php
include "db.php";

$id = $_GET['id'];
$id = mysqli_real_escape_string($con, $id);

$query = "UPDATE users SET isemailverified=1 WHERE userid=$id";
mysqli_query($con, $query);
header("Location:log-in-page.php");
?>
