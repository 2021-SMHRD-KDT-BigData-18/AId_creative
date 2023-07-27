package kr.AId_creative.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.mapping.FetchType;
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

		T_User user = mapper.check(id);

		if (user == null) {
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

		System.out.println("첫번째:" + id);
		System.out.println("두번째:" + pw);
		System.out.println("세번째:" + nick);

		String encryPassword = UserSha256.encrypt(user.getUser_pw());
		user.setUser_pw(encryPassword);
		System.out.println("두번째:" + user.getUser_pw());
		mapper.register(user);

		return "success";

	}

	// 카카오 소셜 로그인
//			@PostMapping("kakaologin")
//			public String kakaologin(HttpServletRequest req, Model model) {
//				System.out.println("카카오로그인");
//				System.out.println(req.getParameter("kakaoemail"));
//				System.out.println(req.getParameter("kakaoname"));
//				System.out.println(req.getParameter("kakaobirth"));
//				
//				String kakaoid = req.getParameter("kakaoemail");
//				
//				T_User user = new T_User();
//				
//				user.setUser_id(kakaoid);
//				
//				// loginLookup table 만들기
//				int result_lookup = user.loginLookup(user);
//				
//				if(result_lookup == 0 ) {
//					System.out.println("카카오 회원 정보 설정");
//					
//					req.setAttribute("kakaoid", req.getParameter("kakaoid"));
//					req.setAttribute("kakaoname", req.getParameter("kakaoname"));
//					req.setAttribute("kakaobirth", req.getParameter("kakaobirth"));
//					req.setAttribute("kakaoemail", req.getParameter("kakaoemail"));
//					
//					return "goRegister";
//				}
//				
//			}else {
//				user.loginOnnick
//			}

}
