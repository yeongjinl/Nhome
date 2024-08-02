package egovframework.gcall.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.naver.api.security.client.MACManager;

import egovframework.com.cmm.EgovWebUtil;
import egovframework.gcall.dto.ContactDbDTO;
import egovframework.gcall.dto.PagingDTO;
import egovframework.gcall.service.AdminService;
import egovframework.gcall.service.BoardService;
import egovframework.gcall.service.SeverDataService;
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.StrUtil;
import sun.java2d.pipe.SpanShapeRenderer.Simple;

@Controller
@RequestMapping(value = "/severdata")
public class DataManageController {

   @Resource(name = "SeverDataService")
   private SeverDataService severdataService;

   @Resource(name = "AdminService")
   private AdminService adminService;

   @Resource(name = "BoardService")
	private BoardService boardService;

   @RequestMapping(value="/list")
   public ModelAndView list(ContactDbDTO cbDTO, HttpServletRequest request, HttpSession session) throws Exception{
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("ss_user_info")!=null) {
         Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
         Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
         String inteligenceAuth = CmmUtil.nvl((String) authUI.get("INTELIGENCE_AUTH"));
         String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
            mv.setViewName("egovframework/gcall/boardManage/redirect");
            if(inteligenceAuth.equals("1")||userType.equals("0")) {
//
            	List<ContactDbDTO> hList = new ArrayList<ContactDbDTO>();
            	int page = 0;
            	if(request.getParameter("pageno")==null) {
            		page = 1;
            	} else {
            		page = Integer.parseInt(request.getParameter("pageno"));
            	}
            	if(cbDTO.getPROVE_STATE() == null || cbDTO.gettStartDate() == null || cbDTO.gettEndDate() == null) {
            		Calendar today = Calendar.getInstance();
            		String now = new SimpleDateFormat ("yyyy-MM-dd").format(today.getTime());
            		//상담팀 요청으로 일주일전으로 지정
            		today.add ( Calendar.DATE, -7 );
            		String yesterDate = new SimpleDateFormat ("yyyy-MM-dd").format(today.getTime());
            		cbDTO.setPROVE_STATE("0");
            		cbDTO.settStartDate(yesterDate);
            		cbDTO.settEndDate(now);
            	}

            	//nvl cmmUTil
            	if(CmmUtil.nvl(cbDTO.getFLAG())=="") {
            		cbDTO.setFLAG("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCONTACT_DB_GUBUN())=="") {
            		cbDTO.setCONTACT_DB_GUBUN("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCON1_CD())=="") {
            		cbDTO.setCON1_CD("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCON2_CD())=="") {
            		cbDTO.setCON2_CD("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCON3_CD())=="") {
            		cbDTO.setCON3_CD("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCLASS1_CD())=="") {
            		cbDTO.setCLASS1_CD("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCLASS2_CD())=="") {
            		cbDTO.setCLASS2_CD("");
            	}
            	if(CmmUtil.nvl(cbDTO.getCLASS3_CD())=="") {
            		cbDTO.setCLASS3_CD("");
            	}
            	int listCnt = severdataService.getProveViewCount(cbDTO);
            	PagingDTO paging = new PagingDTO();
            	if(listCnt > 0 && page > 0) {
            		paging.pageInfo(page, listCnt);
            		int startlist = paging.getStartList();
            		int listsize = paging.getListSize();
            		cbDTO.setStartlist(startlist);
            		cbDTO.setListsize(listsize);

            		hList  =  severdataService.getProveView(cbDTO);
            		mv.addObject("proveViewArr",hList);
            		mv.addObject("paging",paging);
            		mv.addObject("cbDTO",cbDTO);
            	}else {
            		mv.addObject("proveViewArr",hList);
            		mv.addObject("paging",paging);
            		mv.addObject("cbDTO",cbDTO);
            	}
            	mv.setViewName("egovframework/gcall/dataManage/knowledgeList");
            } else {
            mv.addObject("url","/g110/adm.do");
            mv.addObject("msg","권한이 없습니다.");
         }
      }else if(session.getAttribute("ss_user_info")==null) {
         mv.setViewName("egovframework/gcall/boardManage/redirect");
         mv.addObject("url","/g110/login.do");
         mv.addObject("msg","로그인 정보가 없습니다.");
      }
      return mv;
   }
   @RequestMapping(value="/reg")
   public ModelAndView reg(HttpSession session) throws Exception{
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("ss_user_info")!=null) {
         Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
         Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
         String inteligenceAuth = CmmUtil.nvl((String) authUI.get("INTELIGENCE_AUTH"));
         String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
         if(inteligenceAuth.equals("1")||userType.equals("0")) {
            mv.setViewName("egovframework/gcall/dataManage/knowledgeReg");
         } else {
            mv.setViewName("egovframework/gcall/boardManage/redirect");
            mv.addObject("url","/g110/adm.do");
            mv.addObject("msg","권한이 없습니다.");
         }
      }else if(session.getAttribute("ss_user_info")==null) {
         mv.setViewName("egovframework/gcall/boardManage/redirect");
         mv.addObject("url","/g110/login.do");
         mv.addObject("msg","로그인 정보가 없습니다.");
      }
      return mv;
   }
   @RequestMapping(value="/regInsert", method=RequestMethod.POST)
   public ModelAndView regInsert(ContactDbDTO contact,
		   HttpServletRequest request,
		   @RequestParam(value="FILE_NAME",required=false) String[] FILE_NAME,
			@RequestParam(value="FILE_SORT",required=false) String[] FILE_SORT,
			@RequestParam(value="ORIGINAL_FILE_NAME",required=false) String[] ORIGINAL_FILE_NAME,
			@RequestParam(value="REAL_PATH",required=false) String[] REAL_PATH,
			@RequestParam(value="TEMP_ID",required=false) String[] TEMP_ID,
			@RequestParam(value="USE_YN",required=false) String[] USE_YN,
		   HttpSession session) throws Exception{

	  String REG_DATE = new SimpleDateFormat ("yyyyMMdd").format(new Date());
	  String REG_TIME = new SimpleDateFormat ("HHmmss").format(new Date());
	  contact.setQUST_CNTN(StrUtil.tagHtml(contact.getQUST_CNTN()));
	  contact.setCONTENT(StrUtil.tagHtml(contact.getCONTENT()));
	  contact.setREG_DATE(REG_DATE);
	  contact.setREG_TIME(REG_TIME);
	  contact.setLST_UPDATE_DATE(REG_DATE);
	  contact.setLST_UPDATE_TIME(REG_TIME);

      ModelAndView mv = new ModelAndView();
      try {
    	  System.out.println("11111");
         int result = severdataService.contactDbInsert(contact);
         System.out.println("res:"+result);
         int omContactDbSEQ = severdataService.omContactDbSEQ();
         System.out.println("omContactDbSEQ:"+omContactDbSEQ);
         System.out.println(FILE_NAME);
         if(FILE_NAME!=null) {
        	 System.out.println(FILE_NAME);
  			for(int i = 0; i <FILE_NAME.length;i++) {
  				System.out.println("for start ");
  				HashMap<String, Object> hMap = new HashMap<>();
  				hMap.put("FILE_NAME", CmmUtil.nvl(FILE_NAME[i]));
  				hMap.put("FILE_SORT", CmmUtil.nvl(FILE_SORT[i]));
  				hMap.put("ORIGINAL_FILE_NAME", CmmUtil.nvl(ORIGINAL_FILE_NAME[i]));
  				hMap.put("REAL_PATH", "/files/faq");
  				hMap.put("TEMP_ID", CmmUtil.nvl(TEMP_ID[i]));
  				hMap.put("USE_YN",CmmUtil.nvl( USE_YN[i]));
  				hMap.put("PARENT_SEQ", omContactDbSEQ);
  				hMap.put("CONF_ID", "CONTACT_DB");
  				System.out.println("for emnd1 ");
  				severdataService.scFileUploadDB(hMap);
  				System.out.println("for emnd2 ");
  			}
  			System.out.println("for emnd3 ");

  			 if(result == 1) {
  	            mv.addObject("msg","성공 하였습니다.");
  	            mv.addObject("url","/severdata/list.do");
  	            mv.setViewName("egovframework/gcall/boardManage/redirect");
  	         } else {
  	            mv.addObject("msg","실패 하였습니다.");
  	            mv.setViewName("egovframework/gcall/dataManage/knowledgeReg");
  	         }
  		}else {
  			 if(result == 1) {
  	            mv.addObject("msg","성공 하였습니다.");
  	            mv.addObject("url","/severdata/list.do");
  	            mv.setViewName("egovframework/gcall/boardManage/redirect");
  	         } else {
  	            mv.addObject("msg","실패 하였습니다.");
  	            mv.setViewName("egovframework/gcall/dataManage/knowledgeReg");
  	         }
  		}

      } catch (SQLException e) {
    	  e.getStackTrace();
      } catch (Exception e) {
         mv.addObject("msg","알 수 없는 문제가 생겼습니다.");
         mv.setViewName("egovframework/gcall/dataManage/knowledgeReg");
      }
      return mv;
   }
   @RequestMapping(value="/regUpdate", method=RequestMethod.GET)
   public ModelAndView regUpdate(HttpSession session) throws Exception{
      Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
      Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
      String inteligenceAuth = CmmUtil.nvl((String) authUI.get("INTELIGENCE_AUTH"));
      String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
      ModelAndView mv = new ModelAndView();
      if(inteligenceAuth.equals("1")||userType.equals("0")) {
         mv.setViewName("egovframework/gcall/dataManage/knowledgeReg");
      } else {
         mv.setViewName("egovframework/gcall/boardManage/redirect");
         mv.addObject("url","/g110/adm.do");
         mv.addObject("msg","권한이 없습니다.");
      }
      return mv;
   }
   @RequestMapping(value="/approval", method=RequestMethod.GET)
   public ModelAndView approval(HttpSession session,HttpServletRequest req) throws Exception{
      ModelAndView mv = new ModelAndView();
      if(session.getAttribute("ss_user_info")!=null) {
         Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
         Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
         String inteligenceAuth = CmmUtil.nvl((String) authUI.get("INTELIGENCE_AUTH"));
         String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));

         if(inteligenceAuth.equals("1")||userType.equals("0")) {

         } else {
            mv.setViewName("egovframework/gcall/boardManage/redirect");
            mv.addObject("url","/g110/adm.do");
            mv.addObject("msg","권한이 없습니다.");
         }
      }else if(session.getAttribute("ss_user_info")==null) {
         mv.setViewName("egovframework/gcall/boardManage/redirect");
         mv.addObject("url","/g110/login.do");
         mv.addObject("msg","로그인 정보가 없습니다.");
      }
      return mv;
   }
   @RequestMapping(value="proveView")
   public ModelAndView proveView(ContactDbDTO cbDTO, HttpServletRequest request, HttpServletResponse resp,HttpSession session) throws Exception{
      ModelAndView mv = new ModelAndView();

      List<ContactDbDTO> hList = new ArrayList<ContactDbDTO>();
      int page = Integer.parseInt(request.getParameter("pageno"));

      int listCnt = severdataService.getProveViewCount(cbDTO);

      PagingDTO paging = new PagingDTO();
      if(listCnt > 0 && page > 0) {
		  paging.pageInfo(page, listCnt);
		  int startlist = paging.getStartList();
		  int listsize = paging.getListSize();
		  cbDTO.setStartlist(startlist);
		  cbDTO.setListsize(listsize);

	      hList  =  severdataService.getProveView(cbDTO);

	      mv.addObject("proveViewArr",hList);
	      mv.addObject("paging",paging);
      }else {
	      mv.addObject("proveViewArr",hList);
	      mv.addObject("paging",paging);
      }
      mv.setViewName("egovframework/gcall/dataManage/knowledgeListTable");
      return mv;
   }
   @RequestMapping(value="dbGubun", method=RequestMethod.GET)
   @ResponseBody
   public void dbGubun(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      //널처리 id 랑 parent id 는 공백처리해야됨

      cbList = severdataService.getDbGubun(cbDTO);
         PrintWriter out = resp.getWriter();
         try {
    	   out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Connection Exception occurred");
		} finally {
			out.close();
		}
   }
   //기관분류
   //기관대분류
   @RequestMapping(value="classGubunL", method=RequestMethod.GET)
   @ResponseBody
   public void classGubunL(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      cbList = severdataService.getClassGubunL(cbDTO);
      PrintWriter out = resp.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
 //기관중분류
   @RequestMapping(value="classGubunM", method=RequestMethod.GET)
   @ResponseBody
   public void classGubunM(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      cbList = severdataService.getClassGubunM(cbDTO);
      PrintWriter out = resp.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
 //기관소분류
   @RequestMapping(value="classGubunS", method=RequestMethod.GET)
   @ResponseBody
   public void classGubunS(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      cbList = severdataService.getClassGubunS(cbDTO);
      PrintWriter out = resp.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
   //업무분류
   //업무대분류
   @RequestMapping(value="conGubunL", method=RequestMethod.GET)
   @ResponseBody
   public void conGubunL(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      cbList = severdataService.getConGubunL(cbDTO);
      PrintWriter out = resp.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
 //업무중분류
   @RequestMapping(value="conGubunM", method=RequestMethod.GET)
   @ResponseBody
   public void conGubunM(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      cbList = severdataService.getConGubunM(cbDTO);
      PrintWriter out = resp.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
 //업무소분류
   @RequestMapping(value="conGubunS", method=RequestMethod.GET)
   @ResponseBody
   public void conGubunS(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
      List<HashMap<String,Object>> cbList = new ArrayList<HashMap<String,Object>>();
      cbList = severdataService.getConGubunS(cbDTO);
      PrintWriter out = resp.getWriter();
		try {
			out.write((new ObjectMapper()).writeValueAsString(cbList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
   //업무구분
   @RequestMapping(value="flagGubun", method=RequestMethod.GET)
   @ResponseBody
   public void flagGubun(ContactDbDTO cbDTO,HttpServletResponse resp) throws Exception{
	  List<HashMap<String,Object>> flagList = new ArrayList<HashMap<String,Object>>();
	  if(cbDTO.getPOST_CD().equals("admin")) {
		  //admin  로그인
		  System.out.println("CODE_ID:"+cbDTO.getCODE_ID());
		  flagList = severdataService.getAdminFlagGubun(cbDTO);
	  }else {
		  flagList = severdataService.getFlagGubun(cbDTO);
	  }
	  PrintWriter out = resp.getWriter();
		try {
			  out.write((new ObjectMapper()).writeValueAsString(flagList));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
   }
 //업무구분 팝업
   @RequestMapping(value="/popup", method=RequestMethod.GET)
   public ModelAndView popup() throws Exception{
      System.out.println("popup start!!");
      ModelAndView mv = new ModelAndView();
      mv.setViewName("egovframework/gcall/dataManage/popup");
      System.out.println("popup end!!");
      return mv;
   }

   //업무분류 대중소 팝업 가져오기 popupflag
   @RequestMapping(value="/popupflag", method=RequestMethod.GET)
   public ModelAndView popupflag(HttpServletRequest req) throws Exception{
      System.out.println("popupflag start");
      ModelAndView mv = new ModelAndView();
      String flag = CmmUtil.nvl(req.getParameter("flag"));
      String popupWord = CmmUtil.nvl(req.getParameter("popupWord"));
      System.out.println("flag : " + flag);
      System.out.println("popupWord : " + popupWord);

      List<HashMap<String, Object>> fList = new ArrayList<HashMap<String, Object>>();

      HashMap<String, Object> hmap = new HashMap<>();
      hmap.put("flag", flag);
      hmap.put("popupWord", popupWord);

      fList  =  severdataService.getpopupflag(hmap);
     System.out.println("flist size : " + fList.size());
     for(int i=0; i< fList.size(); i++) {
        System.out.println(fList.get(i).get("CON1_NM"));
        System.out.println(fList.get(i).get("CON2_NM"));
        System.out.println(fList.get(i).get("CON3_NM"));
        System.out.println(fList.get(i).get("CON1_CD"));
        System.out.println(fList.get(i).get("CON2_CD"));
        System.out.println(fList.get(i).get("CON3_CD"));
     }

      if(fList.size()>0) {
         mv.addObject("fList",fList);
      }else {
         mv.addObject("fList",fList);
      }

      mv.setViewName("egovframework/gcall/dataManage/popuptable");
      System.out.println("popupflag end");
      return mv;
   }


   //기관분류 검색 팝업 화면 띄우기 popupClass
   //업무구분 팝업
   @RequestMapping(value="/popupClass", method=RequestMethod.GET)
   public ModelAndView popupClass() throws Exception{
      System.out.println("popupClass start!!");
      ModelAndView mv = new ModelAndView();
      mv.setViewName("egovframework/gcall/dataManage/popupClass");
      System.out.println("popupClass end!!");
      return mv;
   }

   //기관분류 대중소 팝업 가져오기 popupClass
   @RequestMapping(value="/classPopup", method=RequestMethod.GET)
   public ModelAndView classPopup(HttpServletRequest req) throws Exception{
      System.out.println("classPopup start");
      ModelAndView mv = new ModelAndView();
      String popupClassWord = CmmUtil.nvl(req.getParameter("popupClassWord"));
      System.out.println("popupClassWord : " + popupClassWord);

      List<HashMap<String, Object>> cList = new ArrayList<HashMap<String, Object>>();

      HashMap<String, Object> hmap = new HashMap<>();
      hmap.put("popupClassWord", popupClassWord);
      System.out.println("hmap get : " + hmap.get("popupClassWord"));
      cList  =  severdataService.getpopupclass(hmap);
     System.out.println("flist size : " + cList.size());
     for(int i=0; i< cList.size(); i++) {
        System.out.println(cList.get(i).get("CLASS1_NM"));
        System.out.println(cList.get(i).get("CLASS2_NM"));
        System.out.println(cList.get(i).get("CLASS3_NM"));
        System.out.println(cList.get(i).get("CLASS1_CD"));
        System.out.println(cList.get(i).get("CLASS2_CD"));
        System.out.println(cList.get(i).get("CLASS3_CD"));
     }

      if(cList.size()>0) {
         mv.addObject("cList",cList);
      }else {
         mv.addObject("cList",cList);
      }

      mv.setViewName("egovframework/gcall/dataManage/popupClasstable");
      System.out.println("classPopup end");
      return mv;
   }
   //지식디비 리스트 디테일
 //지식DB 상세보기
   @RequestMapping(value="listDetail")
   public ModelAndView listDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
      ModelAndView mv = new ModelAndView();

      String db_seq = CmmUtil.nvl(request.getParameter("DB_SEQ"));

      ContactDbDTO dDTO = new ContactDbDTO();

      dDTO.setDB_SEQ(db_seq);
      HashMap<String,Object> hMap = new HashMap<>();
      hMap.put("PARENT_SEQ",db_seq);
      ContactDbDTO dDTO2  =  severdataService.getlistDetail(dDTO);
      List<HashMap<String,Object>> fList = new ArrayList<>();
      HashMap<String,Object> newHMap = new HashMap<>();
  	  JSONArray newFList = new JSONArray();
  	  fList = severdataService.getOmDbFileList(db_seq);
		if(fList!=null) {
			for(int i=0; i<fList.size();i++) {
		          //게시판 번호에 맞는 파일 리스트 조회 (첨부파일 목록)
					fList = boardService.getScFileList(hMap);
					System.out.println("FILE_NAME:"+fList.get(0).get("FILE_NAME"));
					//경로
					String sfileName = (String)fList.get(i).get("FILE_NAME");
					sfileName =	EgovWebUtil.filePathBlackList(sfileName);		
					File file = new File(request.getSession().getServletContext().getRealPath("")+fList.get(i).get("REAL_PATH")+""+sfileName);

							/*
							 * 이부분에서 HashMap에 저장하는 이유는 handlebar.js 에서 파일 첨부된 목록들을 보여주기 위함이다.
							 * */
							newHMap.put("FILE_NAME",fList.get(i).get("FILE_NAME"));
							newHMap.put("ORIGINAL_FILE_NAME",fList.get(i).get("ORIGINAL_FILE_NAME"));
							newHMap.put("FILE_SIZE", file.length());
							System.out.println("FILE_SIZE:"+file.length());
							System.out.println("REAL_PATH:"+fList.get(i).get("REAL_PATH"));
							newHMap.put("REAL_PATH",fList.get(i).get("REAL_PATH"));
							newFList.put(newHMap);

					}
			}
	      mv.setViewName("egovframework/gcall/dataManage/knowledgeApproval");
	      mv.addObject("dDTO2",dDTO2);
	  	JSONObject jsonObj = new JSONObject(hMap);
		JSONArray jsonFList = new JSONArray(fList);
		mv.addObject("jsonObj",jsonObj);
		mv.addObject("fList", jsonFList);
		mv.addObject("newFList",newFList);
		newHMap=null;
		fList=null;
		newFList=null;

      return mv;
   }
   
	private static final int IMG_MAX_LENGTH = 1000;
	
	// 지식db 네이버 연계
	// 네이버 승인
	@RequestMapping(value = "naverProve", method = RequestMethod.POST)
	public void naverProve(
			HttpServletRequest req, 
			HttpServletResponse res,
			ContactDbDTO dDTO) throws Exception {

		// 저장된 경로 변수로 보내줘야 서비스에서 파일경로를 구해서 사이즈구할수있음
		dDTO.setRealFolder(req.getSession().getServletContext().getRealPath(""));

		int naverResult = severdataService.insertNaverProve(dDTO);

		PrintWriter out = res.getWriter();
		HashMap<String, Object> hMap = new HashMap<String, Object>();

		if (naverResult == 200) {
			hMap.put("code", "200");
			hMap.put("msg", "승인 성공");
		} else if(naverResult == -123) {
			hMap.put("code", "-123");
			hMap.put("msg", "이미지 길이 초과(최대길이: " + IMG_MAX_LENGTH + ")\n이미지는 에디터를 통해 올려주세요.");
		} else {
			hMap.put("code", "-1");
			hMap.put("msg", "승인 실패");
		}
		
		try {
			out.write((new ObjectMapper()).writeValueAsString(hMap));
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}

   //네이버 승인 거부 naverDenied
   @RequestMapping(value="naverDenied", method=RequestMethod.POST)
   public void naverDenied(ContactDbDTO dDTO, HttpServletRequest req, HttpServletResponse resp) throws Exception{
      ModelAndView mv = new ModelAndView();

      int naverResult =  severdataService.deleteNaverProve(dDTO);

      PrintWriter out = resp.getWriter();
      HashMap<String, Object> hMap = new HashMap<String, Object>();

     // if(naverResult == 200) {

       //  hMap.put("url", "/severdata/list.do");
       //  hMap.put("msg","네이버 FAQ 삭제되었습니다.");
      //}else {
       //  hMap.put("url", "/severdata/list.do");
      //   hMap.put("msg","네이버 FAQ 삭제 실패 되었습니다.");
      //}
      //out.write((new ObjectMapper()).writeValueAsString(hMap));

      String test = "";
      if(naverResult == 200) {

    	  test = "네이버 FAQ 삭제되었습니다.";
      }else {
    	  test = "네이버 FAQ 삭제 실패 되었습니다.";
      }

      try {
    	  out.write(test);
	} catch (IndexOutOfBoundsException e) {
		//e.printStackTrace();
		System.out.println("Exception occurred");
	} finally {
		out.close();
	}

   }

   //DB PROVE_STATE 거부로 변경하기 dbupdate
   @RequestMapping(value="dbupdate", method=RequestMethod.POST)
   public void dbupdate(ContactDbDTO dDTO, HttpServletRequest req, HttpServletResponse resp) throws Exception{
      ModelAndView mv = new ModelAndView();

      int result = severdataService.updateState(dDTO);

      PrintWriter out = resp.getWriter();
      HashMap<String, Object> hMap = new HashMap<String, Object>();

      if(result == 1) {
         hMap.put("url", "/severdata/list.do");
         hMap.put("msg","승인 거부되었습니다.");
      }else {
         hMap.put("url", "/severdata/list.do");
         hMap.put("msg","실패 되었습니다.");
      }

      try {
          out.write((new ObjectMapper()).writeValueAsString(hMap));
	} catch (IOException e) {
		//e.printStackTrace();
		System.out.println("Exception occurred");
	} finally {
		out.close();
	}

   }

   //이력보기 getHislist
   @RequestMapping(value="getHislist")
   public ModelAndView getHislist(HttpServletRequest request, HttpServletResponse response) throws Exception{
      ContactDbDTO dDTO = new ContactDbDTO();
      ModelAndView mv = new ModelAndView();
      String db_seq = CmmUtil.nvl(request.getParameter("DB_SEQ"));
      int page = Integer.parseInt(request.getParameter("page"));
      dDTO.setPARENT_DB_SEQ(db_seq);
      int listCnt = severdataService.getHislistCount(dDTO);
     if(listCnt==0) {
          mv.addObject("msg","조회된 이력이 없습니다.");
          mv.addObject("url","/severdata/list.do");
          mv.setViewName("egovframework/gcall/boardManage/redirect");
      }else if(listCnt>0 && page > 0) {
    	    PagingDTO paging = new PagingDTO();
    		paging.pageInfo(page, listCnt);
    		int startlist = paging.getStartList();
    		int listsize = paging.getListSize();
    		dDTO.setStartlist(startlist);
    		dDTO.setListsize(listsize);
    	    List<HashMap<String, Object>> hList  =  severdataService.getHislist(dDTO);
	          mv.setViewName("egovframework/gcall/dataManage/knowledgeHistory");
	          mv.addObject("hList",hList);
	          mv.addObject("paging",paging);
	          mv.addObject("db_seq",db_seq);
    }

      return mv;
   }

   //이력보기 상세 hisDetail
   @RequestMapping(value="hisDetail")
   public ModelAndView hisDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
      ModelAndView mv = new ModelAndView();

      String DB_HIS_SEQ = CmmUtil.nvl(request.getParameter("DB_HIS_SEQ"));
      ContactDbDTO hDTO = new ContactDbDTO();
      hDTO.setDB_HIS_SEQ(DB_HIS_SEQ);
      ContactDbDTO hDTO2  =  severdataService.getHisDetail(hDTO);

      mv.setViewName("egovframework/gcall/dataManage/knowledgeHistoryDetail");
      mv.addObject("hDTO2",hDTO2);

      return mv;
   }


   @RequestMapping(value="updateknowdb")
   public ModelAndView updateknowdb(HttpServletRequest request, HttpServletResponse response) throws Exception{
      ModelAndView mv = new ModelAndView();

      String db_seq = CmmUtil.nvl(request.getParameter("DB_SEQ"));

      ContactDbDTO dDTO = new ContactDbDTO();

      dDTO.setDB_SEQ(db_seq);

      ContactDbDTO dDTO2  =  severdataService.getlistDetail(dDTO);
      List<HashMap<String,Object>> fList = new ArrayList<>();
      HashMap<String,Object> newHMap = new HashMap<>();
  	  JSONArray newFList = new JSONArray();
  	  fList = severdataService.getOmDbFileList(db_seq);
		for(int i=0; i<fList.size();i++) {
			String sfileName = (String)fList.get(i).get("FILE_NAME");
			sfileName =	EgovWebUtil.filePathBlackList(sfileName);
			File file = new File(request.getSession().getServletContext().getRealPath("")+fList.get(i).get("REAL_PATH")+""+sfileName);
			newHMap.put("FILE_NAME",fList.get(i).get("FILE_NAME"));
			newHMap.put("ORIGINAL_FILE_NAME",fList.get(i).get("ORIGINAL_FILE_NAME"));
			newHMap.put("FILE_SIZE", file.length());
			newHMap.put("REAL_PATH",fList.get(i).get("REAL_PATH"));
			newFList.put(newHMap);
		}
		JSONArray jsonFList = new JSONArray(fList);
		mv.setViewName("egovframework/gcall/dataManage/knowledgeUpdate");
		mv.addObject("dDTO2", dDTO2);
		mv.addObject("fList", jsonFList);
		mv.addObject("newFList", newFList);
		newHMap = null;
		fList = null;
		newFList = null;
      return mv;
   }




   @RequestMapping(value="/updateProc", method=RequestMethod.POST)
   public ModelAndView updateProc(ContactDbDTO contact,
		   @RequestParam(value="FILE_NAME",required=false) String[] FILE_NAME,
			@RequestParam(value="FILE_SORT",required=false) String[] FILE_SORT,
			@RequestParam(value="ORIGINAL_FILE_NAME",required=false) String[] ORIGINAL_FILE_NAME,
			@RequestParam(value="REAL_PATH",required=false) String[] REAL_PATH,
			@RequestParam(value="TEMP_ID",required=false) String[] TEMP_ID,
			@RequestParam(value="USE_YN",required=false) String[] USE_YN,
		   HttpServletRequest request, HttpSession session) throws Exception{
	  contact.setQUST_CNTN(StrUtil.tagHtml(contact.getQUST_CNTN()));
	  contact.setCONTENT(StrUtil.tagHtml(contact.getCONTENT()));

	  List<HashMap<String, Object>> rList= new ArrayList();
	  String db_seq =contact.getDB_SEQ().toString();
      ModelAndView mv = new ModelAndView();
      try {
         int result = severdataService.updateProc(contact);
			if(FILE_NAME!=null) {
				rList=severdataService.getOmDbFileList(db_seq);
			/*	for(int i=0 ; i<rList.size();i++) {
					File f = new File(request.getSession().getServletContext().getRealPath("")+rList.get(i).get("REAL_PATH")+rList.get(i).get("FILE_NAME"));
					if(f.exists()) {
						f.delete();
					}
				}*/
				severdataService.deleteFile(db_seq);
				for(int i = 0; i <FILE_NAME.length;i++) {
					HashMap<String, Object> hMap = new HashMap<>();
	  				hMap.put("FILE_NAME", CmmUtil.nvl(FILE_NAME[i]));
	  				hMap.put("FILE_SORT", CmmUtil.nvl(FILE_SORT[i]));
	  				hMap.put("ORIGINAL_FILE_NAME", CmmUtil.nvl(ORIGINAL_FILE_NAME[i]));
	  				hMap.put("REAL_PATH", CmmUtil.nvl(REAL_PATH[i]));
	  				hMap.put("TEMP_ID", CmmUtil.nvl(TEMP_ID[i]));
	  				hMap.put("USE_YN",CmmUtil.nvl( USE_YN[i]));
	  				hMap.put("PARENT_SEQ", db_seq);
	  				hMap.put("CONF_ID", "CONTACT_DB");
	  				severdataService.scFileUploadDB(hMap);
				}
			}else {
				for(int i=0 ; i<rList.size();i++) {
					//
					File f = new File(request.getSession().getServletContext().getRealPath("")+rList.get(i).get("REAL_PATH")+""+rList.get(i).get("FILE_NAME"));
					if(f.exists()) {
						f.delete();
					}
				}
				severdataService.deleteFile(db_seq);
			}
         if(result == 1) {
            mv.addObject("msg","성공 하였습니다.");
            mv.addObject("url","/severdata/list.do");
        	mv.setViewName("egovframework/gcall/boardManage/redirect");
         } else {
            mv.addObject("msg","실패 하였습니다.");
            mv.addObject("url","/severdata/list.do");
        	mv.setViewName("egovframework/gcall/boardManage/redirect");
         }
      } catch (SQLException e) {
    	  e.getStackTrace();
      } catch (Exception e) {
         mv.addObject("msg","알 수 없는 문제가 생겼습니다.");
         mv.setViewName("redirect:/severdata/list.do");
      }
      return mv;
   }


   // 네이버 조회
   @RequestMapping(value="selectNaver" , method=RequestMethod.GET)
   public void selectNaver(ContactDbDTO dDTO) throws Exception {
      System.out.println("selectNaver start !");
      //StringUtil st = new StringUtil();
      //개발환경
      String url = "http://dev.apis.naver.com/kin_110call/kin/getFaqProcessCount";
      //운영환경
      //String url = "http://apis.naver.com/kin_110call/kin/getFaqProcessCount";
      //연계결과값
      int resultCode = 0;
      String sttime= "2019-11-26 01:00:01";
      String edtime = "2019-12-10 10:00:01";
      DateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");

      //Date st = dateFormat.parse("2019-11-01 01:00:00");
      //Date et = dateFormat.parse("2019-12-05 01:00:00");

      Date d = new Date();
      Date d1 = new Date();

      SimpleDateFormat startTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      SimpleDateFormat endTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

      startTime.parse("2019-11-01 01:00:00");

      System.out.println("startTime : " + startTime.format(d));
      //System.out.println("endTime : " + et);
      Calendar calendar = Calendar.getInstance();

      java.util.Date temp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2019-11-01 14:00:00");
      java.util.Date temp2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2019-12-05 14:00:00");
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");

      sdf.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
      String text = sdf.format(startTime.parse("2019-12-05 01:00:00"));

      System.out.println("temp : " +temp);
      System.out.println("temp2 : " +temp2);

      //파라미터 정의
      MultiValueMap<String, Object> paramMap = new LinkedMultiValueMap<>();
      paramMap.add("ver", "1.0.0");
      paramMap.add("reqEnc", "UTF-8");
      paramMap.add("serviceId", "kin_110call");
     paramMap.add("startTime","2019-12-06 00:00:00");
      paramMap.add("endTime", "2019-12-06 20:00:00");
      // HTTP Header 정의
      HttpHeaders headers = new HttpHeaders();
      HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<>(paramMap, headers);
      int apiTimeout = 3000; // API Timeout
      URI encryptedApiUrl = new URI(MACManager.getEncryptUrl(url));
      System.out.println(encryptedApiUrl);
      RestTemplate restTemplate = new RestTemplate();
      ResponseEntity<?> httpResponse= restTemplate.exchange(encryptedApiUrl, HttpMethod.POST,request,Object.class);
      System.out.println(httpResponse.getStatusCode());
      System.out.println(httpResponse);

      if(httpResponse.getStatusCode().toString().equals("200")) {
          resultCode = 200;
      }
      System.out.println("selectNaver end!");
}



}