package egovframework.gcall.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.dto.ResultDTO;
import egovframework.gcall.main.service.ConsultService;
import egovframework.gcall.service.SiteService;
import egovframework.gcall.util.DateTimeUtil;
import egovframework.gcall.util.EncryptUtil;
import egovframework.gcall.util.StringUtil;

@Controller
@RequestMapping(value = "/consult")
public class ConsultController {
	
	@Resource(name = "ConsultService")
	private ConsultService consultService;
	
	@Resource(name = "SiteService")
	private SiteService siteService;
	
	// 상담이용안내
	@RequestMapping("/manual.do")
	public ModelAndView manual() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/consult/sub01N");
		mav.addObject("lev1_menu", "consult");
		mav.addObject("lev2_menu", "manual");
		
		return mav;
	}
	
	// 채팅상담
	@RequestMapping("/chat.do")
	public ModelAndView chat() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/consult/sub02N");
		mav.addObject("lev1_menu", "consult");
		mav.addObject("lev2_menu", "chat");
		
		return mav;
	}
	
	// 문자상담
	@RequestMapping("/sms.do")
	public ModelAndView sms() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/consult/sub03N");
		mav.addObject("lev1_menu", "consult");
		mav.addObject("lev2_menu", "sms");
		
		return mav;
	}
	
	// 문자상담 등록
	@RequestMapping("/smsReg.do")
	public void smsReg(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value="contents", defaultValue="") String contents,
			@RequestParam(value="tel", defaultValue="") String tel) throws Exception {
		
		/*
		 * 2. 결과 리턴
		 */
		ResultDTO resultDTO = new ResultDTO();
		
		/*
		 * 1. 문자상담에 저장
		 */
		//전화번호 검증
		if(tel != "") {
			//하이픈이 있으면 제거
			tel = tel.replaceAll("-", "");
			String patternStr = "\\d{3}\\d{3,4}\\d{4}"; // 휴대폰 번호규칙을 패턴으로 저장
			
			Pattern pattern = Pattern.compile(patternStr);
			Matcher matcher = pattern.matcher(tel);
			
			if(matcher.matches()) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("contents", contents);
				map.put("tel", tel);
				
				consultService.insertSmsLog(map);
				
				resultDTO.set_error(false);
				resultDTO.set_message("");
			} else {
				
				resultDTO.set_error(true);
				resultDTO.set_message("입력하신 전화번호가 올바르지 않습니다. 확인해 주세요.");
				
			}
		}
		
		PrintWriter out = res.getWriter();
		try {
			out.printf((new ObjectMapper()).writeValueAsString(resultDTO));
		} catch(IOException e) {
			System.out.println("error");
		} finally {
			out.close();
		}
	}
	
	// 수어상담
	@RequestMapping("/cam.do")
	public ModelAndView cam() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/consult/sub04N");
		mav.addObject("lev1_menu", "consult");
		mav.addObject("lev2_menu", "cam");
		
		return mav;
	}
	
	// 수어상담(상단, 하단 제거 버전)
	@RequestMapping("/speak.do")
	public ModelAndView speak() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("egovframework/gcall/main/consult/speak");
		
		return mav;
	}
	
	// 수어상담 시간 체크
	@RequestMapping("/camCheck.do")
	public ModelAndView camCheck(
			HttpServletRequest request,
			HttpServletResponse res,
			HttpSession session,
			@RequestParam(value="telNum", defaultValue="") String telNum) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		// 값 셋팅
	    Date currentTime = new Date();
		String currentTimeStr = new SimpleDateFormat("HHmmss").format(currentTime);
		String currentTimeStr2 = new SimpleDateFormat("yyyyMMddHHmmss").format(currentTime);
		String startTime = "090000";
		String endTime = "180000";
		
		// 주말여부 체크
		int whichDay = DateTimeUtil.whichDay(StringUtil.getDate("-"));
		
		// db에서 공휴일 체크
		List<HashMap<String, Object>> resultList1 = consultService.selectHoliday();
		
		// db에서 오늘날짜 상담 시작 / 끝 시간 가져오기
		List<HashMap<String, Object>> resultList2 = consultService.selectBusiness();
		
		// 있는경우는 db값을 사용하고, 없는경우는 위에 셋팅된 시간 사용
		if(resultList2.size() > 0) {
			startTime = resultList2.get(0).get("BEGIN_TIME").toString() + "0000";
			endTime = resultList2.get(0).get("END_TIME").toString() + "0000";
		}
		
		// 주말 및 공휴일 체크(1: 일요일, 7: 토요일, resultList1.size() > 0: 공휴일)
		if(whichDay == 1 || whichDay == 7 || resultList1.size() > 0) {
			// 주말이지만 특수한경우(설,추석)에 근무시
			if(resultList2.size() > 0) {
				// 시간비교(현재시간 < 시작시간 or 현재시간 > 종료시간)
				if(Integer.parseInt(currentTimeStr) < Integer.parseInt(startTime) || Integer.parseInt(currentTimeStr) > Integer.parseInt(endTime)) {
					
					mav.addObject("errMessage", "죄송합니다. 수어상담은 금일 " + startTime.substring(0, 2) + "시 ~ " + endTime.substring(0, 2) + "시에만 상담 가능합니다.");
				    mav.setViewName("egovframework/gcall/main/authError");
				    
			        return mav;
				}
	        } else {
	        	mav.addObject("errMessage", "죄송합니다. 주말 및 공휴일에는 수어상담 서비스가 이용 불가 합니다.");
			    mav.setViewName("egovframework/gcall/main/authError");
			    
		        return mav;
	        }
 
		} else {
			// 시간비교(현재시간 < 시작시간 or 현재시간 > 종료시간)
			if(Integer.parseInt(currentTimeStr) < Integer.parseInt(startTime) || Integer.parseInt(currentTimeStr) > Integer.parseInt(endTime)) {
				
				mav.addObject("errMessage", "죄송합니다. 수어상담은 금일 " + startTime.substring(0, 2) + "시 ~ " + endTime.substring(0, 2) + "시에만 상담 가능합니다.");
			    mav.setViewName("egovframework/gcall/main/authError");
			    
		        return mav;
			}
		}
		
		// 현재 연월일시분초 => 암호화(AES128)
	    String chk = "";
	    try {
	    	chk = URLEncoder.encode(EncryptUtil.encAES128CBC(currentTimeStr2), "UTF-8");
	    } catch(IOException e) {
	    	//e.printStackTrace();
	    	chk = "";
	    }
	    
	    // 기존 url + chk 값
	    mav.setViewName("redirect:https://handspeak.110.go.kr/sl/main?pn=" + telNum + "&chk=" + chk);
		return mav;
		
		/*// 본인인증 처리
		String myURL = request.getScheme() + "://" + request.getServerName();
		if(!(request.getServerPort() + "").equals("80") && !(request.getServerPort() + "").equals("443")) myURL = myURL + ":" + request.getServerPort();
		
		NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
	    
	    //아이디,패스워드 삭제처리 22.06.03
	    
	    // String sRequestNumber = "REQ0000000001";        	// 요청 번호, 이는 성공/실패후에 같은 값으로 되돌려주게 되므로 
	                                                    	// 업체에서 적절하게 변경하여 쓰거나, 아래와 같이 생성한다.
	    String sRequestNumber = niceCheck.getRequestNO(sSiteCode);
	  	session.setAttribute("REQ_SEQ" , sRequestNumber);	// 해킹등의 방지를 위하여 세션을 쓴다면, 세션에 요청번호를 넣는다.
	  	
	   	String sAuthType = "";      						// 없으면 기본 선택화면, M: 핸드폰, C: 신용카드, X: 공인인증서
	   	
	   	String popgubun = "N";								// Y : 취소버튼 있음 / N : 취소버튼 없음
		String customize = "";								// 없으면 기본 웹페이지 / Mobile : 모바일페이지
		
		String sGender = ""; 								// 없으면 기본 선택 값, 0 : 여자, 1 : 남자 
		
	    // CheckPlus(본인인증) 처리 후, 결과 데이타를 리턴 받기위해 다음예제와 같이 http부터 입력합니다.
		// 리턴url은 인증 전 인증페이지를 호출하기 전 url과 동일해야 합니다. ex) 인증 전 url : http://www.~ 리턴 url : http://www.~
	    String sReturnUrl = myURL + "/auth/successCam.do";      // 성공시 이동될 URL
	    String sErrorUrl = myURL + "/auth/fail.do";          // 실패시 이동될 URL

	    // 입력될 plain 데이타를 만든다.
	    String sPlainData = "7:REQ_SEQ" + sRequestNumber.getBytes().length + ":" + sRequestNumber +
	                        "8:SITECODE" + sSiteCode.getBytes().length + ":" + sSiteCode +
	                        "9:AUTH_TYPE" + sAuthType.getBytes().length + ":" + sAuthType +
	                        "7:RTN_URL" + sReturnUrl.getBytes().length + ":" + sReturnUrl +
	                        "7:ERR_URL" + sErrorUrl.getBytes().length + ":" + sErrorUrl +
	                        "11:POPUP_GUBUN" + popgubun.getBytes().length + ":" + popgubun +
	                        "9:CUSTOMIZE" + customize.getBytes().length + ":" + customize + 
							"6:GENDER" + sGender.getBytes().length + ":" + sGender;
	    
	    String sMessage = "";
	    String sEncData = "";
	    
	    int iReturn = niceCheck.fnEncode(sSiteCode, sSitePassword, sPlainData);
	    if( iReturn == 0 ) sEncData = niceCheck.getCipherData();
	    else if( iReturn == -1) sMessage = "암호화 시스템 에러입니다.";
	    else if( iReturn == -2) sMessage = "암호화 처리오류입니다.";
	    else if( iReturn == -3) sMessage = "암호화 데이터 오류입니다.";
	    else if( iReturn == -9) sMessage = "입력 데이터 오류입니다.";
	    else sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
	    
	    if(iReturn != 0) {
	        
	        mav.addObject("errMessage", sMessage);
		    mav.setViewName("egovframework/gcall/main/authError");
		    
	        return mav;
	    }
		
	    mav.addObject("sEncData", sEncData);
	    mav.setViewName("egovframework/gcall/main/authPass");
	    
        return mav; */
	}
	
	//수어상담 테스트 페이지
	@RequestMapping("/camTest.do")
	public ModelAndView camTest(
			HttpServletRequest request,
			HttpServletResponse res,
			HttpSession session,
			@RequestParam(value="telNum", defaultValue="") String telNum) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		// 값 셋팅
	    Date currentTime = new Date();
		String currentTimeStr2 = new SimpleDateFormat("yyyyMMddHHmmss").format(currentTime);
		
		// 현재 연월일시분초 => 암호화(AES128)
	    String chk = "";
	    try {
	    	chk = URLEncoder.encode(EncryptUtil.encAES128CBC(currentTimeStr2), "UTF-8");
	    } catch(IOException e) {
	    	//e.printStackTrace();
	    	chk = "";
	    }
	    
	    // 기존 url + chk 값
	    mav.setViewName("redirect:https://handspeak.110.go.kr/sl/main?pn=" + telNum + "&chk=" + chk);
		return mav;
	}
	
	//긴급여부 체크
	@RequestMapping("/businessChk.do")
	public void businessChk(
			HttpServletRequest request,
			HttpServletResponse res,
			HttpSession session) throws Exception {
		
		ResultDTO resultDTO = new ResultDTO();
		//접수채널
		String channel = request.getParameter("ch");	
		//코드타입
		String codeType = request.getParameter("codeType");	
		String codeId = "";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("CODE_TYPE", codeType);
		
		try {
			//긴급여부 코드명 가져옴
			codeId = siteService.getCodeName(map);
			
			//결과값이 널인지 체크
			if (codeId == null || codeId.trim().equals("")) {
				codeId="n";
			}
			
			//긴급시(코로나로인한 업무중단)
			if(codeId.toUpperCase().equals("Y")) {
				resultDTO.set_error(true);
				//resultDTO.set_message(EgovProperties.getProperty("Globals.urgn.msg1"));
				resultDTO.set_message("죄송합니다.국민콜110은 코로나 바이러스 감염 위기로 인해 최소 인력이 근무하고 있습니다. 전화상담 외 "+channel+ "이 당분간 중단됩니다.\n서비스 이용에 불편을 드려 대단히 죄송합니다.");
			//긴급(시스템작업)
			} else if(codeId.toUpperCase().equals("Z")) {
				resultDTO.set_error(true);
				//resultDTO.set_message(EgovProperties.getProperty("Globals.urgn.msg2"));
				resultDTO.set_message("죄송합니다.국민콜110 긴급 시스템 작업으로 인해 전화상담 외 "+channel+ "이 당분간 중단됩니다.\n서비스 이용에 불편을 드려 대단히 죄송합니다.");
			} else {
	        	resultDTO.set_error(false);
	        }
		} catch(IOException e) {
			//e.printStackTrace();
			resultDTO.set_error(true);
			resultDTO.set_message("message:"+e);
		} 
		
		PrintWriter out =res.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(resultDTO));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	    
	}
		
	// 예약상담
	@RequestMapping("/reserve.do")
	public ModelAndView reserve() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/consult/sub05");
		mav.addObject("lev1_menu", "consult");
		mav.addObject("lev2_menu", "reserve");
		
		return mav;
	}
	
	// 예약상담 등록
	@RequestMapping("/reserveReg.do")
	public void reserveReg(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value="name", defaultValue="") String name,
			@RequestParam(value="tel", defaultValue="") String tel,
			@RequestParam(value="time", defaultValue="") String time,
			@RequestParam(value="memo", defaultValue="") String memo) throws Exception {
		
		/*
		 * 1. 예약상담에 저장
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("tel", tel);
		map.put("time", time);
		map.put("memo", memo);
		map.put("dept_cd", "");
		
		consultService.insertReservationLog(map);
		
		/*
		 * 2. 결과 리턴
		 */
		ResultDTO resultDTO = new ResultDTO();
		resultDTO.set_error(false);
		resultDTO.set_message("");
		
		PrintWriter out = res.getWriter();
		try {
			out.printf((new ObjectMapper()).writeValueAsString(resultDTO));
		} catch(IOException e) {
			System.out.println("error");
		} finally {
			out.close();
		}
	}
	
	// 갑질피해상담
	@RequestMapping("/affect.do")
	public ModelAndView affect() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/consult/sub06N");
		mav.addObject("lev1_menu", "consult");
		mav.addObject("lev2_menu", "affect");
		
		return mav;
	}
	
	// 갑질피해상담
		@RequestMapping("/popupN.do")
		public ModelAndView popupN() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("egovframework/gcall/main/consult/common/popupN");
			
			return mav;
		}
}
