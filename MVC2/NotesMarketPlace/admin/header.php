  <!--header -->
  <header class="site-header">
      <div class="container column-padding-remover">
          <div class="header-wrapper">
              <div class="logo-wrapper">
                  <a class="navbar-brand" href="#"><img src="images/blue-logo.png" alt="logo"></a>
                  <!--Mobile Open Button-->
                  <span id="mobile-nav-open-btn">&#9776;</span>
              </div>
              <div class="navigation-wrapper">
                  <nav class="main-nav navbar navbar-expand-md">
                      <div class="collapse navbar-collapse">
                          <ul class="menu-navigation">
                              <li><a href="dashboard-page.php">Dashboard</a></li>
                              <li class="dropdown">
                                  <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                      aria-expanded="false">
                                      Notes
                                  </a>
                                  <div class="dropdown-menu shadow-drop dropdowncustom"
                                      aria-labelledby="navbarDropdown">
                                      <a class="dropdown-item" href="notes-under-preview-page.php">
                                          <h6>Notes Under Review</h6>
                                      </a>
                                      <a class="dropdown-item" href="published-notes-page.php">
                                          <h6>Published Notes</h6>
                                      </a>
                                      <a class="dropdown-item" href="downloaded-notes-page.php">
                                          <h6>Downloaded Notes</h6>
                                      </a>
                                      <a class="dropdown-item" href="rejected-notes-page.php">
                                          <h6>Rejected Notes</h6>
                                      </a>
                                  </div>
                              </li>
                              <li><a href="member-details-page.php">Members</a></li>
                              <li class="dropdown">
                                  <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                      aria-expanded="false">
                                      Reports
                                  </a>
                                  <div class="dropdown-menu shadow-drop dropdowncustom"
                                      aria-labelledby="navbarDropdown">
                                      <a class="dropdown-item" href="spam-report-page.php">
                                          <h5>Spam Reports</h5>
                                      </a>
                                  </div>
                              </li>
                              <li><a href="my-profile-page.php">Settings</a></li>
                              <li class="dropdown">
                                  <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                      aria-expanded="false">
                                      <img src="images/user-img.png" alt="user" class="img-fluid">
                                  </a>
                                  <div class="dropdown-menu shadow-drop dropdowncustom"
                                      aria-labelledby="navbarDropdown">
                                      <a class="dropdown-item" href="my-profile-page.php">
                                          <h6>Update Profile</h6>
                                      </a>
                                      <a class="dropdown-item" href="#">
                                          <h6>Change Password</h6>
                                      </a>
                                      <a class="dropdown-item" href="log-in-page.php">
                                          <h5>LOGOUT</h5>
                                      </a>
                                  </div>
                              </li>
                              <li><a href="log-in-page.php">
                                      <button type="button" class="btn btn-purple btn-outline-primary">Logout</button>
                                  </a></li>
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
                          <li><a href="dashboard-page.php">Dashboard</a></li>
                          <li class="dropdown">
                              <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                  aria-expanded="false">
                                  Notes
                              </a>
                              <div class="dropdown-menu shadow-drop dropdowncustom" aria-labelledby="navbarDropdown">
                                  <a class="dropdown-item" href="notes-under-preview-page.php">
                                      <h6>Notes Under Review</h6>
                                  </a>
                                  <a class="dropdown-item" href="published-notes-page.php">
                                      <h6>Published Notes</h6>
                                  </a>
                                  <a class="dropdown-item" href="downloaded-notes-page.php">
                                      <h6>Downloaded Notes</h6>
                                  </a>
                                  <a class="dropdown-item" href="rejected-notes-page.php">
                                      <h6>Rejected Notes</h6>
                                  </a>
                              </div>
                          </li>
                          <li><a href="member-details-page.php">Members</a></li>
                          <li class="dropdown">
                              <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                  aria-expanded="false">
                                  Reports
                              </a>
                              <div class="dropdown-menu shadow-drop dropdowncustom" aria-labelledby="navbarDropdown">
                                  <a class="dropdown-item" href="spam-report-page.php">
                                      <h5>Spam Reports</h5>
                                  </a>
                              </div>
                          </li>
                          <li><a href="my-profile-page.php">Settings</a></li>
                          <li class="dropdown">
                              <a href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                  aria-expanded="false">
                                  <img src="images/user-img.png" alt="user" class="img-fluid">
                              </a>
                              <div class="dropdown-menu shadow-drop dropdowncustom" aria-labelledby="navbarDropdown">
                                  <a class="dropdown-item" href="my-profile-page.php">
                                      <h6>Update Profile</h6>
                                  </a>
                                  <a class="dropdown-item" href="my-profile-page.php">
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
