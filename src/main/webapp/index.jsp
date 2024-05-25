<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title><jsp:include page="header/projectTitle.jsp"/></title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="style.css">

</head>

<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="lds-ellipsis">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<%
	session.setAttribute("u_type","Geust");
	%>
	<jsp:include page="header\mainMenu.jsp"></jsp:include>

	<!-- ##### Hero Area Start ##### -->
	<div class="hero-area">
		<div class="hero-slideshow owl-carousel">

			<!-- Single Slide -->
			<div class="single-slide bg-img">
				<!-- Background Image-->
				<div class="slide-bg-img bg-img bg-overlay"
					style="background-image: url(img/bg-img/1.jpg);"></div>
				<!-- Welcome Text -->
				<div class="container h-100">
					<div class="row h-100 align-items-center justify-content-center">
						<div class="col-12 col-lg-9">
							<div class="welcome-text text-center">
								<h6 data-animation="fadeInUp" data-delay="100ms">Trusted from 2021</h6>
								<h2 data-animation="fadeInUp" data-delay="300ms">
									Shudleshwar <span>Pashukhadya</span> & Dal Mil
								</h2>
								<p data-animation="fadeInUp" data-delay="500ms">Vakratunda Mahakaya Suryakoti Samaprabha
Nirvighnam Kuru Me Deva Sarva Karyeshu Sarvadaa</p>
								<a href="#" class="btn credit-btn mt-50"
									data-animation="fadeInUp" data-delay="700ms">Discover</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Slide Duration Indicator -->
				<div class="slide-du-indicator"></div>
			</div>

			<!-- Single Slide -->
			<div class="single-slide bg-img">
				<!-- Background Image-->
				<div class="slide-bg-img bg-img bg-overlay"
					style="background-image: url(img/bg-img/5.jpg);"></div>
				<!-- Welcome Text -->
				<div class="container h-100">
					<div class="row h-100 align-items-center justify-content-center">
						<div class="col-12 col-lg-9">
							<div class="welcome-text text-center">
								<h6 data-animation="fadeInDown" data-delay="100ms">Trusted from 2021</h6>
								<h2 data-animation="fadeInDown" data-delay="300ms">
										Shudleshwar <span>Pashukhadya</span> & Dal Mil
								</h2>
								<p data-animation="fadeInDown" data-delay="500ms">Vakratunda Mahakaya Suryakoti Samaprabha
Nirvighnam Kuru Me Deva Sarva Karyeshu Sarvadaa</p>
								<a href="#" class="btn credit-btn mt-50"
									data-animation="fadeInDown" data-delay="700ms">Discover</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Slide Duration Indicator -->
				<div class="slide-du-indicator"></div>
			</div>

			<!-- Single Slide -->
			<div class="single-slide bg-img">
				<!-- Background Image-->
				<div class="slide-bg-img bg-img bg-overlay"
					style="background-image: url(img/bg-img/1.jpg);"></div>
				<!-- Welcome Text -->
				<div class="container h-100">
					<div class="row h-100 align-items-center justify-content-center">
						<div class="col-12 col-lg-9">
							<div class="welcome-text text-center">
								<h6 data-animation="fadeInUp" data-delay="100ms">Trusted from 2021</h6>
								<h2 data-animation="fadeInUp" data-delay="300ms">
										Shudleshwar <span>Pashukhadya</span> & Dal Mil
								</h2>
								<p data-animation="fadeInUp" data-delay="500ms">Vakratunda Mahakaya Suryakoti Samaprabha
Nirvighnam Kuru Me Deva Sarva Karyeshu Sarvadaa</p>
								<a href="#" class="btn credit-btn mt-50"
									data-animation="fadeInUp" data-delay="700ms">Discover</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Slide Duration Indicator -->
				<div class="slide-du-indicator"></div>
			</div>

			<!-- Single Slide -->
			<div class="single-slide bg-img">
				<!-- Background Image-->
				<div class="slide-bg-img bg-img bg-overlay"
					style="background-image: url(img/bg-img/5.jpg);"></div>
				<!-- Welcome Text -->
				<div class="container h-100">
					<div class="row h-100 align-items-center justify-content-center">
						<div class="col-12 col-lg-9">
							<div class="welcome-text text-center">
								<h6 data-animation="fadeInDown" data-delay="100ms">Trusted from 2021</h6>
								<h2 data-animation="fadeInDown" data-delay="300ms">
										Shudleshwar <span>Pashukhadya</span> & Dal Mil
								</h2>
								<p data-animation="fadeInDown" data-delay="500ms">Vakratunda Mahakaya Suryakoti Samaprabha
Nirvighnam Kuru Me Deva Sarva Karyeshu Sarvadaa</p>
								<a href="#" class="btn credit-btn mt-50"
									data-animation="fadeInDown" data-delay="700ms">Discover</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Slide Duration Indicator -->
				<div class="slide-du-indicator"></div>
			</div>

		</div>
	</div>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Features Area Start  
	<section class="features-area section-padding-100-0">
	<div class="container">
		<div class="row align-items-end">
			<div class="col-12 col-sm-6 col-lg-3">
				<div class="single-features-area mb-100 wow fadeInUp"
					data-wow-delay="100ms">
					
					<div class="section-heading">
						<div class="line"></div>
						<p>Take look at our</p>
						<h2>Our Loans</h2>
					</div>
					<h6>In vitae nisi aliquam, scelerisque leo a, volutpat sem.
						Viva mus rutrum dui fermentum eros hendrerit.</h6>
					<a href="#" class="btn credit-btn mt-50">Discover</a>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-lg-3">
				<div class="single-features-area mb-100 wow fadeInUp"
					data-wow-delay="300ms">
					<img src="img/bg-img/2.jpg" alt="">
					<h5>We take care of you</h5>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-lg-3">
				<div class="single-features-area mb-100 wow fadeInUp"
					data-wow-delay="500ms">
					<img src="img/bg-img/3.jpg" alt="">
					<h5>No documents needed</h5>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-lg-3">
				<div class="single-features-area mb-100 wow fadeInUp"
					data-wow-delay="700ms">
					<img src="img/bg-img/4.jpg" alt="">
					<h5>Fast &amp; easy loans</h5>
				</div>
			</div>
		</div>
	</div>
	</section> ###### -->
	<!-- ##### Features Area End ###### -->

	<!-- ##### Call To Action Start ###### -->
	<section class="cta-area d-flex flex-wrap"> <!-- Cta Thumbnail -->
	<div class="cta-thumbnail bg-img jarallax"
		style="background-image: url(img/bg-img/5.jpg);"></div>

	<!-- Cta Content -->
	<div class="cta-content">
		<!-- Section Heading -->
		<div class="section-heading white">
			<div class="line"></div>
			<p>Bold desing and beyound</p>
			<h2>Helping small businesses like yours</h2>
		</div>
		<h6>Shudleshwar Pashukhadya
		Dal Mil
		Online Services
		</h6>
		<div class="d-flex flex-wrap mt-50">
			<!-- Single Skills Area -->
			<div class="single-skils-area mb-70 mr-5">
				<div id="circle" class="circle" data-value="0.90">
					<div class="skills-text">
						<span>90%</span>
					</div>
				</div>
				<p>Energy</p>
			</div>

			<!-- Single Skills Area -->
			<div class="single-skils-area mb-70 mr-5">
				<div id="circle2" class="circle" data-value="0.75">
					<div class="skills-text">
						<span>75%</span>
					</div>
				</div>
				<p>power</p>
			</div>

			<!-- Single Skills Area -->
			<div class="single-skils-area mb-70">
				<div id="circle3" class="circle" data-value="0.97">
					<div class="skills-text">
						<span>97%</span>
					</div>
				</div>
				<p>resource</p>
			</div>
		</div>
		<a href="#" class="btn credit-btn box-shadow btn-2">Read More</a>
	</div>
	</section>
	<!-- ##### Call To Action End ###### -->

	<!-- ##### Call To Action Start ###### -->
	<section class="cta-2-area wow fadeInUp" data-wow-delay="100ms">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Cta Content -->
				<div
					class="cta-content d-flex flex-wrap align-items-center justify-content-between">
					<div class="cta-text">
						<h4>Are you in need for a load? Get in touch with us.</h4>
					</div>
					<div class="cta-btn">
						<a href="#" class="btn credit-btn box-shadow">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- ##### Call To Action End ###### -->

	<!-- ##### Services Area Start ###### -->
	<section class="services-area section-padding-100-0">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Section Heading -->
				<div class="section-heading text-center mb-100 wow fadeInUp"
					data-wow-delay="100ms">
					<div class="line"></div>
					<p>Take look at our</p>
					<h2>Our services</h2>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- Single Service Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-service-area d-flex mb-100 wow fadeInUp"
					data-wow-delay="200ms">
					<div class="icon">
						<i class="icon-profits"></i>
					</div>
					<div class="text">
						<h5>All the loans</h5>
						<p>Morbi ut dapibus dui. Sed ut iaculis elit, quis varius
							mauris. Integer ut ultricies orci, lobortis egestas sem.</p>
					</div>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-service-area d-flex mb-100 wow fadeInUp"
					data-wow-delay="300ms">
					<div class="icon">
						<i class="icon-money-1"></i>
					</div>
					<div class="text">
						<h5>Easy and fast answer</h5>
						<p>Morbi ut dapibus dui. Sed ut iaculis elit, quis varius
							mauris. Integer ut ultricies orci, lobortis egestas sem.</p>
					</div>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-service-area d-flex mb-100 wow fadeInUp"
					data-wow-delay="400ms">
					<div class="icon">
						<i class="icon-coin"></i>
					</div>
					<div class="text">
						<h5>No additional papers</h5>
						<p>Morbi ut dapibus dui. Sed ut iaculis elit, quis varius
							mauris. Integer ut ultricies orci, lobortis egestas sem.</p>
					</div>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-service-area d-flex mb-100 wow fadeInUp"
					data-wow-delay="500ms">
					<div class="icon">
						<i class="icon-smartphone-1"></i>
					</div>
					<div class="text">
						<h5>Secure financial services</h5>
						<p>Morbi ut dapibus dui. Sed ut iaculis elit, quis varius
							mauris. Integer ut ultricies orci, lobortis egestas sem.</p>
					</div>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-service-area d-flex mb-100 wow fadeInUp"
					data-wow-delay="600ms">
					<div class="icon">
						<i class="icon-diamond"></i>
					</div>
					<div class="text">
						<h5>Good investments</h5>
						<p>Morbi ut dapibus dui. Sed ut iaculis elit, quis varius
							mauris. Integer ut ultricies orci, lobortis egestas sem.</p>
					</div>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-service-area d-flex mb-100 wow fadeInUp"
					data-wow-delay="700ms">
					<div class="icon">
						<i class="icon-piggy-bank"></i>
					</div>
					<div class="text">
						<h5>Accumulation goals</h5>
						<p>Morbi ut dapibus dui. Sed ut iaculis elit, quis varius
							mauris. Integer ut ultricies orci, lobortis egestas sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- ##### Services Area End ###### -->



	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area section-padding-100-0"> <!-- Copywrite Area -->
	<div class="copywrite-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div
						class="copywrite-content d-flex flex-wrap justify-content-between align-items-center">
						<!-- Copywrite Text -->
						<p>Learning And Project Development Support</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>

</html>