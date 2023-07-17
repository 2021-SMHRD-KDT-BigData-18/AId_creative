package kr.AId_creative.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.AId_creative.entity.User_Info;
import kr.AId_creative.mapper.A_Mapper;

@Controller
public class A_Controller {

	@Autowired
	private A_Mapper mapper;

	// 메인 페이지 ( 임시 )
	@GetMapping("/")
	public String main() {
		return "home";
	}

	// 로그인 페이지
	@PostMapping("/login")
	public String login() {
		return "login";
	}

	// 회원가입 페이지
	@GetMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("user", new User_Info());
		return "signup";
	}

	
	@GetMapping("/my")
	public String my() {
		return "my_page";
	}
	
	
}
