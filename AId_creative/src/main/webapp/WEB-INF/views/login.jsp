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
<link rel="stylesheet" type="text/css" href="resources/css/login.css">

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
<script src="https://replit.com/public/js/replit-badge-v2.js"
	theme="dark" position="bottom-right"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>		


</head>

<body>
	<div class="login_wrapper">
		<div class="logo"
			onclick="location.href='goHome'">
			AId creative</div>
		<form class="login_form" method="post" action="login">
			<input id="LOGIN_ID" class="login_text" type="text" name="user_id"
				placeholder=" ID "> <input id="LOGIN_PW" class="login_text"
				type="password" name="user_pw" placeholder=" PW ">
			<button id="LOGIN_BTN" class="login_btn">Sign in</button>
			<button id="btn-modal" class="btn_join" type="button">Sign
				up</button>
		</form>


	</div>

	<div id="modal" class="modal-overlay">
		<div class="close-area">X</div>

		<div class="logo1">AId creative</div>

		<form class="join_form" action="register" method="POST">
			<input id="ID" class="join_text" type="text" name="user_id"
				placeholder=" ID를 입력하세요 ">
			<p id="result"></p>
			<input id="PW" class="join_text" type="text" name="user_pw"
				placeholder=" PW를 입력하세요 "> <input id="NICK"
				class="join_text" type="text" name="user_nick"
				placeholder="NickName을 입력하세요 "> <input id="u_email"
				class="join_text" type="text" name="u_email"
				placeholder="Email을 입력하세요">
			<div class="mail_check_wrap">
				<div class="mail_check_button">
					<button type="button" class="btn_primary" id="mail-Check-Btn">본인인증</button>
				</div>
				<div class="mail_check_input_box">
					<input class="form-control mail-check-input"
						placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
				</div>
				<span id="mail-check-warn"></span>
			</div>

			<button id="btn_join" class="btn_join" type="button">Sign up</button>
		</form>








	</div>
	</div>

	<script type="text/javascript">
	
	
		//모달창 버튼을 클릭하면 모달을 나타나게 한다.
		//const modal = document.getElementById("modal");
	
		$('#btn-modal').on('click', function () {
			$('#modal').show();
			$('#modal').css('display', 'flex');
		});
		
		// 아이디 중복 확인
		
		$(document).ready(function () {
			var input = $('#ID');
			input.on('input', idCheck);
	    });
		
		//태그의 ID와 함수이름이 동일하면 안됨!
		function idCheck() {
			// input에 입력된 값이 DB에 있는지 확인
			// input에 입력된 값
			// this : 이벤트 대상을 가리킴

			var value = $(this).val();
			console.log(value);
			// check.do라고 요청
			// Post 방식
			// 입력받은 값을 가지고
			// 비동기통신(Ajax) 방식

			$.ajax({
				url: "check",
				type: "post",
				data: {
					"user_id": value
				},
				success: function (res) {
					var p = $('#result');

					if (res == "OK") {
						p.html('사용가능한 아이디 입니다.').css("color", "skyblue");
					} else {
						p.html('중복된 아이디 입니다.').css("color", "orange");
					}

				},
				error: function (e) {
					// 요청이 실패하면 실행될 콜백함수
					// alert("요청 실패!");
					swal("요청 실패","다시 시도하세요", "error");
				}
			});

		};

		
		// 회원가입 눌렀을 때
		$('#btn_join').on('click', function () {
			//alert('회원가입완료')
			
			let id = $('#ID').val();
	           let pw = $('#PW').val();
	           let nick = $('#NICK').val();
	           console.log(id);
	           console.log(pw);
	           console.log(nick);
	           
	           $.ajax({
	              url: "register",
	              type: "post",
	              data: {
	                 "user_id": id,
	                 "user_pw": pw,
	                 "user_nick": nick,
	                 dataType : "json"
	              },
	              success: function (res) {
						console.log(res)
	                 	if (res=='success') {
	                 		swal({title:"환영합니다",text:"회원가입 성공!",icon:"success"}
	                 		 ,function(){
             					 window.location.replace('goLogin_Home');
         						 });
	                    	// alert("회원가입에 성공했어요");
	                    	// window.location.replace('goLogin')
	                 		
	                 	
	                 	} else {
	                    	swal("회원가입에 실패했어요","다시 시도하세요", "error");
	                 	}
						
						}
	  
	              ,
	              error: function (e) {
	                 // 요청이 실패하면 실행될 콜백함수
	            	  swal("실패했어요","다시 시도하세요", "error");
	              }
	           });
		});
		

		// const modalContent = document.getElementById("modalContent");





		//모달창 버튼을 클릭하면 모달을 나타나게 한다.
		//const btnModal = document.getElementById("btn-modal");
		//btnModal.addEventListener("click", e => {
		//	modal.style.display = "flex";

		//});

		//모달창의 x를 누르면 모달창이 사라진다.
		const closeBtn = modal.querySelector(".close-area");
		closeBtn.addEventListener("click", evt => {
			modal.style.display = "none";
		});
		
		//모달창의 바깥 영역을 클릭하면 꺼지게 한다.
		modal.addEventListener("click", e => {
			const evTarget = e.target;
			if (evTarget.classList.contains("close-area")) {
				modal.style.display = "none";
			}
		});

		// esc 버튼을 누르면 모달창 닫기
		window.addEventListener("keyup", e => {
			if (modal.style.display == "flex" && e.key == "Escape") {
				modal.style.display = "none";
			}
		});


		/*이메일 인증*/
		$('#mail-Check-Btn').click(function() {
			var email = $('#u_email').val();
			console.log(email);
			var checkEmail = $('.mail-check-input');

			$.ajax({
				url : 'checkEmail',
				type : 'post',
				data : {
					"u_email" : email
				},
				success : function(data) {
					console.log(data);
					checkEmail.attr('disabled', false);
					code = data;
					// alert('인증번호가 전송되었습니다.');
             		swal("인증번호가 전송되었습니다.","메일을 확인하세요","success")

				}
			})
		})
		
	// 인증번호 비교 
	// blur -> focus가 벗어나는 경우 발생
	$('.mail-check-input').blur(
			function() {
				const inputCode = $(this).val();
				const $resultMsg = $('#mail-check-warn');

				if (inputCode === code) {
					$resultMsg.html('인증번호가 일치합니다.');
					$resultMsg.css('color', 'green');
					$('#mail-Check-Btn').attr('disabled', true);
					$('#userEamil1').attr('readonly', true);
					$('#userEamil2').attr('readonly', true);
					$('#userEmail2').attr('onFocus',
							'this.initialSelect = this.selectedIndex');
					$('#userEmail2').attr('onChange',
							'this.selectedIndex = this.initialSelect');
				} else {
					$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
					$resultMsg.css('color', 'red');
				}
			});
</script>


</body>

</html>