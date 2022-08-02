<!DOCTYPE html>
<!--
	Be by TEMPLATE STOCK
	templatestock.co @templatestock
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Tôn Thế Dân</title>
	<link rel="icon" type="image/x-icon" href="public/assets/img/favicon.png">

    <!-- =============== Bootstrap Core CSS =============== -->
    <link rel="stylesheet" href="public/assets/css/bootstrap.min.css" type="text/css">
    <!-- =============== fonts awesome =============== -->
    <link rel="stylesheet" href="public/assets/font/css/font-awesome.min.css" type="text/css">
    <!-- =============== Plugin CSS =============== -->
    <link rel="stylesheet" href="public/assets/css/animate.min.css" type="text/css">
    <!-- =============== Custom CSS =============== -->
    <link rel="stylesheet" href="public/assets/css/style.css" type="text/css">
    <!-- =============== Owl Carousel public/assets =============== -->
    <link href="public/assets/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="public/assets/owl-carousel/owl.theme.css" rel="stylesheet">

	 <link rel="stylesheet" href="public/assets/css/isotope-docs.css" media="screen">
	  <link rel="stylesheet" href="public/assets/css/baguetteBox.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- =============== Preloader =============== -->
    <div id="preloader">
        <div id="loading">
		<img width="256" height="32" src="public/assets/img/loading-cylon-red.svg">
        </div>
    </div>
    <!-- =============== nav =============== -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="public/assets/img/logo.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
						<li>
                            <a class="page-scroll" href="trang-chu">Trang chủ</a>
                        </li>
						 <li>
                            <a href="tin-tuc">Tin tức</a>
                        </li>
                    </ul>
                </div>
                <!-- =============== navbar-collapse =============== -->

            </div>
        </div>
        <!-- =============== container-fluid =============== -->
    </nav>
	<section id="content">
            <div class="container" style="margin-top:120px">
            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12 product-content" id="list-content">
                <div class="product-wrap">
					<h2 style="border-bottom:2px solid black">
						Tin tức
					</h2>
                  <div class="fs-newsboxs">
                    <?php foreach ($list as $item) :?>
                        <div class="fs-ne2-it clearfix" style="border-bottom:1px solid black; margin-bottom: 10px">
                            <div class="fs-ne2-if">
                                <a class="fs-ne2-img" href="tin-tuc/<?php echo $item['alias']; ?>">
                                    <img style="width: 300px; height: 160px;"src="public/images/posts/<?php echo $item['img']; ?>">
                                </a>
                                <div class="fs-n2-info">
                                    <h3 style="margin:10px 0px  !important"><a class="fs-ne2-tit" href="tin-tuc/<?php echo $item['alias']; ?>" title=""><?php echo $item['title']; ?></a></h3>
                                    <div class="fs-ne2-txt"><?php echo $item['introtext']; ?></div>
                                    <p class="fs-ne2-bot">
                                        <span class="fs-ne2-user">
                                            <img class="lazy"src="" style="">
                                        </span>
                                        <span>Đăng lúc: <?php echo $item['created']; ?></span>
                                    </p>
                                </div>
                            </div>

                        </div>
                    <?php endforeach; ?>

                </div>
                <div class = "row text-center">
                   <ul class ="pagination">
                      <?php echo $strphantrang; ?>
                  </ul>
              </div>
          </div>

      </div>
  </div>
</div>
</section>
    <!-- Footer -->
    <footer id="footer">
	<!-- =============== container =============== -->
    <div class="container">
			    <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">

					<ul class="social-links">
						<li><a class="wow fadeInUp animated" href="https://www.facebook.com/Cty-TNHH-T%C3%B4n-Th%E1%BA%BF-D%C3%A2n-883758681729013/" style="visibility: visible; animation-name: fadeInUp;"><i class="fa fa-facebook"></i></a></li>
						<!-- <li><a data-wow-delay=".1s" class="wow fadeInUp animated" href="" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"><i class="fa fa-twitter"></i></a></li> -->
						<li><a data-wow-delay=".2s" class="wow fadeInUp animated" href="#" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;"><i class="fa fa-google-plus"></i></a></li>
						<li><a data-wow-delay=".4s" class="wow fadeInUp animated" href="#" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;"><i class="fa fa-pinterest"></i></a></li>
						<li><a data-wow-delay=".5s" class="wow fadeInUp animated" href="#" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;"><i class="fa fa-envelope"></i></a></li>
					</ul>

				</div>
				<div data-wow-delay=".6s" class="col-xs-12 col-sm-6 col-md-6 wow bounceIn  animated" style="visibility: visible; animation-delay: 0.6s; animation-name: bounceIn;">

					  <section class="widget widget_text" id="text-15">
                         <h3 class="widget-title">Thành phố Pleiku, Gia Lai</h3> <div class="textwidget">601 Trường Chinh, Chi Lăng<br>
                        <p>Tel: 0269 3 777879<br>
                       	    Mobile: 01 234-56786<br>
                        E-mail: <a href="#">tonthedan@yahoo.com</a></p>
                        <a href="https://www.google.com/maps/place/Nh%C3%A0+M%C3%A1y+T%C3%B4n+Th%E1%BA%BF+D%C3%A2n/@13.9424242,108.0085642,17z/data=!3m1!4b1!4m5!3m4!1s0x316c2048c4334439:0xfff7d52933538cd9!8m2!3d13.9424252!4d108.0107236" style="font-size:20px" target="_blank">Click để đến địa chỉ</a> →</div>
                    </section>

				</div>
			</div>
    </div><!-- =============== container end =============== -->
	</footer>
	<!-- =============== jQuery =============== -->
    <script src="public/assets/js/jquery.js"></script>
	 <script src="public/assets/js/isotope-docs.min.js"></script>
    <!-- =============== Bootstrap Core JavaScript =============== -->
    <script src="public/assets/js/bootstrap.min.js"></script>
    <!-- =============== Plugin JavaScript =============== -->
    <script src="public/assets/js/jquery.easing.min.js"></script>
    <script src="public/assets/js/jquery.fittext.js"></script>
    <script src="public/assets/js/wow.min.js"></script>
	<!-- =============== owl carousel =============== -->
    <script src="public/assets/owl-carousel/owl.carousel.js"></script>
	<!-- Isotope does NOT require jQuery. But it does make things easier -->

<script src="public/assets/js/baguetteBox.js" async></script>
<script src="public/assets/js/plugins.js" async></script>

    <!-- =============== Custom Theme JavaScript =============== -->
    <script src="public/assets/js/creative.js">	</script>
<script src="public/assets/js/jquery.nicescroll.min.js"></script>

<script>
  $(document).ready(function() {

	var nice = $("html").niceScroll();  // The document page (body)

	$("#div1").html($("#div1").html()+' '+nice.version);

    $("#boxscroll").niceScroll({cursorborder:"",cursorcolor:"#00F",boxzoom:true}); // First scrollable DIV

    $("#boxscroll2").niceScroll("#contentscroll2",{cursorcolor:"#F00",cursoropacitymax:0.7,boxzoom:true,touchbehavior:true});  // Second scrollable DIV
    $("#boxframe").niceScroll("#boxscroll3",{cursorcolor:"#0F0",cursoropacitymax:0.7,boxzoom:true,touchbehavior:true});  // This is an IFrame (iPad compatible)

    $("#boxscroll4").niceScroll("#boxscroll4 .wrapper",{boxzoom:true});  // hw acceleration enabled when using wrapper

  });
</script>
<script>
window.onload = function() {
    if(typeof oldIE === 'undefined' && Object.keys)
        hljs.initHighlighting();

    baguetteBox.run('.baguetteBoxOne');
    baguetteBox.run('.baguetteBoxTwo');
    baguetteBox.run('.baguetteBoxThree', {
        animation: 'fadeIn'
    });
    baguetteBox.run('.baguetteBoxFour', {
        buttons: false
    });
    baguetteBox.run('.baguetteBoxFive', {
        captions: function(element) {
            return element.getElementsByTagName('img')[0].alt;
        }
    });
};
</script>

</body>
</html>


