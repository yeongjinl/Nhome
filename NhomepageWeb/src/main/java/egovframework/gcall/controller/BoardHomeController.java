package egovframework.gcall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@RequestMapping("/top")
@Controller
public class BoardHomeController {
	@RequestMapping(value="/topBoard.do")
	public ModelAndView topBoard(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			mv.setViewName("egovframework/gcall/boardManage/boardCommon/topBoard");
		}else if(session.getAttribute("ss_user_info")==null) {
			mv.setViewName("egovframework/gcall/boardManage/redirect");
			mv.addObject("url","/g110/login.do");
			mv.addObject("msg","로그인 정보가 없습니다.");
		}

		return mv;
	}

	@RequestMapping(value="/redirect.do")
	   public ModelAndView red(HttpServletRequest req) {
	      ModelAndView mv = new ModelAndView();
	      mv.addObject("url",req.getParameter("url"));
	      mv.addObject("msg",req.getParameter("msg"));
	      mv.setViewName("egovframework/gcall/boardManage/redirect");
	      return mv;
	   }
}
