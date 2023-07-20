package kr.AId_creative.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class userController {
	
	@Autowired
	private MailSendService mailService;

	// 회원가입 이메일 인증
	@PostMapping("/checkEmail")
	public @ResponseBody String checkEmail(String u_email) {
		System.out.println(u_email);
		return mailService.joinEmail(u_email);
	}

}
