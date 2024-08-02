package egovframework.gcall.main.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.main.service.DataService;
import egovframework.gcall.main.service.MainService;
import egovframework.gcall.util.CommonUtil;
import egovframework.gcall.util.EncryptUtil;

@Controller
@RequestMapping(value = "/")
public class IndexController {
	
	@Resource(name = "MainService")
	private MainService mainService;
	
	@Resource(name = "DataService")
	private DataService dataService;
	
	// 이전 소스 redirect
	@RequestMapping("/ic.do")
	public ModelAndView prevRedirect(
			@RequestParam(value="pi", defaultValue="") String pi) {
		ModelAndView mav = new ModelAndView();
		
		if(pi.equals("smsContact")) mav.setViewName("redirect:https://www.110.go.kr/consult/sms.do");
		else if(pi.equals("chatCamMain")) mav.setViewName("redirect:https://www.110.go.kr/consult/cam.do");
		else if(pi.equals("csManual")) mav.setViewName("redirect:https://www.110.go.kr/consult/manual.do");
		else if(pi.equals("anonymousChat")) mav.setViewName("redirect:https://www.110.go.kr/consult/affect.do");
		else if(pi.equals("reservationContact")) mav.setViewName("redirect:https://www.110.go.kr/consult/chat.do");
		else mav.setViewName("redirect:https://www.110.go.kr/consult/chat.do");
				
		return mav;
	}
	
	// 이전 소스 redirect2
	@RequestMapping("/dataQa.do")
	public ModelAndView prevRedirect2() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect:https://www.110.go.kr/data/faq.do");
		
		return mav;
	}
		
	// 이전 소스 redirect3
	@RequestMapping("/dataContactStory.do")
	public ModelAndView prevRedirect3() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect:https://www.110.go.kr/data/story.do");
		
		return mav;
	}
	
	// 이전 소스 redirect4
	@RequestMapping("/newsNotice.do")
	public ModelAndView prevRedirect4() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect:https://www.110.go.kr/board/notice.do");
		
		return mav;
	}
	
	// 암호화 테스트
	@RequestMapping("/auth/test1.do")
	public ModelAndView test1() {
		ModelAndView mav = new ModelAndView();
		
		String a = "20200108150720";
		String b = "QkYFV+Jlpss/zOiE1BCUxA==";
		
		try {
			String cc = URLEncoder.encode(a, "UTF-8");
			String c = URLDecoder.decode(b, "UTF-8");
	    	String bb = b.replaceAll("[+]", "%2B");
			System.out.println("TTTTTTTTTTT");
			System.out.println(c);
			System.out.println(cc);
			System.out.println(bb);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("Exception occurred");
		}
		
		mav.setViewName("egovframework/gcall/main/auth/checkplus_test");
		
		return mav;
	}
	
	// URL 테스트
	@RequestMapping("/auth/test2.do")
	public ModelAndView test2() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("egovframework/gcall/main/auth/checkplus_url_test");
		
		return mav;
	}
	
	// 문자인증 성공 로직(chat)
	@RequestMapping("/auth/success.do")
	public ModelAndView checkInfo(
			HttpServletRequest req,
			HttpServletResponse res,
			HttpSession session,
			@RequestParam(value="EncodeData", defaultValue="") String encodeData) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
		
	    String sEncodeData = CommonUtil.requestReplace(req.getParameter("EncodeData"), "encodeData");

	    String sSiteCode = "BQ266";				// NICE로부터 부여받은 사이트 코드
	    String sSitePassword = "";			// NICE로부터 부여받은 사이트 패스워드

	    String sCipherTime = "";			// 복호화한 시간
	    String sRequestNumber = "";			// 요청 번호
	    String sResponseNumber = "";		// 인증 고유번호
	    String sAuthType = "";				// 인증 수단
	    String sName = "";					// 성명
	    String sDupInfo = "";				// 중복가입 확인값 (DI_64 byte)
	    String sConnInfo = "";				// 연계정보 확인값 (CI_88 byte)
	    String sBirthDate = "";				// 생년월일(YYYYMMDD)
	    String sGender = "";				// 성별
	    String sNationalInfo = "";			// 내/외국인정보 (개발가이드 참조)
		String sMobileNo = "";				// 휴대폰번호
		String sMobileCo = "";				// 통신사
	    String sMessage = "";
	    String sPlainData = "";
	    
	    int iReturn = niceCheck.fnDecode(sSiteCode, sSitePassword, sEncodeData);

	    if(iReturn == 0) {
	        sPlainData = niceCheck.getPlainData();
	        sCipherTime = niceCheck.getCipherDateTime();
	        
	        // 데이타를 추출합니다.
	        java.util.HashMap mapresult = niceCheck.fnParse(sPlainData);
	        
	        sRequestNumber  = (String) mapresult.get("REQ_SEQ");
	        sResponseNumber = (String) mapresult.get("RES_SEQ");
	        sAuthType		= (String) mapresult.get("AUTH_TYPE");
	        sName			= (String) mapresult.get("NAME");
			//sName			= (String) mapresult.get("UTF8_NAME"); //charset utf8 사용시 주석 해제 후 사용
	        sBirthDate		= (String) mapresult.get("BIRTHDATE");
	        sGender			= (String) mapresult.get("GENDER");
	        sNationalInfo  	= (String) mapresult.get("NATIONALINFO");
	        sDupInfo		= (String) mapresult.get("DI");
	        sConnInfo		= (String) mapresult.get("CI");
	        sMobileNo		= (String) mapresult.get("MOBILE_NO");
	        sMobileCo		= (String) mapresult.get("MOBILE_CO");
	        
	        String session_sRequestNumber = (String) session.getAttribute("REQ_SEQ");
	        if(!sRequestNumber.equals(session_sRequestNumber)) {
	            sMessage = "세션값 불일치 오류입니다.";
	            sResponseNumber = "";
	            sAuthType = "";
	        }
	    } 
	    else if( iReturn == -1) sMessage = "복호화 시스템 오류입니다.";
	    else if( iReturn == -4) sMessage = "복호화 처리 오류입니다."; 
	    else if( iReturn == -5) sMessage = "복호화 해쉬 오류입니다."; 
	    else if( iReturn == -6) sMessage = "복호화 데이터 오류입니다.";
	    else if( iReturn == -9) sMessage = "입력 데이터 오류입니다.";
	    else if( iReturn == -12) sMessage = "사이트 패스워드 오류입니다.";
	    else sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
	    
	    if(!sMessage.equals("")) {
	    	System.out.println("========== 본인인증 ERROR(" + "chat" + ") ==========");
	    	System.out.println("iReturn : " + iReturn);
	        System.out.println("sMessage : " + sMessage);
	        System.out.println("========== 본인인증 ERROR ==========");
	        mav.addObject("errMessage", sMessage);
		    mav.setViewName("egovframework/gcall/main/authError");
	        return mav;
	    }
	    
	    System.out.println("========== 본인인증 SUCCESS(" + "chat" + ") ==========");
	    System.out.println("sMobileNo : " + sMobileNo);
	    System.out.println("========== 본인인증 SUCCESS ==========");
	    
	    // 현재 연월일시분초
	    Date currentTime = new Date();
		String currentTimeStr = new SimpleDateFormat("yyyyMMddHHmmss").format(currentTime);
		
		// 현재 연월일시분초 => 암호화(AES128)
	    String chk = "";
	    try {
	    	chk = URLEncoder.encode(EncryptUtil.encAES128CBC(currentTimeStr), "UTF-8");
	    	// chk = chk.replaceAll("[+]", "%2B");
	    	System.out.println("chk test : " + chk);
	    } catch(IOException e) {
	    	//e.printStackTrace();
	    	chk = "";
	    }
	    
	    // 기존 url + chk 값
	    mav.setViewName("redirect:https://handspeak.110.go.kr/ch/main?pn=" + sMobileNo + "&chk=" + chk);
		return mav;
	}
	
	// 문자인증 성공 로직
	@RequestMapping("/auth/successCam.do")
	public ModelAndView checkInfo(
			HttpServletRequest req,
			HttpServletResponse res,
			HttpSession session,
			@RequestParam(value="EncodeData", defaultValue="") String encodeData,
			@RequestParam(value="type", defaultValue="") String type) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
		
	    String sEncodeData = CommonUtil.requestReplace(req.getParameter("EncodeData"), "encodeData");

	    String sSiteCode = "BQ266";				// NICE로부터 부여받은 사이트 코드
	    String sSitePassword = "";			// NICE로부터 부여받은 사이트 패스워드

	    String sCipherTime = "";			// 복호화한 시간
	    String sRequestNumber = "";			// 요청 번호
	    String sResponseNumber = "";		// 인증 고유번호
	    String sAuthType = "";				// 인증 수단
	    String sName = "";					// 성명
	    String sDupInfo = "";				// 중복가입 확인값 (DI_64 byte)
	    String sConnInfo = "";				// 연계정보 확인값 (CI_88 byte)
	    String sBirthDate = "";				// 생년월일(YYYYMMDD)
	    String sGender = "";				// 성별
	    String sNationalInfo = "";			// 내/외국인정보 (개발가이드 참조)
		String sMobileNo = "";				// 휴대폰번호
		String sMobileCo = "";				// 통신사
	    String sMessage = "";
	    String sPlainData = "";
	    
	    int iReturn = niceCheck.fnDecode(sSiteCode, sSitePassword, sEncodeData);

	    if(iReturn == 0) {
	        sPlainData = niceCheck.getPlainData();
	        sCipherTime = niceCheck.getCipherDateTime();
	        
	        // 데이타를 추출합니다.
	        java.util.HashMap mapresult = niceCheck.fnParse(sPlainData);
	        
	        sRequestNumber  = (String) mapresult.get("REQ_SEQ");
	        sResponseNumber = (String) mapresult.get("RES_SEQ");
	        sAuthType		= (String) mapresult.get("AUTH_TYPE");
	        sName			= (String) mapresult.get("NAME");
			//sName			= (String) mapresult.get("UTF8_NAME"); //charset utf8 사용시 주석 해제 후 사용
	        sBirthDate		= (String) mapresult.get("BIRTHDATE");
	        sGender			= (String) mapresult.get("GENDER");
	        sNationalInfo  	= (String) mapresult.get("NATIONALINFO");
	        sDupInfo		= (String) mapresult.get("DI");
	        sConnInfo		= (String) mapresult.get("CI");
	        sMobileNo		= (String) mapresult.get("MOBILE_NO");
	        sMobileCo		= (String) mapresult.get("MOBILE_CO");
	        
	        String session_sRequestNumber = (String) session.getAttribute("REQ_SEQ");
	        if(!sRequestNumber.equals(session_sRequestNumber)) {
	            sMessage = "세션값 불일치 오류입니다.";
	            sResponseNumber = "";
	            sAuthType = "";
	        }
	    } 
	    else if( iReturn == -1) sMessage = "복호화 시스템 오류입니다.";
	    else if( iReturn == -4) sMessage = "복호화 처리 오류입니다."; 
	    else if( iReturn == -5) sMessage = "복호화 해쉬 오류입니다."; 
	    else if( iReturn == -6) sMessage = "복호화 데이터 오류입니다.";
	    else if( iReturn == -9) sMessage = "입력 데이터 오류입니다.";
	    else if( iReturn == -12) sMessage = "사이트 패스워드 오류입니다.";
	    else sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
	    
	    if(!sMessage.equals("")) {
	    	System.out.println("========== 본인인증 ERROR(" + "cam" + ") ==========");
	    	System.out.println("iReturn : " + iReturn);
	        System.out.println("sMessage : " + sMessage);
	        System.out.println("========== 본인인증 ERROR ==========");
	        mav.addObject("errMessage", sMessage);
		    mav.setViewName("egovframework/gcall/main/authError");
	        return mav;
	    }
	    
	    System.out.println("========== 본인인증 SUCCESS(" + "cam" + ") ==========");
	    System.out.println("sMobileNo : " + sMobileNo);
	    System.out.println("========== 본인인증 SUCCESS ==========");
	    
	    // 현재 연월일시분초
	    Date currentTime = new Date();
		String currentTimeStr = new SimpleDateFormat("yyyyMMddHHmmss").format(currentTime);
		
		// 현재 연월일시분초 => 암호화(AES128)
	    String chk = "";
	    try {
	    	chk = URLEncoder.encode(EncryptUtil.encAES128CBC(currentTimeStr), "UTF-8");
	    	// chk = chk.replaceAll("[+]", "%2B");
	    	System.out.println("chk test : " + chk);
	    } catch(IOException e) {
	    	//e.printStackTrace();
	    	chk = "";
	    }
	    
	    // 기존 url + chk 값
	    mav.setViewName("redirect:https://handspeak.110.go.kr/sl/main?pn=" + sMobileNo + "&chk=" + chk);
		return mav;
	}
	
	// 문자인증 실패 로직
	@RequestMapping("/auth/fail.do")
	public ModelAndView fail(
			HttpServletRequest req,
			HttpServletResponse res,
			HttpSession session,
			@RequestParam(value="EncodeData", defaultValue="") String encodeData) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();

	    String sEncodeData = CommonUtil.requestReplace(req.getParameter("EncodeData"), "encodeData");

	    String sSiteCode = "BQ266";						// NICE로부터 부여받은 사이트 코드
	    String sSitePassword = "";			// NICE로부터 부여받은 사이트 패스워드

	    String sCipherTime = "";						// 복호화한 시간
	    String sRequestNumber = "";						// 요청 번호
	    String sErrorCode = "";							// 인증 결과코드
	    String sAuthType = "";							// 인증 수단
	    String sMessage = "";
	    String sPlainData = "";
	    
	    int iReturn = niceCheck.fnDecode(sSiteCode, sSitePassword, sEncodeData);

	    if(iReturn == 0) {
	        sPlainData = niceCheck.getPlainData();
	        sCipherTime = niceCheck.getCipherDateTime();
	        
	        // 데이타를 추출합니다.
	        java.util.HashMap mapresult = niceCheck.fnParse(sPlainData);
	        
	        sRequestNumber 	= (String) mapresult.get("REQ_SEQ");
	        sErrorCode 		= (String) mapresult.get("ERR_CODE");
	        sAuthType 		= (String) mapresult.get("AUTH_TYPE");
	    }
	    else if(iReturn == -1) sMessage = "복호화 시스템 에러입니다.";
	    else if(iReturn == -4) sMessage = "복호화 처리오류입니다.";
	    else if(iReturn == -5) sMessage = "복호화 해쉬 오류입니다.";
	    else if(iReturn == -6) sMessage = "복호화 데이터 오류입니다.";
	    else if(iReturn == -9) sMessage = "입력 데이터 오류입니다.";
	    else if(iReturn == -12) sMessage = "사이트 패스워드 오류입니다.";
	    else sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
	    
	    System.out.println("========== 본인인증 FAIL ==========");
	    System.out.println("sCipherTime : " + sCipherTime);
	    System.out.println("sRequestNumber : " + sRequestNumber);
	    System.out.println("sErrorCode : " + sErrorCode);
	    System.out.println("sAuthType : " + sAuthType);
	    System.out.println("iReturn : " + iReturn);
        System.out.println("sMessage : " + sMessage);
        System.out.println("========== 본인인증 FAIL ==========");
	    
	    mav.addObject("errMessage", sMessage);
	    mav.setViewName("egovframework/gcall/main/authError");
        return mav;
	}
	
	@RequestMapping("/auth3/checkplus_main.do")
	public ModelAndView checkplus_main() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/auth/checkplus_main");
		
		return mav;
	}
	
	@RequestMapping("/auth3/checkplus_success.do")
	public ModelAndView checkplus_success() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/auth/checkplus_success");
		
		return mav;
	}
	
	@RequestMapping("/auth3/checkplus_fail.do")
	public ModelAndView checkplus_fail() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/auth/checkplus_fail");
		
		return mav;
	}
	
	// 첫화면
	@RequestMapping("/start.do")
	public ModelAndView start() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/indexN");
		mav.addObject("lev1_menu", "index");
		mav.addObject("lev2_menu", "");
		
		// 방문 날짜 설정
		Date today = new Date();
		String todayDate = new SimpleDateFormat("yyyyMMdd").format(today);
		
		/*
		 * 0. 게시물 개수 설정
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start_index", 0);
		map.put("page_size", 5);
		
		// 1. 게시물 조회(공지사항)
		map.put("board_type", new CommonUtil().getConfIdList().get("notice"));
		List<HashMap<String, Object>> noticeMainList = mainService.boardList(map);
		
		// 2. 게시물 조회(보도자료)
		map.put("board_type", new CommonUtil().getConfIdList().get("news"));
		List<HashMap<String, Object>> newsMainList = mainService.boardList(map);
		
		/*
		 * 3. 알람 테이블 설정
		 */
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("alarm_use", "1");
		map2.put("today_date", todayDate);
		
		// 4. popup id 리스트 불러오기
		map2.put("alarm_type", "3");
		List<HashMap<String, Object>> popupIdList = mainService.popupIdList(map2);
		
		// 5. popup zone 리스트 불러오기
		map2.put("alarm_type", "2");
		List<HashMap<String, Object>> popupZoneList = mainService.popupZoneList(map2);
		
		mav.addObject("noticeList", noticeMainList);
		mav.addObject("newsList", newsMainList);
		mav.addObject("popupIdList", popupIdList);
		mav.addObject("popupZoneList", popupZoneList);
		
		return mav;
	}
	
	// 사이트맵
	@RequestMapping("/sitemap.do")
	public ModelAndView sitemap() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("egovframework/gcall/main/sitemap/sub01N");
		mav.addObject("lev1_menu", "sitemap");
		mav.addObject("lev2_menu", "");
		
		return mav;
	}
	
	// 개인정보처리방침
	@RequestMapping("/privacy.do")
	public ModelAndView privacy(@RequestParam(value = "sd", defaultValue="") String startDate) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/privacy/privacyN");
		mav.addObject("lev1_menu", "privacy");
		mav.addObject("lev2_menu", startDate);
		
		/*
		if(startDate.equals("")) mav.setViewName("egovframework/gcall/main/privacy/privacyN");
		if(startDate.equals("current")) mav.setViewName("egovframework/gcall/main/privacy/privacy_first");
		if(startDate.equals("20160401")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20160401");
		if(startDate.equals("20160613")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20160613");
		if(startDate.equals("20160822")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20160822");
		if(startDate.equals("20160930")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20160930");
		if(startDate.equals("20170424")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20170424");
		if(startDate.equals("20180128")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20180128");
		if(startDate.equals("20180701")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20180701");
		if(startDate.equals("20190401")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20190401");
		if(startDate.equals("20190610")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20190610");
		if(startDate.equals("20190729")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20190729");
		if(startDate.equals("20191001")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20191001");
		if(startDate.equals("20200420")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20200420");
		if(startDate.equals("20210201")) mav.setViewName("egovframework/gcall/main/privacy/privacy_20210201");
		*/
		
		if(startDate.equals("") || startDate.equals("current")) { 
			mav.setViewName("egovframework/gcall/main/privacy/privacyN");
		} else {
			mav.setViewName("egovframework/gcall/main/privacy/privacy_"+startDate);
		}
		
		return mav;
	}
	
	// 팝업
	@RequestMapping("/popup.do")
	public ModelAndView popup(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value="popupid", defaultValue="") String popupid) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("egovframework/gcall/main/common/popup");
		mav.addObject("lev1_menu", "popup");
		mav.addObject("lev2_menu", "");
		
		/*
		 * 1. popup 불러오기
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("alarm_type", "3");
		map.put("alarm_use", "1");
		map.put("alarm_id", popupid);
		
		List<HashMap<String, Object>> resultList = mainService.popupDetail(map);
		
		/*
		 * 2. content replace
		 */
		String popupContent = (String) resultList.get(0).get("ALARM_CONTENT");
		
		if(popupContent == null) popupContent = "";
		
		popupContent = popupContent.replaceAll("&lt;", "<");
		popupContent = popupContent.replaceAll("&gt;", ">");
		popupContent = popupContent.replaceAll("&quot;", "\"");
		popupContent = popupContent.replaceAll("&gt;", ">");
		popupContent = popupContent.replaceAll("&amp;", "&");
		
		resultList.get(0).put("ALARM_CONTENT", popupContent);
		
		mav.addObject("popupDetail", resultList.get(0));
		
		return mav;
	}
	
	// 파일다운로드 로직
	@RequestMapping("/fileDown.do")
	public void fileDown(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value="num", defaultValue="0") Integer num,
			@RequestParam(value="type", defaultValue="board") String type) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		
		List<HashMap<String, Object>> resultList = null;
		
		if(type.equals("board")) resultList = mainService.boardFile(map);
		else resultList = dataService.contactFile(map);
		
		res.reset();
		
		if(resultList.isEmpty()) {
			res.setContentType("text/html;charset=UTF-8");
			PrintWriter out = res.getWriter();
			try {
				out.print("<script>alert('선택 하신 파일을 찾을 수 없습니다.'); history.go(-1);</script>");
			} catch(IndexOutOfBoundsException e) {
				System.out.println("error");
			} finally {
				out.close();
			}
			System.out.println("ERR: " + "no file");
		} else {
			String originFileName = java.net.URLEncoder.encode(resultList.get(0).get("ORIGINAL_FILE_NAME").toString(), "UTF-8");
			originFileName = originFileName.replace("+", " ").trim();
			
			String userAgent = req.getHeader("User-Agent");
			
			File uFile = new File(req.getSession().getServletContext().getRealPath("/") + resultList.get(0).get("UPLOAD_PATH").toString(), resultList.get(0).get("FILE_NAME").toString());
			int fSize = (int) uFile.length();
			
			if(fSize <= 0) {
				res.setContentType("text/html;charset=UTF-8");
				PrintWriter out = res.getWriter();
				try {
					out.print("<script>alert('선택 하신 파일을 찾을 수 없습니다.'); history.go(-1);</script>");
				} catch(IndexOutOfBoundsException e) {
					System.out.println("error");
				} finally {
					out.close();
				}
				System.out.println("ERR: " + "file size is 0");
			} else {
				
				res.setContentType("application/octet-stream; charset=UTF-8;");
				
				// MS IE 5.5 이하
				if (userAgent.indexOf("MSIE 5.5") > -1) res.setHeader("Content-Disposition", "filename=" + new String(originFileName.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
				// MS IE (보통은 6.x 이상 가정)
				else if (userAgent.indexOf("MSIE") > -1) res.setHeader("Content-Disposition", "attachment; filename=" + new String(originFileName.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
				// MS IE 11
				else if (userAgent.indexOf("Trident") > -1) res.setHeader("Content-Disposition", "attachment; filename=" + new String(originFileName.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
				// 모질라나 오페라
				else res.setHeader("Content-Disposition", "attachment; filename=" + new String(originFileName.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");

				res.setHeader("Content-Length", fSize + "");
				
				InputStream ins = new FileInputStream(uFile);
				OutputStream os = res.getOutputStream();
			  	
			  	byte b[] = new byte[fSize];
			  	int len = 0;
			  	
			  	//추가 22.06.03
			  	try {
			  		while((len = ins.read(b)) > 0) os.write(b, 0, len);
				} catch (IOException e) {
					//e.printStackTrace();
					System.out.println("Connection Exception occurred");
				} finally {
					ins.close();
				   	os.close();
				}
			
			}
		}
	}
	
	// 에러 페이지
	@RequestMapping("/error.do")
	public ModelAndView error() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/error");
		
		return mav;
	}
}
