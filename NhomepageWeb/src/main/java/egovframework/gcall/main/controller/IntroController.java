package egovframework.gcall.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/intro")
public class IntroController {
	
	// 소개
	@RequestMapping("/center.do")
	public ModelAndView center() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/intro/sub01N");
		mav.addObject("lev1_menu", "intro");
		mav.addObject("lev2_menu", "center");
		
		return mav;
	}
	
	// 인사말
	@RequestMapping("/greetings.do")
	public ModelAndView greetings() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/intro/sub02N");
		mav.addObject("lev1_menu", "intro");
		mav.addObject("lev2_menu", "greetings");
		
		return mav;
	}
	
	// 연혁
	@RequestMapping("/history.do")
	public ModelAndView history() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/intro/sub03N");
		mav.addObject("lev1_menu", "intro");
		mav.addObject("lev2_menu", "history");
		
		return mav;
	}
	
	// 위치안내
	@RequestMapping("/location.do")
	public ModelAndView faq() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/intro/sub04N");
		mav.addObject("lev1_menu", "intro");
		mav.addObject("lev2_menu", "location");
		
		return mav;
	}
}
