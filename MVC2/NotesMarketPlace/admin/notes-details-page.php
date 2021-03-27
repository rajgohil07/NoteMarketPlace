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

        <!--Upper part-->
        <div id="note-details-upper">
            <div class="container">
                <div class="row">
                    <div id="note-details-heading" class="col-md-12 blue-font-24">
                        Notes Details
                    </div>
                    <div class=" col-lg-6 col-md-12 col-12">
                        <div class="row">
                            <div class="col-md-5 note-details-internal-spacing">
                                <img src="images/note-details-cover-photo.jpg" class="img-fluid" alt="Book cover photo">
                            </div>
                            <div class="col-md-7 note-details-internal-spacing">
                                <div id="note-details-spacer-1">
                                    <div id="note-details-left-description">
                                        <h3 class="blue-font-34">Computer science</h3>
                                    </div>
                                    <div id="note-details-book-type">
                                        <h4>
                                            Science
                                        </h4>
                                    </div>
                                    <h5 class="dark-font-16" id="note-details-book-des">
                                        Lorem ipsum dolor sit amet elit. Omnis, assumenda. Nobis dolorem magni sapiente
                                        iusto illo molestias sequi eligendi eaque!
                                    </h5>
                                    <button id="note-deatils-download-btn" data-toggle="modal"
                                        data-target="#notes-deatils-purchase-popup"
                                        class="btn btn-primary blue-button-hover-white">download / &#36;15</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="row">
                            <div class="col-md-6 col-6 column-padding-remover-lite">
                                <div id="note-details-spacer-2">
                                    <div id="note-details-des-type">
                                        <h3>institution:</h3>
                                        <h3>country:</h3>
                                        <h3>course name:</h3>
                                        <h3>course code:</h3>
                                        <h3>professor:</h3>
                                        <h3>number of pages:</h3>
                                        <h3>approved date:</h3>
                                        <h3>rating:</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 text-right col-6 column-padding-remover">
                                <div id="note-details-des-ans">
                                    <h3>university of california</h3>
                                    <h3>united state</h3>
                                    <h3>computer engineering</h3>
                                    <h3>28384</h3>
                                    <h3>mr. richard brown</h3>
                                    <h3>277</h3>
                                    <h3>november 25 2020</h3>
                                    <div id="note-details-above-rating">
                                        <div class="rate">
                                            <input type="radio" id="star5" name="rate" value="5" />
                                            <label for="star5" title="text">5 stars</label>
                                            <input type="radio" id="star4" name="rate" value="4" />
                                            <label for="star4" title="text">4 stars</label>
                                            <input type="radio" id="star3" name="rate" value="3" />
                                            <label for="star3" title="text">3 stars</label>
                                            <input type="radio" id="star2" name="rate" value="2" />
                                            <label for="star2" title="text">2 stars</label>
                                            <input type="radio" id="star1" name="rate" value="1" />
                                            <label for="star1" title="text">1 star</label>
                                        </div>
                                    </div>
                                    <h3>123 reviews</h3>
                                </div>
                            </div>
                        </div>
                        <h4 id="note-details-red-mark" class="note-details-internal-spacing">5 Users marked this note as
                            inappropriate</h4>
                    </div>
                </div>
                <hr>
            </div>
        </div>
        <!--Upper part end-->

        <!--Lower part-->
        <div id="note-details-lower">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-12 col-12">
                        <h3 class="blue-font-24 note-details-internal-spacing">Notes Preview</h3>
                        <div class="note-details-internal-spacing" id="Iframe-Cicis-Menu-To-Go"
                            class="set-margin-cicis-menu-to-go set-padding-cicis-menu-to-go set-border-cicis-menu-to-go set-box-shadow-cicis-menu-to-go center-block-horiz">
                            <div class="responsive-wrapper 
          responsive-wrapper-padding-bottom-90pct" style="-webkit-overflow-scrolling: touch; overflow: auto;">
                                <iframe src="http://unec.edu.az/application/uploads/2014/12/pdf-sample.pdf">
                                    <p style="font-size: 110%;"><em><strong>ERROR: </strong>
                                            An &#105;frame should be displayed here but your browser version does not
                                            support &#105;frames.</em> Please update your browser to its most recent
                                        version and try again, or access the file <a
                                            href="http://unec.edu.az/application/uploads/2014/12/pdf-sample.pdf">with
                                            this link.</a></p>
                                </iframe>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-12 col-12 customer-rating-res review-card-spacer">
                        <h3 class="blue-font-24 note-details-internal-spacing">Customer Reviews</h3>
                        <div id="notes-details-reviews" class="note-details-internal-spacing">
                            <div class="row notes-review-ender-line">
                                <div class="col-md-2 col-3">
                                    <img src="images/client-1.jpg" title="The honest review by our customers"
                                        class="img-fluid rounded-circle" alt="Customer Photo">
                                </div>
                                <div class="col-md-10 col-9">
                                    <div class="row">
                                        <div class="col-md-11">
                                            <div class="notes-details-name-rating-review">
                                                <h4>Richard Brown</h4>
                                                <div class="notes-details-rating">
                                                    <div class="rate1">
                                                        <div class="rate"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 text-right">
                                            <img src="images/delete.png" class="del-user-review"
                                                title="click here to delete review" alt="Delete">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-10">
                                    <div class="notes-details-name-rating-review">
                                        <h5>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error,
                                            nulla cupiditate facere illo quibusdam laborum</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="row notes-review-ender-line">
                                <div class="col-md-2 col-3">
                                    <img src="images/client-2.jpg" title="The honest review by our customers"
                                        class="img-fluid rounded-circle" alt="Customer Photo">
                                </div>
                                <div class="col-md-10 col-9">
                                    <div class="row">
                                        <div class="col-md-11">
                                            <div class="notes-details-name-rating-review">
                                                <h4>Alice Ortiaz</h4>
                                                <div class="notes-details-rating">
                                                    <div class="rate2">
                                                        <div class="rate"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 text-right">
                                            <img src="images/delete.png" class="del-user-review"
                                                title="click here to delete review" alt="Delete">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-10">
                                    <div class="notes-details-name-rating-review">
                                        <h5>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error,
                                            nulla cupiditate facere illo quibusdam laborum</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 col-3">
                                    <img src="images/client-3.jpg" title="The honest review by our customers"
                                        class="img-fluid rounded-circle" alt="Customer Photo">
                                </div>
                                <div class="col-md-10 col-9">
                                    <div class="row">
                                        <div class="col-md-11">
                                            <div class="notes-details-name-rating-review">
                                                <h4>Sara Passmore</h4>
                                                <div class="notes-details-rating">
                                                    <div class="rate3">
                                                        <div class="rate"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 text-right">
                                            <img src="images/delete.png" class="del-user-review"
                                                title="click here to delete review" alt="Delete">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-10">
                                    <div class="notes-details-name-rating-review">
                                        <h5>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error,
                                            nulla cupiditate facere illo quibusdam laborum</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Lower part end-->

        <!-- Thanks Pop up -->
        <div class="popup-box">
            <div id="notes-deatils-purchase-popup" class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <button type="button" class="close text-right popup-close-btn" data-dismiss="modal"
                            aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <div class="modal-body">
                            <img src="images/SUCCESS.png" alt="Success Purchase Message"
                                class="img-fluid popup-success-img" style="display: block; margin: 0 auto; ">
                            <h6 class="blue-font-26 text-center">Thank you for Purchasing!</h6>
                            <p class="dark-font-18 popup-buyer-name"><b>Dear Smith,</b></p>
                            <p class="dark-font-16">As this is paid notes-you need to pay to seller Rahil shah
                                offline.We will send him an
                                email that you want to download this note.He may contact you further for payment process
                                completion.</p>
                            <p class="dark-font-16 popup-emergency">In case you have urgancy,</p>
                            <p class="dark-font-16">Please Contact us on +919875489876.</p>
                            <p class="dark-font-16">Once he receives the payment and acknowledge us-selected notes you
                                can see over my
                                download tab for download.</p>
                            <p class="dark-font-16">Have a good day.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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