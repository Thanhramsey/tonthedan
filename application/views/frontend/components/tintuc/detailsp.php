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
    <meta name="description" content="Tôn Thế Dân, chuyên cung cấp tôn , ngói, sắt thép cho công trình">
    <meta name="author" content="Tôn Thế Dân">
	<meta name="keywords" content="ton the dan, ton, ngoi, sat, thep, gia lai, pleiku ,tôn ,ngói, sắt , thép">
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
					<a class="navbar-brand" href="<?php echo base_url() ?>trang-chu"><img src="<?php echo base_url() ?>public/assets/img/logo.png" alt="Logo">
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
	<section id="content" style="margin-bottom:50px;margin-top:150px">
		<div class="container">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 product-content" id="list-content">
				<div class="product-wrap" id="info-content">
					<div class="content-ct">
						<div class="fs-ne2-it clearfix" style="padding-top: 5px">
							<div class="fs-ne2-it clearfix">
								<div class="entry-title text-center">
									<h2 class="title-sp"><strong>Thông tin sản phẩm</strong></h2>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4  wow fadeIn" data-wow-duration="1s" data-wow-delay=".3s">
									<div class="item-img baguetteBoxThree gallery ">
										<a href="<?php echo base_url() ?>public/assets/images/product/<?php echo $row['img']; ?>">
											<img src="<?php echo base_url() ?>public/assets/images/product/<?php echo $row['img']; ?>" alt="image" style="height:100%;border-radius:20px;width:100%">
										</a>
										<div class="row" style="height:60px; margin-top:10px">
											<div class="col-md-6 wow fadeIn">
												<?php if(!empty($row['img1'])) :?>
													<a href="<?php echo base_url() ?>public/assets/images/product/<?php echo $row['img1']; ?>">
														<img src="<?php echo base_url() ?>public/assets/images/product/<?php echo $row['img1']; ?>" alt="image" style="height:100%;width:100%">
													</a>
												<?php else: ?>
													<a href="<?php echo base_url() ?>public/assets/images/product/default.png">
														<img src="<?php echo base_url() ?>public/assets/images/product/default.png?>" alt="image" style="height:100%;width:100%">
													</a>
												<?php endif;?>
											</div>
											<div class="col-md-6 wow fadeIn">
												<?php if(!empty($row['img2'])) :?>
													<a href="<?php echo base_url() ?>public/assets/images/product/<?php echo $row['img2']; ?>">
														<img src="<?php echo base_url() ?>public/assets/images/product/<?php echo $row['img2']; ?>" alt="image" style="height:100%;width:100%">
													</a>
												<?php else: ?>
													<a href="<?php echo base_url() ?>public/assets/images/product/default.png">
														<img src="<?php echo base_url() ?>public/assets/images/product/default.png?>" alt="image" style="height:100%;width:100%">
													</a>
												<?php endif;?>
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-8  wow fadeIn" data-wow-duration="1s" data-wow-delay=".6s">
									<div class="product-view-content">
										<div class="product-view-name">
											<h1><?php echo $row['name'] ?></h1>
										</div>
										<div class="product-view-price">
											<p><b>Giá bán: </b>
												<?php if ($row['price'] == 0) : ?>
													<span style="color:red;font-size:20px"><strong>Liên hệ!</strong></span>
												<?php else : ?>
													<span style="color:red;font-size:20px"><strong><?php echo (number_format($row['price'])); ?> vn₫</strong></span>
												<?php endif; ?>
											</p>
										</div>
										<div style="margin-top: 10px;">
											<p>
												<b>Tình trạng</b>
												<span>Nguyên hộp. Đầy đủ từ nhà sản xuất, gồm: Sản phẩm, hướng dẫn sử dụng,...</span>
											</p>
										</div>
										<div style="margin-top: 10px;">
											<b>Đặt hàng gọi ngay: </b> <span style="color:red"><strong>032 742 7268</strong></span>
										</div>
										<div style="margin-top: 10px;" class="product-view-name">
											<b>Thông tin sản phẩm:</b>
											<br>
											<p><?php echo $row['detail'] ?></p>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top:15px">
				<a href="<?php echo base_url() ?>sanpham" class="btn button btn-detail">Trờ về</a>
			</div>
		</div>
	</section>

	<section id="contact">
		<!-- =============== container =============== -->
		<div class="container">
			<div class="row">
				<div class="title">
					<h2 class="orange-text">Contact</h2>
					<p>Vui lòng để lại thông tin để chúng tôi phục vụ bạn.</p>
				</div>
			</div>

			<div class="row">

				<div class="col-xs-12 col-sm-12 col-md-12 wow bounceIn animated" data-wow-delay=".1s">

					<div class="ajax-hidden">
						<h4 class="text-success orange-text" style="display:none">Thông tin của bạn đã được lưu lại , chúng tôi sẽ liên lạc lại với bạn sớm nhất.</h4>
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
		<div class="container-fluid">
			<div class="row">
				<div data-wow-delay=".6s" class="col-xs-12 col-sm-6 col-md-6 wow bounceIn  animated" style="visibility: visible; animation-delay: 0.6s; animation-name: bounceIn;">

					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3872.2716518549105!2d108.00856421431358!3d13.94242419660515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x316c2048c4334439%3A0xfff7d52933538cd9!2zTmjDoCBNw6F5IFTDtG4gVGjhur8gRMOibg!5e0!3m2!1svi!2s!4v1660789263995!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

				</div>
				<div data-wow-delay=".9s" class="col-xs-12 col-sm-6 col-md-6 wow bounceIn  animated" style="visibility: visible; animation-delay: 0.6s; animation-name: bounceIn;">

					<section class="widget widget_text" id="text-15" style="height:450px; padding:100px">
						<p><strong>601 Trường Chinh, Chi Lăng, Thành phố Pleiku, Gia Lai<br>
								Tel: 0269 3 777879<br>
								Mobile: 01 234-56786<br>
								E-mail: <a href="#">thehoai@gmail.com</a> </strong></p>
						<a href="https://www.google.com/maps/place/Nh%C3%A0+M%C3%A1y+T%C3%B4n+Th%E1%BA%BF+D%C3%A2n/@13.9424242,108.0085642,17z/data=!3m1!4b1!4m5!3m4!1s0x316c2048c4334439:0xfff7d52933538cd9!8m2!3d13.9424252!4d108.0107236" style="font-size:20px" target="_blank">Click để đến địa chỉ</a> →
						<ul class="social-links">
							<li><a class="wow fadeInUp animated" href="https://www.facebook.com/Cty-TNHH-T%C3%B4n-Th%E1%BA%BF-D%C3%A2n-883758681729013/" style="visibility: visible; animation-name: fadeInUp;"><i class="fa fa-facebook"></i></a></li>
							<li><a data-wow-delay=".1s" class="wow fadeInUp animated" href="" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;"><i class="fa fa-twitter"></i></a></li>
							<li><a data-wow-delay=".2s" class="wow fadeInUp animated" href="#" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;"><i class="fa fa-google-plus"></i></a></li>
							<li><a data-wow-delay=".4s" class="wow fadeInUp animated" href="#" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;"><i class="fa fa-pinterest"></i></a></li>
							<li><a data-wow-delay=".5s" class="wow fadeInUp animated" href="#" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;"><i class="fa fa-envelope"></i></a></li>
						</ul>
					</section>
				</div>
			</div>
		</div>
		</div><!-- =============== container end =============== -->
	</footer>
	<a class="btn-call-now btn-call-01 cursorsHover" href="tel:02693.777879" rel="nofollow">
		<em class="licon-telephone"><i class="fa fa-phone"></i></em>
		<span class="cursorsHover">02693.777879</span>
	</a>
	<a class="btn-call-now btn-call-02 cursorsHover" href="tel:0907222444" rel="nofollow">
		<em class="licon-telephone"><i class="fa fa-phone"></i></em>
		<span class="cursorsHover">0907222444</span>
	</a>

	<div class="go-top"><i class="fa fa-angle-double-up" aria-hidden="true"></i><i class="fa fa-angle-double-up" aria-hidden="true"></i></div>
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
	<script src="<?php echo base_url() ?>/public/assets/js/creative.js"> </script>
	<script src="<?php echo base_url() ?>/public/assets/js/jquery.nicescroll.min.js"></script>

	<script>
		$(document).ready(function() {

			var nice = $("html").niceScroll(); // The document page (body)

			$("#div1").html($("#div1").html() + ' ' + nice.version);

			$("#boxscroll").niceScroll({
				cursorborder: "",
				cursorcolor: "#00F",
				boxzoom: true
			}); // First scrollable DIV

			$("#boxscroll2").niceScroll("#contentscroll2", {
				cursorcolor: "#F00",
				cursoropacitymax: 0.7,
				boxzoom: true,
				touchbehavior: true
			}); // Second scrollable DIV
			$("#boxframe").niceScroll("#boxscroll3", {
				cursorcolor: "#0F0",
				cursoropacitymax: 0.7,
				boxzoom: true,
				touchbehavior: true
			}); // This is an IFrame (iPad compatible)

			$("#boxscroll4").niceScroll("#boxscroll4 .wrapper", {
				boxzoom: true
			}); // hw acceleration enabled when using wrapper

		});
	</script>
	<script>
		window.onload = function() {
			if (typeof oldIE === 'undefined' && Object.keys)
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
		function saveLienHe() {
			var strurl = "<?php echo base_url(); ?>" + 'lienhe/insertCmt';
			var name = $("#name").val();
			var email = $("#email").val();
			var phone = $("#sdt").val();
			var description = $("#description").val();
			var validate = false;
			if (name === "") {
				$("#name").focus();
			} else if (phone == "") {
				$("#sdt").focus();
			} else if (description == "") {
				$("#description").focus();
			} else {
				validate = true;
			}
			if (validate) {
				jQuery.ajax({
					url: strurl,
					type: 'POST',
					dataType: 'json',
					data: {
						name: name,
						phone: phone,
						email: email,
						description: description
					},
					success: function(data) {
						$(".text-success").show();
						$("#name").val("");
						$("#email").val("");
						$("#sdt").val("");
						$("#description").val("");
						setTimeout(function() { $(".text-success").hide(); }, 3000);
					}
				});
			}
		}
	</script>
</body>

</html>