<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title class="title">AId creative mainpage</title>
    <link rel="stylesheet" href="/style.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/home.css" />

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap">

    <script src="https://replit.com/public/js/replit-badge-v2.js" theme="dark" position="bottom-right"></script>
    <script src="./js/login.js" defer=""></script>

    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
<body>
    <div class="logo1">AId creative</div>
    <div class="main">

        <div class="tab">
            <from action="goLogin" method="POST">

                <!-- <button class="btn-open-popup">Login</div> -->
                <button class="btn-open-popup" onclick="location.href='goLogin'">Login / Join</button>
                <!-- <button class="btn-open-popup">Join</button> -->
        </div>
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





        <div class="modal hidden">
        
            <div class="modal__background"></div>
            <div class="modal__content">
                <h1 style="font-family:Lobster">AId creative</h1>
                <h3>작가님 환영합니다. <br>
                    AId creative 입니다. <br>
                    AId는 작가님의 그림을 학습시켜 보다 빠르고 <br>수월한 작업을 할 수 있게 도움을 드리는 서비스 입니다.
                </h3>
                   
                <ul>
                    <li ALIGN=LEFT>학습하기</li>
                    <p ALIGN=LEFT>
                        - 이미지 파일을 업로드하여 작가님의 그림을 학습킵니다. <br> 
                        (약 0시간 소요) > AI가 학습하는데에 최초 1회는 시간이 다소 소요됩니다.</p>
                    <li ALIGN=LEFT>변환하기</li>
                    <p ALIGN=LEFT>- 학습시켜 생성된 그림체를 이용하여 변환된 이미지를 다운로드 합니다.</p>
                    <li ALIGN=LEFT>마이페이지</li>
                    <p ALIGN=LEFT> - 한번 학습시켜놓은 그림체는 마이페이지 목록에서 확인 가능합니다.<br>
                        저장되어 있는 모델들은 학습과정 생략 후 바로 변환 가능합니다 </p>
                    
                </ul>
                    
                <button id="aaa">close</button>
            </div>
        </div>

    <script>
        $(document).ready(function () {
            $('.customer-logos').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 3000,
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

        function displayModal() {
            modal.classList.toggle("hidden");
        }


        const closeButton = document.querySelector("#aaa");
        const modal = document.querySelector(".modal");
        const modalBackground = modal.querySelector(".modal__background");

        modal.classList.toggle("hidden");
        closeButton.addEventListener("click", displayModal)
        modalBackground.addEventListener("click", displayModal);
        
        
        
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