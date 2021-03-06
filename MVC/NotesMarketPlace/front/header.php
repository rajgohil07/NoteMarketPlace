<?php
if (isset($_SESSION['email'])) {
    echo "";
} else
    session_start();
?>
<!--header -->
<header class="site-header">
    <div class="container column-padding-remover">
        <div class="header-wrapper">
            <div class="logo-wrapper">
                <a class="navbar-brand" href="home-page.html"><img src="images/blue-logo.png" alt="logo"></a>
                <!--Mobile Open Button-->
                <span id="mobile-nav-open-btn">&#9776;</span>
            </div>
            <div class="navigation-wrapper">
                <nav class="main-nav navbar navbar-expand-md">
                    <div class="collapse navbar-collapse">
                        <ul class="menu-navigation">
                            <li><a href="search-note-page.php">Search Notes</a></li>
                            <li><a href="my-sold-notes-page.php">Sell Your Notes</a></li>
                            <li><a href="faq-page.php">FAQ</a></li>
                            <li><a href="contact-us-page.php">Contact Us</a></li>
                            <li class="dropdown">
                                <a href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    <img src="images/user-img.png" alt="user" class="img-fluid">
                                </a>
                                <div class="dropdown-menu shadow-drop dropdowncustom" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="user-profile-page.php">
                                        <h6>My Profile</h6>
                                    </a>
                                    <a class="dropdown-item" href="my-downloads-page.php">
                                        <h6>My Downloads</h6>
                                    </a>
                                    <a class="dropdown-item" href="my-sold-notes-page.php">
                                        <h6>My Sold Notes</h6>
                                    </a>
                                    <a class="dropdown-item" href="my-rejected-notes-page.php">
                                        <h6>My Rejected Notes</h6>
                                    </a>
                                    <a class="dropdown-item" href="change-password-page.php">
                                        <h6>Change Password</h6>
                                    </a>
                                    <a class="dropdown-item pur_col" href="log-in-page.php">
                                        <h5>LOGOUT</h5>
                                    </a>
                                </div>
                            </li>
                            <li><?php if (isset($_SESSION['login']))  { ?>
                                <a href="log-in-page.php"><button class="btn btn-purple btn-outline-primary"
                                        type="submit"><b>LOGOUT</b></button></a>
                                <?php } else {
                                ?>
                                <a href="log-in-page.php"><button class="btn btn-purple btn-outline-primary"
                                        type="submit"><b>LOGIN</b></button></a>
                                <?php } ?>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>

            <!--for Mobile Menu-->
            <div id="mobile-nav">
                <!--Mobile Close Button-->
                <span id="mobile-nav-close-btn">&times;</span>
                <div id="mobile-nav-content">
                    <ul class="menu-navigation">
                        <div class="clickable-op">
                            <li><a href="search-note-page.php">Search Notes</a></li>
                            <li><a href="my-sold-notes-page.php">Sell Your Notes</a></li>
                            <li><a href="faq-page.php">FAQ</a></li>
                            <li><a href="contact-us-page.php">Contact Us</a></li>
                        </div>
                        <li class="dropdown">
                            <a href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="images/user-img.png" alt="user" class="img-fluid">
                            </a>
                            <div class="dropdown-menu shadow-drop dropdowncustom" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="user-profile-page.php">
                                    <h6>My Profile</h6>
                                </a>
                                <a class="dropdown-item" href="my-downloads-page.php">
                                    <h6>My Downloads</h6>
                                </a>
                                <a class="dropdown-item" href="my-sold-notes-page.php">
                                    <h6>My Sold Notes</h6>
                                </a>
                                <a class="dropdown-item" href="my-rejected-notes-page.php">
                                    <h6>My Rejected Notes</h6>
                                </a>
                                <a class="dropdown-item" href="change-password-page.php">
                                    <h6>Change Password</h6>
                                </a>
                                <a class="dropdown-item" href="log-in-page.php">
                                    <h5>LOGOUT</h5>
                                </a>
                            </div>
                        </li>
                        <li><a href="log-in-page.php">
                                <button type="button" class="btn btn-purple btn-outline-primary">Logout</button>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!--header end-->
