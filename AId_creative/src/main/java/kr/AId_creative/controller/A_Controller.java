package kr.AId_creative.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.AId_creative.entity.T_Image;
import kr.AId_creative.entity.T_Model;
import kr.AId_creative.entity.T_User;
import kr.AId_creative.mapper.A_Mapper;

@Service
@Controller
@SessionAttributes("user")
public class A_Controller {

	@Autowired
	private A_Mapper mapper;

	// 홈 이동페이지
	@RequestMapping("/goHome")
	public String goHome() {
		return "home";
	}

	// 로그인 이동페이지
	@RequestMapping("/goLogin")
	public String goLogin() {
		return "login";
	}

	// 로그인시 메인이동페이지
	@RequestMapping("/goLogin_Home")
	public String goLogin_Home(@SessionAttribute("user") T_User users, HttpServletRequest request) {

		HttpSession session = request.getSession();
		T_User user = (T_User) session.getAttribute("user");
		System.out.println("로그인후");
		System.out.println(users);

		if (users != null) {
			return "login_home";
		} else {
			return "redirect:/goLogin";
		}
	}

	// 이메일 인증이동페이지
	@RequestMapping("/gosignUp")
	public String gosignUp() {
		return "signUp";
	}

	// 회원가입 이동페이지
	@RequestMapping("/goRegister")
	public String goRegister() {
		return "register";
	}

	// 학습 이동페이지
	@RequestMapping("/goTrain")
	public String goTrain() {
		return "train_page";
	}

	// t_sample 이동페이지
	@RequestMapping("/go_tsample")
	public String go_tsample() {
		return "t_sample";
	}

	// a_sample 이동페이지
	@RequestMapping("/go_asample")
	public String go_asample() {
		return "a_sample";
	}

	// 메인페이지
	@GetMapping("/")
	public String main() {
		return "home";
	}

	// 로그인페이지
	@SuppressWarnings("unused")
	@RequestMapping("/login")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("user_pw") String user_pw,
			HttpSession session) {

		String encryPassword = UserSha256.encrypt(user_pw);
		T_User user = new T_User();
		user.setUser_id(user_id);
		user.setUser_pw(encryPassword);

		user = mapper.login(user);
		System.out.println("로그인중");
		System.out.println(user);

		if (user != null) {
			session.setAttribute("user", user);
			return "redirect:/goLogin_Home";
		} else {
			return "login";
		}
	}

	// 로그아웃 페이지
	@PostMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/goHome";
	}

	// 변환페이지
	@RequestMapping("/goCvt")
	public String goCvt(@SessionAttribute("user") T_User user, Model model) {
		ArrayList<T_Model> result = mapper.my_model(user.getUser_id());
		
		model.addAttribute("result", result);
		return "cvt_page";
	}

	// 마이페이지 ( 이미지 조회 )
	@GetMapping("/goMyPage")
	public String goMyPage(@SessionAttribute("user") T_User user, Model model) {
		ArrayList<T_Image> result = mapper.my_page(user.getUser_id());
		System.out.println(result);
		
		
		
		model.addAttribute("result", result);
		return "my_page";
	}

	
   private String encodeImageToBase64(String event_img) { // 절대경로
	      try {
	         Path imagePath = Paths.get(event_img);
	         byte[] imageBytes = Files.readAllBytes(imagePath);
	         return Base64.getEncoder().encodeToString(imageBytes);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return null;
	   }
	
	
	
}
