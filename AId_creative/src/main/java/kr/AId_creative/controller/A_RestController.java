package kr.AId_creative.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.AId_creative.entity.T_User;
import kr.AId_creative.mapper.A_Mapper;

@RestController
public class A_RestController {

	@Autowired
	private A_Mapper mapper;

	// 중복확인 페이지
	@PostMapping("/check")
	public String check(HttpServletRequest req, Model model) {
		String id = req.getParameter("user_id");
		System.out.println(id);

		// String nick = req.getParameter("user_nick");
		T_User user = mapper.check(id);

		if (user == null) {
			// HttpSession session = req.getSession(); // 초기화
			// session.setAttribute("user_id", id); // 값 설정
			// session.setAttribute("user_nick");
			return "OK";
		} else {
			return "FAIL";
		}
	}

	// 회원가입 페이지
	@PostMapping("register")
	public String register(HttpServletRequest req, Model model) {
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		String nick = req.getParameter("user_nick");

		T_User user = new T_User();

		user.setUser_id(id);
		user.setUser_pw(pw);
		user.setUser_nick(nick);

		// 암호 확인
		System.out.println("첫번째:" + id);
		System.out.println("두번째:" + pw);
		System.out.println("세번째:" + nick);

		// 비밀번호 암호화 (sha256
		String encryPassword = UserSha256.encrypt(user.getUser_pw());
		user.setUser_pw(encryPassword);
		System.out.println("두번째:" + user.getUser_pw());
		// 회원가입 메서드
		mapper.register(user);
		// 인증 메일 보내기 메서드
		// mailsender.mailSendWithUserKey(userVO.getUser_email(), userVO.getUser_id(),
		// request);

		return "true";

	}

}
