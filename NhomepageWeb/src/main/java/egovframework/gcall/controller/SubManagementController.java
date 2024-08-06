package egovframework.gcall.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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

import egovframework.gcall.dto.PagingDTO;
import egovframework.gcall.service.AdminService;
import egovframework.gcall.util.CmmUtil;

@RequestMapping(value="/subManage")
@Controller
public class SubManagementController {
	@Resource(name = "AdminService")
	private AdminService adminService;

	@RequestMapping(value="/list.do", method=RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			String userId = CmmUtil.nvl((String) sessionUI.get("USER_ID"));
			if(userId.equals("admin")) {
//
				int page = 0;
				String search = "";
				String option = "";
				if(request.getParameter("page")==null) {
	            	 page = 1;
	             } else {
	            	 page = Integer.parseInt(request.getParameter("page"));
	             }
				if(request.getParameter("option")!=null) {
					option = request.getParameter("option");
				}
				if(request.getParameter("search")!=null) {

					search = request.getParameter("search");
				}
				Map<String, Object> lMap = new HashMap<String, Object>();
				lMap.put("option", option);
				lMap.put("search", search);
				int listCnt = adminService.subManagerListCount(lMap);
				PagingDTO paging = new PagingDTO();
				if(listCnt > 0 && page > 0) {
					paging.pageInfo(page, listCnt);
				}
				Map<String, Object> hMap = new HashMap<String, Object>();
				int startlist = paging.getStartList();
				int listsize = paging.getListSize();
				hMap.put("option", option);
				hMap.put("search", search);
				hMap.put("startlist", startlist);
				hMap.put("listsize", listsize);

				List<HashMap<String, Object>> result = adminService.subManagerList(hMap);

				mv.addObject("list", result);
				mv.addObject("paging",paging);
				mv.addObject("option",option);
				mv.addObject("search",search);
//
				mv.setViewName("egovframework/gcall/subManagement/subManageList");
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
	@RequestMapping(value="/listInfo.do", method=RequestMethod.POST)
	public void listInfo(HttpServletRequest request,HttpServletResponse response) throws Exception{
		int page = Integer.parseInt(request.getParameter("pageno"));
		String search = request.getParameter("search");
		Map<String, Object> lMap = new HashMap<String, Object>();
		lMap.put("search", search);
		int listCnt = adminService.subManagerListCount(lMap);
		System.out.println("ListCnt : "+listCnt);
		PagingDTO paging = new PagingDTO();
		if(listCnt > 0 && page > 0) {
			paging.pageInfo(page, listCnt);
		}
		Map<String, Object> hMap = new HashMap<String, Object>();
		int startlist = paging.getStartList();
		int listsize = paging.getListSize();
		hMap.put("search", search);
		hMap.put("startlist", startlist);
		hMap.put("listsize", listsize);

		List<HashMap<String, Object>> result = adminService.subManagerList(hMap);
		System.out.println(result.size());
		HashMap<String, Object> jsonObj = new HashMap<String, Object>();
		jsonObj.put("list", result);
		jsonObj.put("paging", paging);
		PrintWriter data =response.getWriter();
		try {
			data.write((new ObjectMapper()).writeValueAsString(jsonObj));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			data.close();
		}
	}
	@RequestMapping(value="/proc.do", method=RequestMethod.POST)
	public ModelAndView proc(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		int page = 0;
		String search = "";
		String option = "";
		if(request.getParameter("page")==null) {
        	 page = 1;
         } else {
        	 page = Integer.parseInt(request.getParameter("page"));
         }
		if(request.getParameter("option")!=null) {
			option = request.getParameter("option");
		}
		if(request.getParameter("search")!=null) {

			search = request.getParameter("search");
		}
		String user_auth[] = request.getParameterValues("user_auth");

		Map<String, Object> map = new HashMap<String, Object>();
		try {
			map.put("USER_ID", request.getParameter("user_id"));
			map.put("CONSULT_AUTH", "0");
			map.put("BODO_AUTH", "0");
			map.put("NOTICE_AUTH", "0");
			map.put("PROMOTION_AUTH", "0");
			map.put("PHOTO_AUTH", "0");
			map.put("FREEBOARD_AUTH", "0");
			map.put("CONTEST_AUTH", "0");
			map.put("FAQ_AUTH", "0");
			map.put("STORY110_AUTH", "0");
			map.put("POPUP_AUTH", "0");
			map.put("POPUPZONE_AUTH", "0");
			map.put("BANNER_AUTH", "0");
			map.put("MOBILEVISITOR_AUTH", "0");
			map.put("INTELIGENCE_AUTH", "0");
			map.put("CODE_AUTH", "0");
			if(user_auth != null) {
				for(int i = 0; i < user_auth.length; i++) {
					map.put(user_auth[i], "1");
				}
			}
			adminService.subManagerUpdate(map);
		} catch (SQLException e) {
	    	  e.getStackTrace();
		} catch (Exception e) {
			System.out.println("PROC FAIL");
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("egovframework/gcall/boardManage/redirect");
		mv.addObject("url","/subManage/list.do?page="+page+"&option="+option+"&search="+search);
		mv.addObject("msg","수정되었습니다.");
		return mv;
	}
	@RequestMapping(value="/detail.do", method=RequestMethod.GET)
	public ModelAndView detail(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_auth")!=null) {
			int page = 0;
			String search = "";
			String option = "";
			if(request.getParameter("page")==null) {
            	 page = 1;
             } else {
            	 page = Integer.parseInt(request.getParameter("page"));
             }
			if(request.getParameter("option")!=null) {
				option = request.getParameter("option");
			}
			if(request.getParameter("search")!=null) {

				search = request.getParameter("search");
			}

			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			CmmUtil.nvl((String) sessionUI.get("USER_NAME"));
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(userType.equals("0")) {
				String user_id = request.getParameter("user_id");
				List<HashMap<String, Object>> result = adminService.userDetail(user_id);
				mv.addObject("result", result);
				mv.addObject("page", page);
				mv.addObject("option", option);
				mv.addObject("search", search);
				mv.setViewName("egovframework/gcall/subManagement/subManageDetail");
			}else{
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
