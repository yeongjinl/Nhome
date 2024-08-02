package egovframework.com.sec.security.filter;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.context.support.WebApplicationContextUtils;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.config.EgovLoginConfig;
import egovframework.com.cmm.util.EgovBasicLogger;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.uat.uia.service.EgovLoginService;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;

/**
 *
 * @author 공통서비스 개발팀 서준식
 * @since 2011. 8. 29.
 * @version 1.0
 * @see
 *
 * <pre>
 * 개정이력(Modification Information)
 *
 *     수정일                 수정자        	  수정내용
 *  -----------    --------   ---------------------------
 *  2011.08.29    	 서준식      최초생성
 *  2011.12.12      유지보수      사용자 로그인 정보 간섭 가능성 문제(멤버 변수 EgovUserDetails userDetails를 로컬변수로 변경)
 *  2014.03.07      유지보수      로그인된 상태에서 다시 로그인 시 미처리 되는 문제 수정 (로그인 처리 URL 파라미터화)
 *  2017.03.03 		조성원 	    시큐어코딩(ES)-부적절한 예외 처리[CWE-253, CWE-440, CWE-754]
 *  2017.07.10      장동한       실행환경 v3.7(Spring Security 4.0.3 적용)
 *  2017.07.21 		 장동한 		로그인인증제한 작업
 *
 *  </pre>
 */

public class EgovSpringSecurityLoginFilter implements Filter {

	private FilterConfig config;

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSpringSecurityLoginFilter.class);

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;
	}
}

class RequestWrapperForSecurity extends HttpServletRequestWrapper {
	private String username = null;
	private String password = null;

	public RequestWrapperForSecurity(HttpServletRequest request, String username, String password) {
		super(request);

		this.username = username;
		this.password = password;
	}
	
	@Override
	public String getServletPath() {
		return ((HttpServletRequest) super.getRequest()).getContextPath() + "/egov_security_login";
	}

	@Override
	public String getRequestURI() {
		return ((HttpServletRequest) super.getRequest()).getContextPath() + "/egov_security_login";
	}

	@Override
	public String getParameter(String name) {
		if (name.equals("egov_security_username")) {
			return username;
		}

		if (name.equals("egov_security_password")) {
			return password;
		}

		return super.getParameter(name);
	}
}
