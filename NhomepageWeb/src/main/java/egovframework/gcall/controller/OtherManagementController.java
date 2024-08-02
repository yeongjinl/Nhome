package egovframework.gcall.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.service.CounselService;
import egovframework.gcall.service.OtherService;
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.StrUtil;

@RequestMapping(value="/other")
@Controller
public class OtherManagementController {
	@Resource(name = "OtherService")
	private OtherService otherService;
	@Resource(name = "CounselService")
	private CounselService counselService;

	/*
	* moVisitStat
	* 모바일방문자통계
	*/
	@RequestMapping(value="/moVisitStat", method=RequestMethod.GET)
	public ModelAndView moVisitStat(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String mobileAuth = CmmUtil.nvl((String) authUI.get("MOBILEVISITOR_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(mobileAuth.equals("1")||userType.equals("0")) {
				String start_date = new SimpleDateFormat ("yyyy-MM-dd").format(new Date());
				String end_date = new SimpleDateFormat ("yyyy-MM-dd").format(new Date());
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.YEAR, -1);
				String sys_lastyear = new SimpleDateFormat ("yyyy").format(cal.getTime());
				String sys_month = new SimpleDateFormat ("MM").format(new Date());
				String start_month = sys_lastyear+"-"+sys_month;
				String end_month = new SimpleDateFormat ("yyyy-MM").format(new Date());

				Map<String, Object> map = new HashMap<String, Object>();
				map.put("START_DATE", start_date);
				map.put("END_DATE", end_date);
				map.put("START_MONTH", start_month);
				map.put("END_MONTH", end_month);

				List<HashMap<String, Object>> resultPageList = otherService.statConnectCount(map);
				List<HashMap<String, Object>> resultDayList = otherService.statConnectCountSum(map);
				List<HashMap<String, Object>> resultMonthList = otherService.statConnectMonthSum(map);
				mv.addObject("page_list", resultPageList);
				mv.addObject("day_list", resultDayList);
				mv.addObject("month_list", resultMonthList);
				mv.setViewName("egovframework/gcall/otherManage/moVisitStat");
			}else {
				mv.setViewName("egovframework/gcall/boardManage/redirect");
				mv.addObject("url","/g110/adm.do");
				mv.addObject("msg","권한이 없습니다.");
			}
		}else if(session.getAttribute("ss_user_auth")==null) {
			mv.setViewName("egovframework/gcall/boardManage/redirect");
			mv.addObject("url","/g110/login.do");
			mv.addObject("msg","로그인 정보가 없습니다.");
		}
		return mv;
	}
	// 방문 통계 요청 로직
	@RequestMapping(value="/statRetrieve", method=RequestMethod.POST)
	public void statRetrieve(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String sql_id = request.getParameter("sql_id") + "";
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("START_DATE", start_date);
		map.put("END_DATE", end_date);
		map.put("START_MONTH", start_date);
		map.put("END_MONTH", end_date);

		List<HashMap<String, Object>> resultList = null;

		if (sql_id.equals("day"))resultList = otherService.statConnectCountSum(map);
		if (sql_id.equals("page"))resultList = otherService.statConnectCount(map);
		if (sql_id.equals("month"))resultList = otherService.statConnectMonthSum(map);

		PrintWriter out =response.getWriter();
		 try {
			out.write((new ObjectMapper()).writeValueAsString(resultList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
	
	// 상담 시간 관리
	@RequestMapping(value="/counsel", method=RequestMethod.GET)
	public ModelAndView zone(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String counselzoneAuth = CmmUtil.nvl((String) authUI.get("MOBILEVISITOR_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(counselzoneAuth.equals("1")||userType.equals("0")) {
				mv.setViewName("egovframework/gcall/otherManage/counselingDate");
			} else {
				mv.setViewName("egovframework/gcall/boardManage/redirect");
				mv.addObject("url","/g110/adm.do");
				mv.addObject("msg","권한이 없습니다.");
			}
		}else if(session.getAttribute("ss_user_auth")==null) {
			mv.setViewName("egovframework/gcall/boardManage/redirect");
			mv.addObject("url","/g110/login.do");
			mv.addObject("msg","로그인 정보가 없습니다.");
		}
		return mv;
	}
	
	@RequestMapping(value="/counselList", method=RequestMethod.POST)
	public void counselList(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("USE_YN", CmmUtil.nvl(request.getParameter("use")));
		List<HashMap<String, Object>> resultList = counselService.counselList(hMap);
		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(resultList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
		
	}
	
	@RequestMapping(value="/regCounsel",method=RequestMethod.POST)
	public ModelAndView regProc(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		try {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String, Object> authUI = (Map<String, Object>) session.getAttribute("ss_user_auth");
			String sUserId = (String) sessionUI.get("USER_ID");
			String date = new SimpleDateFormat ("yyyyMMdd").format(new Date());
			
			Map<String, Object> hMap = new HashMap<String, Object>();
		
			hMap.put("OFDAY", CmmUtil.nvl(request.getParameter("OFDAY")).replace("-", ""));
			hMap.put("BEGINHR", CmmUtil.nvl(request.getParameter("BEGINHR"))); 
			hMap.put("ENDHR", CmmUtil.nvl(request.getParameter("ENDHR")));
			hMap.put("REGISTDQF", CmmUtil.nvl(request.getParameter("REGISTDQF")));
			hMap.put("USE_YN", CmmUtil.nvl(request.getParameter("USE_YN")));
			hMap.put("RGSDE", date);
			hMap.put("REGISTER", sUserId);
			
			if(CmmUtil.nvl(request.getParameter("UPDATE")).equals("update")) {
				hMap.put("CHANGEDE", date);
				hMap.put("CHANGER", sUserId);
				hMap.put("SIGNMGT_NUM", CmmUtil.nvl(request.getParameter("SIGNMGT_NUM")));
			
				counselService.counselUpdate(hMap);
			} else if(CmmUtil.nvl(request.getParameter("UPDATE")).equals("insert")){
				hMap.put("RGSDE", date);
				hMap.put("REGISTER", sUserId);
				counselService.counselInsert(hMap);
			}
			
			mv.setViewName("egovframework/gcall/boardManage/redirect");
			mv.addObject("url","/other/counsel.do");
			mv.addObject("msg","완료되었습니다.");
			
		} catch (SQLException e) {
	    	  e.getStackTrace();
		}
		catch (Exception e) {
			System.out.println("실패");
		}
		return mv;
	}
	
	@RequestMapping(value="/counselDetail", method=RequestMethod.POST)
	public void counselDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String dbAlarmId = CmmUtil.nvl(request.getParameter("SIGNMGT_NUM"));
		int param = Integer.parseInt(dbAlarmId);
		List<HashMap<String, Object>> resultList = counselService.counselDetail(param);
	
		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(resultList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
	
	@RequestMapping(value="/bdayCheck", method=RequestMethod.POST)
	public void bdayCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("OFDAY", CmmUtil.nvl(request.getParameter("OFDAY")).replace("-", ""));
		List<HashMap<String, Object>> resultList = counselService.bdayCheck(hMap);
		
		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(String.valueOf(resultList.size())));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
	
	@RequestMapping(value="/rdayCheck", method=RequestMethod.POST)
	public void rdayCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("OFDAY", CmmUtil.nvl(request.getParameter("OFDAY")).replace("-", ""));
		List<HashMap<String, Object>> resultList = counselService.rdayCheck(hMap);
		
		PrintWriter out =response.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(String.valueOf(resultList.size())));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
}
