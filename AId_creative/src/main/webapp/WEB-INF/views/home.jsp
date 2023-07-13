<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title class="title">AId creative mainpage</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="resources/css/NewFile.css" />
<script src="script.js"></script>
<script src="https://replit.com/public/js/replit-badge-v2.js"
	theme="dark" position="bottom-right"></script>
<script src="./js/login.js" defer=""></script>

<script src="https://code.jquery.com/jquery-2.2.0.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<div class="title">AId creative</div>
	<div class="main">

		<div class="tab">
			<!-- <button class="btn-open-popup">Login</div> -->
			<button class="btn-open-popup" onclick="location.href='Login.html'">Login
				/ Join</button>
			<!-- <button class="btn-open-popup">Join</button> -->
		</div>
	</div>
	<div>

		<div class="container">
			<h2>AId creative sample</h2>
			<section class="customer-logos slider">
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg">
				</div>
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/3d-box-logo_1103-876.jpg">
				</div>
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/blue-tech-logo_1103-822.jpg">
				</div>
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/colors-curl-logo-template_23-2147536125.jpg">
				</div>
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/abstract-cross-logo_23-2147536124.jpg">
				</div>
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/football-logo-background_1195-244.jpg">
				</div>
				<div class="slide">
					<img
						src="https://image.freepik.com/free-vector/background-of-spots-halftone_1035-3847.jpg">
				</div>

			</section>
		</div>

	</div>

	<script>
		$(document).ready(function() {
			$('.customer-logos').slick({
				slidesToShow : 6,
				slidesToScroll : 1,
				autoplay : true,
				autoplaySpeed : 1500,
				arrows : false,
				dots : false,
				pauseOnHover : false,
				responsive : [ {
					breakpoint : 768,
					settings : {
						slidesToShow : 4
					}
				}, {
					breakpoint : 520,
					settings : {
						slidesToShow : 3
					}
				} ]
			});
		});
		
	</script>

</body>