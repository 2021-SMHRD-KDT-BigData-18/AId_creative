package kr.AId_creative.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.AId_creative.entity.T_User;
import kr.AId_creative.mapper.A_Mapper;

@Controller
public class A_Controller {

	@Autowired
	private A_Mapper mapper;

	// 메인 페이지
	@GetMapping("/")
	public String main() {
		return "home";
	}

	// 로그인 이동페이지
	@RequestMapping("/goLogin")
	public String goLogin() {
		return "login";
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
			return "redirect:/";
		} else {
			// 로그인 실패
			model.addAttribute("error");
			return "login";
		}
	}

	// 로그아웃 페이지
	@PostMapping("/logout")
	public String logout() {
		return "login";
	}

//	// 회원가입 페이지
//	@GetMapping("/signup")
//	public String signup(Model model) {
//		model.addAttribute("user", new T_User());
//		return "signup";
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

	// 회원가입
	@PostMapping("/register")
	public String register(HttpServletRequest req, Model model) {
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		String nick = req.getParameter("user_nick");

		T_User user = new T_User(id, pw, nick);

		System.out.println(user.getUser_id());
		System.out.println(user.getUser_pw());
		System.out.println(user.getUser_nick());

		// ArrayList<A_Mapper> member = mapper.list();
		// model.addAttribute("loginid", member);
		mapper.register(user);
		return "redirect:/goLogin";
	}

}
