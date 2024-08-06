package egovframework.gcall.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
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
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.service.PopupService;
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.StrUtil;

@RequestMapping(value="/popup")
@Controller
public class PopupManagementController {
	@Resource(name = "PopupService")
	private PopupService popupService;

	// 팝업
	@RequestMapping(value="/popup.do", method=RequestMethod.GET)
	public ModelAndView popup(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_auth")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String popupAuth = CmmUtil.nvl((String) authUI.get("POPUP_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(popupAuth.equals("1")||userType.equals("0")) {
				mv.setViewName("egovframework/gcall/noticeManage/popupManage/popupManage");
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
	@RequestMapping(value="/popupList.do", method=RequestMethod.POST)
	public void popupList(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		Map<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("ALARM_USE", CmmUtil.nvl(request.getParameter("use")));
		hMap.put("ALARM_TYPE", CmmUtil.nvl(request.getParameter("ALARM_TYPE")));
		List<HashMap<String, Object>> resultList = popupService.popupList(hMap);
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
	@RequestMapping(value="/regProc.do",method=RequestMethod.POST)
	public ModelAndView regProc(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		try {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String, Object> authUI = (Map<String, Object>) session.getAttribute("ss_user_auth");
			String sUserId = (String) sessionUI.get("USER_ID");
			String date = new SimpleDateFormat ("yyyy-MM-dd").format(new Date());
			String ALARM_POSITION = "";
			if(request.getParameterValues("ALARM_POSITION")==null) {
				ALARM_POSITION = "";
			} else {
				String [] postion = request.getParameterValues("ALARM_POSITION");
				ALARM_POSITION = postion[0]+","+postion[1];
			}
			Map<String, Object> hMap = new HashMap<String, Object>();
			hMap.put("ALARM_TITLE", CmmUtil.nvl(request.getParameter("ALARM_TITLE")));
			hMap.put("ALARM_TYPE", CmmUtil.nvl(request.getParameter("ALARM_TYPE"))); // 1, 2, 3
			hMap.put("ALARM_LINK_URL", CmmUtil.nvl(request.getParameter("ALARM_LINK_URL")));
			hMap.put("ALARM_REG_DATE", date);
			hMap.put("ALARM_USE", CmmUtil.nvl(request.getParameter("ALARM_USE")));
			hMap.put("ALARM_TARGET", CmmUtil.nvl(request.getParameter("ALARM_TARGET")).equals("0")?"":request.getParameter("ALARM_TARGET"));
			hMap.put("REG_ID", sUserId);
			if(CmmUtil.nvl(request.getParameter("REAL_PATH")).equals("")||CmmUtil.nvl(request.getParameter("FILE_NAME")).equals("")) {
				hMap.put("ALARM_REAL_PATH", CmmUtil.nvl(request.getParameter("ALARM_REAL_PATH")));
			} else {
				hMap.put("ALARM_REAL_PATH", CmmUtil.nvl(request.getParameter("REAL_PATH")+"/"+request.getParameter("FILE_NAME")));
			}
			hMap.put("ALARM_ORIGINAL_NAME", CmmUtil.nvl(request.getParameter("ALARM_ORIGINAL_NAME")));
			hMap.put("ALARM_CONTENT", CmmUtil.nvl(request.getParameter("ALARM_CONTENT")));
			hMap.put("ALARM_POSITION", ALARM_POSITION);
			hMap.put("ALARM_START_DATE",CmmUtil.nvl(request.getParameter("tStartDate")).replace("-", ""));
			hMap.put("ALARM_END_DATE", CmmUtil.nvl(request.getParameter("tEndDate")).replace("-", ""));

			if(CmmUtil.nvl(request.getParameter("UPDATE")).equals("update")) {
				hMap.put("ALARM_ID", CmmUtil.nvl(request.getParameter("ALARM_ID")));
				popupService.popupupdate(hMap);
			} else if(CmmUtil.nvl(request.getParameter("UPDATE")).equals("insert")){
				popupService.popupinsert(hMap);
			}
			
			String alarm_type = request.getParameter("ALARM_TYPE");
			if(alarm_type == null || "".equals(alarm_type)) {
				System.out.println("실패");
			}else {
				if(alarm_type.equals("3")) {
					mv.setViewName("egovframework/gcall/boardManage/redirect");
					mv.addObject("url","/popup/popup.do");
					mv.addObject("msg","완료되었습니다.");
				} else if(alarm_type.equals("1")) {
					mv.setViewName("egovframework/gcall/boardManage/redirect");
					mv.addObject("url","/popup/banner.do");
					mv.addObject("msg","완료되었습니다.");
				} else if(alarm_type.equals("2")) {
					mv.setViewName("egovframework/gcall/boardManage/redirect");
					mv.addObject("url","/popup/zone.do");
					mv.addObject("msg","완료되었습니다.");
				}
			}			
			
		} catch (SQLException e) {
	    	  e.getStackTrace();
		}
		catch (Exception e) {
			System.out.println("실패");
		}
		return mv;
	}

	@RequestMapping(value="/popupDetail.do", method=RequestMethod.POST)
	public void popupDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String dbAlarmId = CmmUtil.nvl(request.getParameter("ALARM_ID"));
		int param = Integer.parseInt(dbAlarmId);
		List<HashMap<String, Object>> resultList = popupService.popupDetail(param);
		StrUtil tag = new StrUtil();
		if(resultList.get(0).get("ALARM_CONTENT")!=null) {
			String ALARM_CONTENT_TAG = tag.tagHtml(resultList.get(0).get("ALARM_CONTENT").toString());
			resultList.get(0).remove("ALARM_CONTENT");
			resultList.get(0).put("ALARM_CONTENT", ALARM_CONTENT_TAG);
		}
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
	// 팝업 존
	@RequestMapping(value="/zone.do", method=RequestMethod.GET)
	public ModelAndView zone(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String popupzoneAuth = CmmUtil.nvl((String) authUI.get("POPUPZONE_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(popupzoneAuth.equals("1")||userType.equals("0")) {
				mv.setViewName("egovframework/gcall/noticeManage/popupzoneManage/popupzoneManage");
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
	// 베너
	@RequestMapping(value="/banner.do", method=RequestMethod.GET)
	public ModelAndView banner(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String bannerAuth = CmmUtil.nvl((String) authUI.get("BANNER_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(bannerAuth.equals("1")||userType.equals("0")) {
				mv.setViewName("egovframework/gcall/noticeManage/bannerManage/bannerManage");
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
}
