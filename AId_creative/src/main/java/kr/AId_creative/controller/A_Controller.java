package kr.AId_creative.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.AId_creative.mapper.A_Mapper;

public class A_Controller {
	
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String M_ID = request.getParameter("id");
		String M_PW = request.getParameter("pw");
		
		A_Mapper dto = new A_Mapper();
		dto.setM_ID(M_ID);
		dto.setM_PW(M_PW);
		
		A_MemberDAO dao = new A_MemberDAO();
		
		A_MEMBER user = dao.login(dto);
		
		String nextView = null;
		
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			nextView = "redirect:/Main.do"; // 성공했을 때 Main
		} else {
			nextView = "loginFail"; // 실패시 login
			
		}
		return nextView;
	}
    
}
