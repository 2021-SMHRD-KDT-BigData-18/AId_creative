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
				//HttpSession session = req.getSession(); // 초기화
				//session.setAttribute("user_id", id); // 값 설정
				//session.setAttribute("user_nick");
				return "OK";
			} else {
				return "FAIL";
			}
		}
	
	
	
	
	
	
}
