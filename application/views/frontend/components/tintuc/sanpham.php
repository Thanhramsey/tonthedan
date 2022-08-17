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
	<link rel="icon" type="image/x-icon" href="<?php echo base_url() ?>/public/assets/img/favicon.png">

    <!-- =============== Bootstrap Core CSS =============== -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/css/bootstrap.min.css" type="text/css">
    <!-- =============== fonts awesome =============== -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/font/css/font-awesome.min.css" type="text/css">
    <!-- =============== Plugin CSS =============== -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/css/animate.min.css" type="text/css">
    <!-- =============== Custom CSS =============== -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/css/style.css" type="text/css">
    <!-- =============== Owl Carousel <?php echo base_url() ?>/public/assets =============== -->
    <link href="<?php echo base_url() ?>/public/assets/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>/public/assets/owl-carousel/owl.theme.css" rel="stylesheet">

	 <link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/css/isotope-docs.css" media="screen">
	  <link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/css/baguetteBox.css">
</head>

<body>
    <!-- =============== Preloader =============== -->
    <div id="preloader">
        <div id="loading">
		<img width="256" height="32" src="<?php echo base_url() ?>/public/assets/img/loading-cylon-red.svg">
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
                    <a class="navbar-brand" href="#"><img src="<?php echo base_url() ?>/public/assets/img/logo.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
						<li>
                            <a class="page-scroll" href="<?php echo base_url() ?>trang-chu">Trang chủ</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="<?php echo base_url() ?>sanpham">Sản phẩm</a>
                        </li>
						<li>
						 <a class="page-scroll" href="<?php echo base_url() ?>tin-tuc">Tin tức</a>
                        </li>
						<li>
                            <a class="page-scroll" href="#contact">Liên hệ</a>
                        </li>

                    </ul>
                </div>
                <!-- =============== navbar-collapse =============== -->

            </div>
        </div>
        <!-- =============== container-fluid =============== -->
    </nav>
	<section id="Gallery" class="wow flipInX animated" data-wow-delay=".5s">
	<div class="container">
            <div class="row">
	<div class="title">
				<h2 class="title-sp">Sản phẩm</h2>
				</div>
			</div></div>

	<div class="big-demo go-wide" data-js-module="filtering-demo">
	<div class="container">
            <div class="row">
	<div class="filter-button-group button-group js-radio-button-group" style="margin-bottom:20px !important">
		<button class="button is-checked" data-filter="*">Tất cả</button>
		<button class="button" data-filter=".web-0">Tôn</button>
		<button class="button" data-filter=".web-1">Ngói</button>
		<button class="button" data-filter=".web-2">Sắp thép, xà gồ</button>
		<!-- <button class="button" data-filter=".logo">Logo</button> -->
	</div>
	</div>
	</div>
	<div class = "text-center container">
            <ul class ="pagination">
              <?php echo $strphantrang; ?>
            </ul>
        </div>
	<div class="grid baguetteBoxThree gallery">
                <!-- gallery item -->
				<?php foreach ($list as $sp) :?>
					<div class="element-item transition web-<?php echo $sp['type']; ?> col-md-3 " data-category="post-transition" style="margin-bottom:10px">
						<a href="<?php echo base_url() ?>ttsanpham/<?php echo $sp['id']; ?>">
						<img src="<?php echo base_url() ?>/public/assets/images/<?php echo $sp['img']; ?>"/>
							<div class="hover-img">
							<h2><?php echo $sp['name']; ?></h2>
							<i class="fa fa-camera camera"></i>
							</div>
						</a>
					</div>
				<?php endforeach; ?>
            </div>
	</div>


	</section>
	<section id="contact">
	<!-- =============== container =============== -->
		<div class="container">
			    <div class="row">
                <div class="title">
				<h2>Contact</h2>
				<p>Vui lòng để lại thông tin để chúng tôi phục vụ bạn.</p>
				</div>
			</div>

			<div class="row">

				<div class="col-xs-12 col-sm-12 col-md-12 wow bounceIn animated" data-wow-delay=".1s">

						<div class="ajax-hidden">
						<h6 class="text-success" style="display:none">Thông tin của bạn đã được lưu lại , chúng tôi sẽ liên lạc lại với bạn sớm nhất.</h6>
							<div class="col-xs-12 col-sm-4 col-md-4 form-group wow fadeInUp animated">
								<label for="c_name" class="sr-only">Name</label>
								<input type="text" placeholder="Name" name="name" class="form-control" id="name" required="">
							</div>

							<div class="col-xs-12 col-sm-4 col-md-4 form-group wow fadeInUp animated">
								<label for="c_name" class="sr-only">SĐT</label>
								<input type="text" placeholder="SĐT" name="sdt" class="form-control" id="sdt" required="">
							</div>

							<div data-wow-delay=".1s" class="col-xs-12 col-sm-4 col-md-4 form-group wow fadeInUp animated">
								<label for="c_email" class="sr-only">Email</label>
								<input type="email" placeholder="E-mail" name="email" class="form-control" id="email" pattern="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" placeholder="e.g. info@envato.com" required="">
							</div>

							<div data-wow-delay=".2s" class="col-xs-12 col-sm-12 col-md-12 form-group wow fadeInUp animated">
								<textarea placeholder="Message" rows="7" name="description" id="description" class="form-control" required=""></textarea>
							</div>

							<button data-wow-delay=".3s" class="btn btn-sm btn-block wow fadeInUp animated" type="button" onclick="saveLienHe()">Send Message</button>
						</div>
						<div class="ajax-response"></div>

				</div>
			</div>
		</div><!-- =============== container end =============== -->
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
    <script src="<?php echo base_url() ?>/public/assets/js/jquery.js"></script>
	 <script src="<?php echo base_url() ?>/public/assets/js/isotope-docs.min.js"></script>
    <!-- =============== Bootstrap Core JavaScript =============== -->
    <script src="<?php echo base_url() ?>/public/assets/js/bootstrap.min.js"></script>
    <!-- =============== Plugin JavaScript =============== -->
    <script src="<?php echo base_url() ?>/public/assets/js/jquery.easing.min.js"></script>
    <script src="<?php echo base_url() ?>/public/assets/js/jquery.fittext.js"></script>
    <script src="<?php echo base_url() ?>/public/assets/js/wow.min.js"></script>
	<!-- =============== owl carousel =============== -->
    <script src="<?php echo base_url() ?>/public/assets/owl-carousel/owl.carousel.js"></script>
	<!-- Isotope does NOT require jQuery. But it does make things easier -->

<script src="<?php echo base_url() ?>/public/assets/js/baguetteBox.js" async></script>
<script src="<?php echo base_url() ?>/public/assets/js/plugins.js" async></script>

    <!-- =============== Custom Theme JavaScript =============== -->
    <script src="<?php echo base_url() ?>/public/assets/js/creative.js">	</script>
<script src="<?php echo base_url() ?>/public/assets/js/jquery.nicescroll.min.js"></script>

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
<script>
	function saveLienHe(){
		var strurl = "<?php echo base_url(); ?>" + 'lienhe/insertCmt';
		var name = $("#name").val();
		var email = $("#email").val();
		var phone = $("#sdt").val();
		var description = $("#description").val();
		var validate = false;
		if (name === "" ) {
			$("#name").focus();
		} else if (phone == "") {
			$("#sdt").focus();
		}else if (description == "") {
			$("#description").focus();
		}else{
			validate = true;
		}
		if (validate) {
			jQuery.ajax({
				url: strurl,
				type: 'POST',
				dataType: 'json',
				data: {
					name:name,
					phone:phone,
					email:email,
					description:description
				},
				success: function(data) {
					$(".text-success").show();
				}
			});
		}
	}
</script>
</body>
</html>

