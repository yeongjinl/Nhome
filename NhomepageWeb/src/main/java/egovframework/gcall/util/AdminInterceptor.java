package egovframework.gcall.util;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import egovframework.gcall.dto.LgnHistoryDTO2;
import egovframework.gcall.dto.LgnHistoryDTO2.LoginStatus;
import egovframework.gcall.service.AdminService;


public class AdminInterceptor extends HandlerInterceptorAdapter {
	
	@Resource(name = "AdminService")
	private AdminService adminService;
    
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession(false);
        
		String requestURI = request.getRequestURI();
		request.setAttribute("requestURI", requestURI);
		
  		String loginID = CmmUtil.nvl(request.getParameter("loginID"));
		String ipAddress = IpUtil.getClientIp(request);
		String lgnHstdID = LgnHistoryDTO2.generateLgnHstrId();
		
		LoginStatus lgnStatus;
		if(requestURI.endsWith("logout.do")) {
			lgnStatus = LoginStatus.LOGOUT;
		} else if(requestURI.endsWith("loginRetrieve.do")) {
			lgnStatus = LoginStatus.LOGIN;
		} else { 
			lgnStatus = LoginStatus.LOGIN;
		}
		
		request.setAttribute("requestURI", requestURI);
		request.setAttribute("lgnStatus", lgnStatus);

		
        if (!requestURI.endsWith("/g110/adm.do") && !requestURI.endsWith("/g110/statRetrieve.do") && !requestURI.endsWith("/severdata/conGubunL.do") && !requestURI.endsWith("/severdata/dbGubun.do") && !requestURI.endsWith("/severdata/classGubunL.do") && !requestURI.endsWith("/severdata/flagGubun.do") && !requestURI.endsWith("/severdata/classGubunM.do")  && !requestURI.endsWith("/severdata/classGubunS.do") && !requestURI.endsWith("/popup/popupList.do")) {
        	
        	if (session != null && session.getAttribute("ss_user_info") != null)  {
                Object ss_user_info1 = session.getAttribute("ss_user_info");

                if (ss_user_info1 instanceof Map) {
                    Map<String, Object> userInfo = (Map<String, Object>) ss_user_info1;
                    String sessionUserID = (String) userInfo.get("USER_ID");
                    
                	LgnHistoryDTO2 lgnHstr = new LgnHistoryDTO2.LgnHistoryDTO2Builder(lgnHstdID, sessionUserID, ipAddress, lgnStatus, requestURI).build();
            		adminService.lgnHstr2Insert(lgnHstr);
                }else { 
            		LgnHistoryDTO2 lgnHstr = new LgnHistoryDTO2.LgnHistoryDTO2Builder(lgnHstdID, loginID, ipAddress, lgnStatus, requestURI).build();
            		adminService.lgnHstr2Insert(lgnHstr);
                }
	        	
        	}
        }
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav) throws Exception {
	    super.postHandle(request, response, handler, mav);
	}

}

