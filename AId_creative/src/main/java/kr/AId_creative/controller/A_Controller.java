package kr.AId_creative.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.AId_creative.entity.T_User;
import kr.AId_creative.mapper.A_Mapper;

@Service
@Controller
public class A_Controller {

	@Autowired
	private A_Mapper mapper;

	// 홈 이동페이지
	@RequestMapping("/goHome")
	public String goHome() {
		return "home";
	}

	// 로그인으로 이동페이지
	@RequestMapping("/goLogin")
	public String goLogin() {
		return "login";
	}

	// 로그인시메인 이동페이지
	@RequestMapping("/goLogin_Home")
	public String goLogin_Home() {
		return "login_home";
	}

	// 학습 이동페이지
	@RequestMapping("/goTrain")
	public String goTrain() {
		return "train_page";
	}

	// 메인
	@GetMapping("/")
	public String main() {
		return "home";
	}

	// 로그인
	@SuppressWarnings("unused")
	@PostMapping("/login")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("user_pw") String user_pw, Model model) {

		T_User user = new T_User();
		user.setUser_id(user_id);
		user.setUser_pw(user_pw);

		if (user != null) {
			// 로그인 성공
			model.addAttribute("user", user);
			return "redirect:/goLogin_Home";
		} else {
			// 로그인 실패
			model.addAttribute("error");
			return "login";
		}
	}

	// 회원가입 암호 컨트롤러
	@PostMapping("/register")
	public String userRegPass(T_User userVO, Model model, HttpServletRequest request) {

		// 암호 확인
		System.out.println("첫번째:" + userVO.getUser_pw());
		// 비밀번호 암호화 (sha256
		String encryPassword = UserSha256.encrypt(userVO.getUser_pw());
		userVO.setUser_pw(encryPassword);
		System.out.println("두번째:" + userVO.getUser_pw());
		// 회원가입 메서드
		mapper.register(userVO);
		// 인증 메일 보내기 메서드
		// mailsender.mailSendWithUserKey(userVO.getUser_email(), userVO.getUser_id(),
		// request);

		return "redirect:/goHome";
	}

//	// 로그아웃 페이지
//	@PostMapping("/logout")
//	public String logout() {
//		return "login";
//	}

	// 중복
//	@RequestMapping("/checkuser")
//	public String doCheck(HttpServletRequest req, Model model) {
//		String id = req.getParameter("userid");
//		String pw = req.getParameter("password");
//		//int cnt = mapper.MemberCnt(id, pw);
//
////		if (cnt == 1) {
////			HttpSession session = req.getSession(); // 초기화
////			session.setAttribute("user_id", id); // 값 설정
////			session.setAttribute("user_pw", pw);
////			return "redirect:/";
////		} else {
////			return "redirect:/login";
////		}
//
////			model.addAttribute("uid", id);
////			model.addAttribute("upw", pw);
////			
////			return "loginok";
//	}

}
