package egovframework.gcall.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.dto.LgnHistoryDTO2;
import egovframework.gcall.dto.LgnHistoryDTO2.LoginStatus;
import egovframework.gcall.dto.ResultDTO;
import egovframework.gcall.dto.ResultDTO.AccountStatus;
import egovframework.gcall.service.AdminService;
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.IpUtil;

@Controller
@RequestMapping(value = "/g110")
public class AdminController {

	@Resource(name = "AdminService")
	private AdminService adminService;

	private static final int MAX_ATTEMPTS = 5; 
	
//	@Resource(name = "MainService")
//	private MainService mainService;
//
//	@RequestMapping(value="/", method=RequestMethod.GET)
//	public ModelAndView init() {
//		ModelAndView mv = new ModelAndView("redirect:login.do");
//		return mv;
//	}
	

	//로그인 화면
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("egovframework/gcall/admin/adminLogin");
		return mv;
	}
	// 로그인
	@RequestMapping(value="/loginRetrieve.do")
	public void loginRetrieve(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		ResultDTO resultDTO = new ResultDTO();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_id", CmmUtil.nvl(request.getParameter("loginID")));
		map.put("password", CmmUtil.nvl(request.getParameter("loginPW")));
		int userExistenceChk = adminService.userExistenceChk(map);
		
		
		// 로그인 ip 정보 저장
		String loginID = CmmUtil.nvl(request.getParameter("loginID"));
		String ipAddress = IpUtil.getClientIp(request);
		String lgnHstdID = LgnHistoryDTO2.generateLgnHstrId();
		LoginStatus lgnStatus = LoginStatus.LOGIN;
		// interceptor에서 넘어온 페이지 URI 
		String requestURI = (String) request.getAttribute("requestURI");
		
		if(userExistenceChk > 0) {
			int userLoginChk = adminService.userLoginChk(map);
			List<HashMap<String, Object>> infoList = null;
			String user_id = "";
			if(userLoginChk > 0) {
				if(CmmUtil.nvl(request.getParameter("loginID")).equals("admin") ) {
					Map<String, Object> adminMap = new HashMap<String, Object>();
					adminMap.put("USER_ID", "admin");
					adminMap.put("USER_NAME", "관리자");
					adminMap.put("USER_TYPE", "0");
					adminMap.put("USER_GRADE", "0"); //RTNG_CD 등급 코드
					adminMap.put("POST_CD", "0"); //TEAM_CD 팀 코드
					adminMap.put("EMAIL", "110@acrc.go.kr");
					session.setAttribute("ss_user_info", adminMap);
					user_id="admin";
					resultDTO.set_count(1);
				} else {
					infoList = adminService.TBUserSession(map);
					session.setAttribute("ss_user_info", infoList.get(0));
					//LGN_ID AS USER_ID
					user_id=infoList.get(0).get("USER_ID").toString().trim();
					resultDTO.set_count(infoList.size());
				}
				List<HashMap<String, Object>> authList = adminService.HPUserSession(map);
				session.setAttribute("ss_user_auth", authList.get(0));

				Map<String, Object> sessionUI = (Map<String, Object>)session.getAttribute("ss_user_info");
				System.out.println("sUserId = "+CmmUtil.nvl((String) sessionUI.get("USER_ID")));
				System.out.println("sUserEmail  ="+CmmUtil.nvl((String) sessionUI.get("EMAIL")));
				System.out.println("sUserType  = "	+CmmUtil.nvl((String) sessionUI.get("USER_TYPE")));
				System.out.println("sUserGrade  = 	"+CmmUtil.nvl((String) sessionUI.get("USER_GRADE")));
				System.out.println("sUserPost  = "+CmmUtil.nvl((String) sessionUI.get("POST_CD")));

				Map<String, Object> dMap = new HashMap<>();
				SimpleDateFormat format = new SimpleDateFormat ("yyyyMMdd");
				String LOGIN_DATE = new SimpleDateFormat ("yyyyMMdd").format(new Date());
				String LOGIN_TIME = new SimpleDateFormat ("HHmmss").format(new Date());
				String password_date = String.valueOf(authList.get(0).get("PASSWORD_DATE"));

				dMap.put("USER_ID", request.getParameter("loginID"));
				dMap.put("LOGIN_DATE", LOGIN_DATE);
				dMap.put("LOGIN_TIME", LOGIN_TIME);

				resultDTO.set_error(false);
				if(!user_id.equals("admin")) {
					Date day1 = format.parse(password_date);
					Date day2 = format.parse(LOGIN_DATE);
					long diff = day2.getTime() - day1.getTime();
					long diffDays = diff / (24 * 60 * 60 * 1000);
					if((int)diffDays >= 30) {
						resultDTO.set_message("pw update");
					} else {
						resultDTO.set_message("id found");
					}
					adminService.loginDateUpdate(dMap);
				}
				lgnStatus = LoginStatus.LOGIN;
				LgnHistoryDTO2 lgnHstr = new LgnHistoryDTO2.LgnHistoryDTO2Builder(lgnHstdID,loginID, ipAddress, lgnStatus, requestURI).build();
				adminService.lgnHstr2Insert(lgnHstr);
				
				adminService.passwordCountCheckInitialize(loginID);
			} else {
				adminService.subManagerInsert(CmmUtil.nvl(request.getParameter("loginID")));
				infoList = adminService.TBUserSession(map);
				session.setAttribute("ss_user_info", infoList.get(0));

				System.out.println("sUserId = "+CmmUtil.nvl((String) infoList.get(0).get("USER_ID")));
				System.out.println("sUserEmail  ="+CmmUtil.nvl((String) infoList.get(0).get("EMAIL")));
				System.out.println("sUserType  = "	+CmmUtil.nvl((String) infoList.get(0).get("USER_TYPE")));
				System.out.println("sUserGrade  = 	"+CmmUtil.nvl((String) infoList.get(0).get("USER_GRADE")));
				System.out.println("sUserPost  = "+CmmUtil.nvl((String) infoList.get(0).get("POST_CD")));

				user_id=infoList.get(0).get("USER_ID").toString().trim();
				resultDTO.set_count(infoList.size());
				List<HashMap<String, Object>> authList = adminService.HPUserSession(map);
				session.setAttribute("ss_user_auth", authList.get(0));

				Map<String, Object> dMap = new HashMap<>();
				SimpleDateFormat format = new SimpleDateFormat ("yyyyMMdd");
				String LOGIN_DATE = new SimpleDateFormat ("yyyyMMdd").format(new Date());
				String LOGIN_TIME = new SimpleDateFormat ("HHmmss").format(new Date());
				String password_date = String.valueOf(authList.get(0).get("PASSWORD_DATE"));

				dMap.put("USER_ID", request.getParameter("loginID"));
				dMap.put("LOGIN_DATE", LOGIN_DATE);
				dMap.put("LOGIN_TIME", LOGIN_TIME);

				
				
				resultDTO.set_error(false);
				if(!user_id.equals("admin")) {
					Date day1 = format.parse(password_date);
					Date day2 = format.parse(LOGIN_DATE);
					long diff = day2.getTime() - day1.getTime();
					long diffDays = diff / (24 * 60 * 60 * 1000);
					if((int)diffDays >= 30) {
						resultDTO.set_message("pw update");
					} else {
						resultDTO.set_message("id found");
					}
					adminService.loginDateUpdate(dMap);
					
				}
				
				adminService.passwordCountCheckInitialize(loginID);
			}
		
			
			
		} else {
			Map<String, Object> fMap = new HashMap<>();
			
			String userId = CmmUtil.nvl(request.getParameter("loginID"));
			if (userId != null) {
			    fMap.put("user_id", userId);
			    
			    // 패스워드 실패 횟수 업데이트 
				adminService.pwFailedCountUpdate(fMap);
				
				// 패스워드 실패 횟수 조회
				Integer pwFailedCountSelect = adminService.pwFailedCountSelect(fMap);
				
				if (pwFailedCountSelect > 5) {
					resultDTO.set_message("패스워드 5회 이상 오류입니다. 관리자에게 문의 해주세요.");
					resultDTO.set_error(true);
					resultDTO.set_count(0);
					resultDTO.setAccountStatus(ResultDTO.AccountStatus.ACCOUNT_LOCKED_ON_FAILED);
				} else if(pwFailedCountSelect < 5) {
					System.out.println("아이디 또는 패스워드를 확인하세요.");
					resultDTO.set_error(true);
					resultDTO.set_count(0);
					resultDTO.setAccountStatus(ResultDTO.AccountStatus.ACCOUNT_CHECK);
				}else { 
					resultDTO.set_error(true);
					resultDTO.set_message("cannot found id");
					resultDTO.set_count(0);
				}
				
				lgnStatus = LoginStatus.LOGIN_FAILURE;
				LgnHistoryDTO2 lgnHstr = new LgnHistoryDTO2.LgnHistoryDTO2Builder(lgnHstdID,loginID, ipAddress, lgnStatus, requestURI).build();
				adminService.lgnHstr2Insert(lgnHstr);
			}
		}
		
		
		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(resultDTO));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
	// 패스워드 + 1
//	@RequestMapping(value="/pwFailedCountCheck.do")
//	public void pwFailedCountCheck(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
//		int pwFailedCountSelect = adminService.pwFailedCountCheck();
//		
//		ResultDTO resultDTO = new ResultDTO();
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("user_id", CmmUtil.nvl(request.getParameter("loginID")));
//	}
	
	
	// 로그아웃
	@RequestMapping(value="/logout.do")
	public ModelAndView logout(HttpSession session, HttpServletRequest request) throws Exception {
		Map<String, Object> sessionUI = (Map<String, Object>)session.getAttribute("ss_user_info");

		// 로그인 ip 정보 저장
//		String loginSessionID = CmmUtil.nvl((String) sessionUI.get("USER_ID"));
//		String ipAddress = IpUtil.getClientIp(request);
//		String lgnHstdID = LgnHistoryDTO2.generateLgnHstrId();
//		LoginStatus lgnStatus = LoginStatus.LOGIN;
		// interceptor에서 넘어온 페이지 URI 
//		String requestURI = (String) request.getAttribute("requestURI");
				
		System.out.println("sUserId = "+CmmUtil.nvl((String) sessionUI.get("USER_ID")));
		System.out.println("sUserEmail  ="+CmmUtil.nvl((String) sessionUI.get("EMAIL")));
		System.out.println("sUserType  = "	+CmmUtil.nvl((String) sessionUI.get("USER_TYPE")));
		System.out.println("sUserGrade  = 	"+CmmUtil.nvl((String) sessionUI.get("USER_GRADE")));
		System.out.println("sUserPost  = "+CmmUtil.nvl((String) sessionUI.get("POST_CD")));

		String LOGOUT_DATE = new SimpleDateFormat ("yyyyMMdd").format(new Date());
		String LOGOUT_TIME = new SimpleDateFormat ("HHmmss").format(new Date());
		
//		lgnStatus = LoginStatus.LOGOUT;
//		LgnHistoryDTO2 lgnHstr = new LgnHistoryDTO2.LgnHistoryDTO2Builder(lgnHstdID, loginSessionID, ipAddress, lgnStatus, requestURI).build();
//		adminService.lgnHstr2Insert(lgnHstr);
		
		if(session != null) {
			String sUserId = (String) sessionUI.get("USER_ID");
			Map<String, Object> dMap = new HashMap<>();
			if(!sUserId.equals("admin")) {
				dMap.put("USER_ID", sUserId);
				dMap.put("LOGOUT_DATE", LOGOUT_DATE);
				dMap.put("LOGOUT_TIME", LOGOUT_TIME);
				int result = adminService.logoutDateUpdate(dMap);
			}
			session.invalidate();
		}
		ModelAndView mv = new ModelAndView("redirect:/g110/login.do");
		return mv;
	}
	//최초 로그인 비밀번호
//	@RequestMapping(value="/adminFirstLogin.do")
//	public ModelAndView adminFirstLogin() throws Exception {
//		ModelAndView mv = new ModelAndView("egovframework/gcall/admin/adminFirstLogin");
//		return mv;
//	}
	//로그인 비밀번호 30일 기간만료
	@RequestMapping(value="/adminPwUpdate.do")
	public ModelAndView adminPwUpdate() throws Exception {
		ModelAndView mv = new ModelAndView("egovframework/gcall/admin/adminPwUpdate");
		return mv;
	}

	//로그인 30일 기간만료 비밀번호 변경
	@RequestMapping(value="/adminLoginProc.do")
	public void firstLoginProc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ResultDTO resultDTO = new ResultDTO();
		String appDate = new SimpleDateFormat ("yyyyMMdd").format(new Date());
		String app110Date = new SimpleDateFormat ("yyyyMMddHHmmss").format(new Date());
		int result = 0;
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("user_id", request.getParameter("id"));
		map.put("password", request.getParameter("now_pw"));
		try {
			result = adminService.userLoginChk(map);
		} catch (SQLException e) {
	    	  e.getStackTrace();
		} catch (Exception e) {
			resultDTO.set_error(true);
		}
		if (result==0) {
			resultDTO.set_error(true);
		} else {
			String pw = request.getParameter("pw");
			if(pw == null || "".equals(pw))  return;
			
			if (pw.equals(request.getParameter("pwChk"))) {
				try {
					map.clear();
					map.put("USER_ID", request.getParameter("id"));
					map.put("PASSWORD", request.getParameter("pw"));
					map.put("appDate", appDate);
					map.put("app110Date", app110Date);
					adminService.expirationPwdUpd(map);
					adminService.expirationPwdUpdTB(map);
					resultDTO.set_error(false);
				} catch (SQLException e) {
			    	  e.getStackTrace();
				} catch (Exception e){
					resultDTO.set_error(true);
				}
			}
		}
		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(resultDTO));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
	// 관리자 메인화면
	@RequestMapping(value="/adm.do", method=RequestMethod.GET)
	public ModelAndView adm1(HttpServletRequest request) throws Exception {

		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		String start_month = new SimpleDateFormat ("yyyy-MM").format(new Date());
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		String sys_lastyear = new SimpleDateFormat ("yyyy").format(cal.getTime());
		String sys_month = new SimpleDateFormat ("MM").format(new Date());
		String end_month = sys_lastyear+"-"+sys_month;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("START_DATE", start_date);
		map.put("END_DATE", end_date);
		map.put("START_MONTH", start_month);
		map.put("END_MONTH", end_month);

		ModelAndView mv = new ModelAndView();

		List<HashMap<String, Object>> resultTimeList = adminService.statConnectCount(map);
		List<HashMap<String, Object>> resultDayList = adminService.statConnectCountSum(map);
		List<HashMap<String, Object>> resultMonthList = adminService.statConnectMonthSum(map);
		mv.addObject("time_list", resultTimeList);
		mv.addObject("day_list", resultDayList);
		mv.addObject("month_list", resultMonthList);
		mv.setViewName("egovframework/gcall/admin/adminContentFrame");
		return mv;
	}

	// 방문 통계 요청 로직
	@RequestMapping(value="/statRetrieve", method=RequestMethod.POST)
	public void statRetrieve(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String sql_id = request.getParameter("sql_id") + "";
		String start_date = request.getParameter("start_date") + "";
		String end_date = request.getParameter("end_date") + "";

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("START_DATE", start_date);
		map.put("END_DATE", end_date);
		map.put("START_MONTH", start_date);
		map.put("END_MONTH", end_date);

		List<HashMap<String, Object>> resultList = null;

		if (sql_id.equals("time"))resultList = adminService.statConnectCount(map);
		if (sql_id.equals("day"))resultList = adminService.statConnectCountSum(map);
		if (sql_id.equals("month"))resultList = adminService.statConnectMonthSum(map);

		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(resultList));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Connection Exception occurred");
		} finally {
			out.close();
		}
	}
	
	//
	
	
}
