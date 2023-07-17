<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AId creative</title>
    <link rel="stylesheet" href="resources/css/login.css" />
    <link rel="stylesheet" type="text/css" href="./style/login.css">
    <link rel="stylesheet" type="text/css" href="./style/common.css">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <script src="./js/login.js" defer=""></script>

    
    <body>
    <div class="title">AId creative</div>



    
        <div class="login_wrapper">
            <div class="logo"> AId creative </div>
            <form class="login_form">
                <input id="LOGIN_ID" class="login_text" type="text" name="id" placeholder=" ID ">
                <input id="LOGIN_PW" class="login_text" type="password" name="pw" placeholder=" PW ">
                <button id="LOGIN_BTN" class="login_btn" type="button" disabled>Sign in</button>
                <h3>------ 회원이 아니신가요? ------</h3>
            </form>
                <button id="btn-modal" class="join_btn">Sign up</button>


        </div>
    
        <div id="modal" class="modal-overlay">
            <div class="close-area">X</div>
            
                <div class="logo"> AId creative </div>

                <form class="join_form">
                        <input id="ID" class="join_text" type="text" placeholder=" ID를 입력하세요 "> 
                        <input id="PW" class="join_text" type="text" placeholder=" PW를 입력하세요 "> 
                        <input id="PHONE" class="join_text" type="text" placeholder="핸드폰 번호를 입력하세요"> 
                        <input id="NICK" class="join_text" type="text" placeholder=" 닉네임 입력하세요 ">
                        <button class="join_btn">Sign up</button>
                </form>







            
        </div>
    </div>











    <script>
        const modal = document.getElementById("modal");

        const modalContent = document.getElementById("modalContent");

        //모달창 버튼을 클릭하면 모달을 나타나게 한다.
        const btnModal = document.getElementById("btn-modal");
        btnModal.addEventListener("click", e => {
            modal.style.display = "flex";
           
        });

        //모달창의 x를 누르면 모달창이 사라진다.
        const closeBtn = modal.querySelector(".close-area");
        closeBtn.addEventListener("click", evt => {
            modal.style.display = "none";
        });

        //모달창의 바깥 영역을 클릭하면 꺼지게 한다.
        modal.addEventListener("click", e => {
            const evTarget = e.target;
            if (evTarget.classList.contains("modal-overlay")) {
                modal.style.display = "none";
            }
        });

        // esc 버튼을 누르면 모달창 닫기
        window.addEventListener("keyup", e => {
            if (modal.style.display == "flex" && e.key == "Escape") {
                modal.style.display = "none";
            }
        });



    </script>




</body>

</html>