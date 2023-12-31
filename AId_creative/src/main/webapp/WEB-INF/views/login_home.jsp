<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title class="title">AId creative mainpage</title>
    <link rel="stylesheet" href="resources/css/login_home.css" />

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap">

    <script src="https://replit.com/public/js/replit-badge-v2.js" theme="dark" position="bottom-right"></script>
    <script src="./js/login.js" defer=""></script>

    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    
    <body>
 <div class="logo1">AId creative</div>
    <div class="main">

        <button class="tab" onclick="location.href='goTrain'">train</button>
        <button class="tab" onclick="location.href='goCvt'">convert</button>
        <button class="tab" onclick="location.href='goMyPage'">mypage</button>

        <form action="goHome" method="post">
            <!-- <button class="btn-open-popup">Login</div> -->
            <button class="btn-open-popup" onclick="location.href='goLogout'">Logout</button>
            <!-- <button class="btn-open-popup">Join</button> -->
            </from>
    </div>

    

       <div class="nav_wrap">
           <!--  <h2 style="font-family:Lobster">Our image sample</h2>  -->
          <section class="customer-logos slider">
                <ul class="slide" id="img1"><img
                        src="https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg" alt=""></ul>
                <ul class="slide" id="img2"><img src="https://image.freepik.com/free-vector/3d-box-logo_1103-876.jpg" alt=""></ul>
                <ul class="slide" id="img3"><img src="https://image.freepik.com/free-vector/blue-tech-logo_1103-822.jpg" alt=""></ul>
                <ul class="slide" id="img4"><img
                        src="https://image.freepik.com/free-vector/colors-curl-logo-template_23-2147536125.jpg" alt=""></ul>
                <ul class="slide" id="img5"><img
                        src="https://image.freepik.com/free-vector/abstract-cross-logo_23-2147536124.jpg" alt=""></ul>
                <ul class="slide" id="img6"><img
                        src="https://image.freepik.com/free-vector/football-logo-background_1195-244.jpg" alt=""></ul>
                <ul class="slide" id="img7"><img
                        src="https://image.freepik.com/free-vector/background-of-spots-halftone_1035-3847.jpg" alt=""></ul>

            </section>
        </div>
   

    <script>
        $(document).ready(function () {
            $('.customer-logos').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 1500,
                arrows: false,
                dots: false,
                pauseOnHover: false,
                responsive: [{
                    breakpoint: 800,
                    settings: {
                        slidesToShow: 4
                    }
                }, {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 3
                    }
                }]
            });
        });
        
        
        
        
        
        // 샘플이미지 백그라운드 변경
        $('#img1').hover(function () {
        $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg')")
                         .css("background-repeat", "no-repeat").css("background-position", "center")

        });
       $('#img2').hover(function () {
           $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/3d-box-logo_1103-876.jpg')")
           .css("background-repeat", "no-repeat").css("background-position", "center")
       });
       $('#img3').hover(function () {
           $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/blue-tech-logo_1103-822.jpg')")
           .css("background-repeat", "no-repeat").css("background-position", "center")
       });
       $('#img4').hover(function () {
           $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/colors-curl-logo-template_23-2147536125.jpg')")
           .css("background-repeat", "no-repeat").css("background-position", "center")
       });
       $('#img5').hover(function () {
           $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/abstract-cross-logo_23-2147536124.jpg')")
           .css("background-repeat", "no-repeat").css("background-position", "center")
       });
       $('#img6').hover(function () {
           $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/football-logo-background_1195-244.jpg')")
           .css("background-repeat", "no-repeat").css("background-position", "center")
       });
       $('#img7').hover(function () {
           $('.nav_wrap').css("background-image", "url('https://image.freepik.com/free-vector/background-of-spots-halftone_1035-3847.jpg')")
           .css("background-repeat", "no-repeat").css("background-position", "center")
       });
    </script>

  
  </body>