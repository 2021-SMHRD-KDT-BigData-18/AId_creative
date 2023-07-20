<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="resources/css/cvtP.css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>

<body>

	<div class="mail_wrap">
		<div class="mail_name">이메일</div>
		<div class="mail_input_box">
			<input type="text" name="u_email" id="u_email" placeholder="이메일">
			<div class="mail_check_wrap">
				<div class="mail_check_button">
					<button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
				</div>
				<div class="mail_check_input_box">
					<input class="form-control mail-check-input"
						placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
				</div>
				<span id="mail-check-warn"></span>
			</div>
		</div>
	</div>
	

	<script type="text/javascript">
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
					alert('인증번호가 전송되었습니다.');
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