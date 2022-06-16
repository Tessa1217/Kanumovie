package co.edu.kanumovie.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.kanumovie.common.Command;
import co.edu.kanumovie.user.service.UserService;
import co.edu.kanumovie.user.serviceImpl.UserServiceImpl;
import co.edu.kanumovie.user.vo.UserVO;

public class SignUp implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 정보 DB에 기입하고 홈페이지로 돌아가기.
		UserService dao = new UserServiceImpl();
		UserVO vo = new UserVO();
		vo.setEmail(request.getParameter("email"));
		vo.setNick(request.getParameter("nick"));
		vo.setPw(request.getParameter("pw"));
		vo.setPreference1(12);
		vo.setPreference2(16);
		vo.setPreference3(99);
		dao.userInsert(vo);
		request.setAttribute("message", "signup");
		return "home/home";
	}

}