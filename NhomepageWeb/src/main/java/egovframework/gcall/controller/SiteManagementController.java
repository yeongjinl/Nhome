package egovframework.gcall.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.service.SiteService;
import egovframework.gcall.util.CmmUtil;

@RequestMapping(value="/site")
@Controller
public class SiteManagementController {


	@Resource(name = "SiteService")
	private SiteService siteService;

	/*
	* code / codebook Management
	* schInq
	* 일정/문의 관리
	*/
	//사이트 클릭시 코드북 화면 보여줌
	@RequestMapping(value="/codebook", method=RequestMethod.GET)
	public ModelAndView codebook(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_auth")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String codeAuth = CmmUtil.nvl((String) authUI.get("CODE_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(codeAuth.equals("1")||userType.equals("0")) {
				Map<String, Object> map = new HashMap<String, Object>();
//				List<HashMap<String, Object>> codetypeList = siteService.getCodeType(map);
				List<HashMap<String, Object>> codetypeList = siteService.getCodeType();
				System.out.println("1");
				System.out.println(codetypeList);
				if(codetypeList.size() > 0) {
					map.clear();
					map.put("USE_YN", "");
					map.put("CODE_TYPE", codetypeList.get(0).get("CODE_TYPE"));
					List<HashMap<String, Object>> codebookList = siteService.getCodeBook(map);
					mv.addObject("codebookList", codebookList);
				}
				mv.addObject("codetypeList", codetypeList);
				mv.setViewName("egovframework/gcall/sitemanagement/codebook");
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

	@RequestMapping(value="getCode", method=RequestMethod.GET)
	public ModelAndView getCode() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		//List<HashMap<String, Object>> codetypeList = siteService.getCodeType(map);
		List<HashMap<String, Object>> codetypeList = siteService.getCodeType();
		ModelAndView mv = new ModelAndView();
		mv.addObject("codetypeList", codetypeList);
		mv.setViewName("egovframework/gcall/sitemanagement/codebook");
		return mv;
	}

	@RequestMapping(value="getCodeBook", method=RequestMethod.POST)
	public ModelAndView getCodeBook(HttpServletRequest req) throws Exception{
		String code = CmmUtil.nvl(req.getParameter("code"));
		String codeType = CmmUtil.nvl(req.getParameter("codeType"));
		ModelAndView mv = new ModelAndView();

		System.out.println("___________cdoe________");
		System.out.println(codeType);
		System.out.println(code);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("USE_YN", code);
		map.put("CODE_TYPE", codeType);

		List<HashMap<String, Object>> codebookList = siteService.getCodeBook(map);
		mv.addObject("codebookList", codebookList);
		mv.setViewName("egovframework/gcall/sitemanagement/codebookDiv");
		return mv;
	}


	@RequestMapping(value="insertCodeType", method=RequestMethod.POST)
	public ModelAndView insertCodeType(HttpServletRequest req) throws Exception{
		String cName = req.getParameter("cName");
		String cType = req.getParameter("cType");
		String other = req.getParameter("other");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("CODE_TYPE", cType);
		map.put("CODE_TYPE_NAME", cName);
		map.put("ETC", other);

		int res = siteService.insertCodeType(map);

		String url="";
		String msg="";

		if(res ==1) {
			url="/site/codebook.do";
			msg="코드생성을 완료했습니다.";
		}else {
			msg="코드생성을 실패했습니다.";
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("egovframework/gcall/boardManage/redirect");
		mv.addObject("url", url);
		mv.addObject("msg", msg);
		return mv;
	}

	@RequestMapping(value="typeDel", method=RequestMethod.GET)
	public ModelAndView typeDel(HttpServletRequest req) throws Exception{
		String code_type = req.getParameter("code_type");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("CODE_TYPE", code_type);

		int res = siteService.deleteCodeType(map);

		String url="";
		String msg="";

		if(res ==1) {
			url="/site/codebook.do";
			msg="코드삭제를 완료했습니다.";
		}else {
			msg="코드삭제를 실패했습니다.";
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("egovframework/gcall/boardManage/redirect");
		mv.addObject("url", url);
		mv.addObject("msg", msg);
		return mv;
	}

	@RequestMapping(value="insertCodebook", method=RequestMethod.POST)
	   public ModelAndView insertCodebook(HttpServletRequest req) throws Exception{
	      String status = req.getParameter("status");
	      System.out.println("status  : " + status);

	      String url="";
	      String msg="";

	      String code_type = req.getParameter("code_type");
	      String code_id = req.getParameter("code_id");
	      String code_name = req.getParameter("code_name");
	      String parent_type = req.getParameter("parent_type");
	      String parent_id = req.getParameter("parent_id");
	      String etc1 = req.getParameter("etc1");
	      String etc2 = req.getParameter("etc2");
	      String etc3 = req.getParameter("etc3");
	      String use_yn = req.getParameter("use_yn");
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("CODE_TYPE", code_type);
	      map.put("CODE_ID", code_id);
	      map.put("CODE_NAME", code_name);
	      map.put("PARENT_TYPE", parent_type);
	      map.put("PARENT_ID", parent_id);
	      map.put("ETC1", etc1);
	      map.put("ETC2", etc2);
	      map.put("ETC3", etc3);
	      map.put("USE_YN", use_yn);
	      
	      if(status == null || "".equals(status)) {
	    	  msg="코드생성을 실패했습니다.";
	      }else {
	    	  if(status.equals("R")) {
	 	         //insert 상태
	 	         System.out.println("status R");
	 	         int res = siteService.insertCodebook(map);
	 	         if(res ==1) {
	 	            url="/site/codebook.do";
	 	            msg="코드생성을 완료했습니다.";
	 	         }else {
	 	            msg="코드생성을 실패했습니다.";
	 	         }
	 	      }else if (status.equals("1")) {
	 	         //update 상태
	 	         System.out.println("status 1");
	 	         int res = siteService.updateCodebook(map);
	 	         if(res ==1) {
	 	            url="/site/codebook.do";
	 	            msg="코드수정을 완료했습니다.";
	 	         }else {
	 	            msg="코드수정을 실패했습니다.";
	 	         }
	 	      }
	      }

	      

	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("egovframework/gcall/boardManage/redirect");
	      mv.addObject("url", url);
	      mv.addObject("msg", msg);
	      return mv;
	   }


	@RequestMapping(value="updateCodeType", method=RequestMethod.POST)
	public ModelAndView updateCodeType(HttpServletRequest req) throws Exception{
		String cName = req.getParameter("cName");
		String cType = req.getParameter("cType");
		String other = req.getParameter("other");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("CODE_TYPE", cType);
		map.put("CODE_TYPE_NAME", cName);
		map.put("ETC", other);

		int res = siteService.updateCodeType(map);

		String url="";
		String msg="";

		if(res ==1) {
			url="/site/codebook.do";
			msg="코드수정을 완료했습니다.";
		}else {
			msg="코드수정을 실패했습니다.";
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("egovframework/gcall/boardManage/redirect");
		mv.addObject("url", url);
		mv.addObject("msg", msg);
		return mv;
	}

	//코드북 수정
	@RequestMapping(value="updateCodebook", method=RequestMethod.POST)
	public ModelAndView updateCodebook(HttpServletRequest req) throws Exception{
		String code_type = req.getParameter("code_type");
		String code_id = req.getParameter("code_id");
		String code_name = req.getParameter("code_name");
		String parent_type = req.getParameter("parent_type");
		String parent_id = req.getParameter("parent_id");
		String etc1 = req.getParameter("etc1");
		String etc2 = req.getParameter("etc2");
		String etc3 = req.getParameter("etc3");
		String use_yn = req.getParameter("use_yn");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("CODE_TYPE", code_type);
		map.put("CODE_ID", code_id);
		map.put("CODE_NAME", code_name);
		map.put("PARENT_TYPE", parent_type);
		map.put("PARENT_ID", parent_id);
		map.put("ETC1", etc1);
		map.put("ETC2", etc2);
		map.put("ETC3", etc3);
		map.put("USE_YN", use_yn);

		int res = siteService.updateCodebook(map);

		String url="";
		String msg="";

		if(res ==1) {
			url="/site/codebook.do";
			msg="코드수정을 완료했습니다.";
		}else {
			msg="코드수정을 실패했습니다.";
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("egovframework/gcall/boardManage/redirect");
		mv.addObject("url", url);
		mv.addObject("msg", msg);
		return mv;
	}
}
