package kr.AId_creative.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
public class A_Controller {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String USER_ID = request.getParameter("id");
		String USER_PW = request.getParameter("pw");

		A_MEMBER dto = new A_MEMBER();
		dto.setM_ID(USER_ID);
		dto.setM_PW(USER_PW);

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
