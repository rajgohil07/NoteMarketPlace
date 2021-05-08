<?php
include "../db.php";

//to get old-password
$old_password = (isset($_GET['old_pass'])) ? $_GET['old_pass'] : "";

//to get new password
$new_password = (isset($_GET['new_pass'])) ? $_GET['new_pass'] : "";

//to get confirm password
$confirm_password = (isset($_GET['confirm_pass'])) ? $_GET['confirm_pass'] : "";

//to get correct user old-password
$current_user_psd = (isset($_GET['current_user_psd'])) ? $_GET['current_user_psd'] : "";

echo ($current_user_psd == $old_password || empty($old_password))
    ? "<script>$('#wrong_old_psd_displayer').hide();$('#reset-passowrd-btn').attr('disabled', false)</script>"
    : "<script>$('#wrong_old_psd_displayer').show();$('#reset-passowrd-btn').attr('disabled', true)</script>";