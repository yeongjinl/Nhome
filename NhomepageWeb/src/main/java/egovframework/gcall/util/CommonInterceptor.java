package egovframework.gcall.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import egovframework.gcall.main.service.MainService;

public class CommonInterceptor extends HandlerInterceptorAdapter {
	
	@Resource(name = "MainService")
	private MainService mainService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		// 0. 디바이스 체크 설정
		Device device = DeviceUtils.getCurrentDevice(request);
		
		// 1. 오늘 방문여부 / 오늘 방문 페이지 / 모바일여부 설정
		boolean isTodayCookie = false;
		boolean isTodayPageCookie = false;
		boolean isMobile = device.isMobile() || device.isTablet();
		
		// 2. 방문 날짜 설정
		Date today = new Date();
		String todayDate = new SimpleDateFormat("yyyyMMdd").format(today);
		String todayTime = new SimpleDateFormat("HH").format(today);
		
		// 4. 방문 페이지 설정
		String todayPage = request.getRequestURI();
		
		// 5. 쿠키에 방문여부 있으면 isTodayCookie = true
		// 쿠키에 방문 페이지 있으면 isTodayPageCookie = true
			
		// session 객체를 가져옴
        HttpSession session = request.getSession();
		
        session.setAttribute("visitToday1", todayDate);
		session.setAttribute("visitTodayPage1", todayPage);
		
		//모바일 환경유무 체크 변수를 세션에 저장
		session.setAttribute("isMobile", isMobile);
		
		String visitToday1  = (String)request.getAttribute("visitToday1"); 
		String visitTodayPage1  = (String)request.getAttribute("visitTodayPage1"); 
		
		
		if(session != null) {
			if(visitToday1 != null) {
			   isTodayCookie = true;
		    } 
			
		    if(visitTodayPage1 != null) {
			   isTodayPageCookie = true; 
		    } 
		}
		
		// 5. isTodayCookie = false 면 쿠키 생성 및 방문 수 증가
		if(!isTodayCookie) {
			Cookie todayCookie = new Cookie("visitToday", todayDate);
			todayCookie.setMaxAge(3600);
			todayCookie.setSecure(true);
			response.addCookie(todayCookie);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("todayDate", todayDate);
			map.put("todayTime", todayTime);
			
			mainService.visitIncrement(map);
			
			if(isMobile) {
				Cookie visitTodayPage = new Cookie("visitTodayPage", todayPage);
				visitTodayPage.setMaxAge(3600);
				visitTodayPage.setSecure(true);
				response.addCookie(visitTodayPage);
				
				map.put("todayPage", todayPage);
				
				mainService.visitMobileIncrement(map);
				mainService.visitMobilePageIncrement(map);
			}
		} else if(isMobile && !isTodayPageCookie) {
			Cookie visitTodayPage = new Cookie("visitTodayPage", todayPage);
			visitTodayPage.setMaxAge(60*60*24);
			visitTodayPage.setSecure(true);
			response.addCookie(visitTodayPage);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("todayDate", todayDate);
			map.put("todayTime", todayTime);
			map.put("todayPage", todayPage);
			
			mainService.visitMobilePageIncrement(map);
		}
		
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav) throws Exception {
	
		// 기관콜센터 리스트 불러오기
		List<HashMap<String, Object>> resultList0 = mainService.centerList();
		
		if(mav != null) mav.addObject("centerList", resultList0);
		
		super.postHandle(request, response, handler, mav);
	}
	
}
