package egovframework.gcall.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.icu.text.SimpleDateFormat;

import egovframework.com.cmm.EgovWebUtil;
import egovframework.gcall.dto.BoardCommonDTO;
import egovframework.gcall.dto.PaginationDTO;
import egovframework.gcall.service.BoardService;
import egovframework.gcall.service.ImageUploadService;
import egovframework.gcall.service.SeverDataService;
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.IpUtil;
import egovframework.gcall.util.StrUtil;
/*
 * 2019-12-09 게시판 공통 주석 
 *  @author kim
 * 파일 첨부는 ConsultManageController 에 fileAdd 부분에서 실행됨 
 * 파일의 경로는 WAS 내부로 지정 -> 110 서버에 있는 WAS에 파일서버로의 링크가 걸려있음
 * confId 는 HP_BOARD_ADMIN 에서 파일의 경로및 정보를 가져오는것임
 * 예외)jsp 에서 지식디비는 contactDB 로 변수를 받아와서 파일경로 따로 지정해줬고, 팝업,팝업존,배너 90 91 92 받아오면 files/alarm 으로 지정
 */

//consult 상담사연 관리임  contact
@RequestMapping(value="/consult")
@Controller
public class ConsultManageController {
	
	@Resource(name = "ImageUploadService")
	private ImageUploadService imageUploadService;
	@Resource(name = "BoardService")
	private BoardService boardService;
	@Resource(name = "SeverDataService")
	private SeverDataService severdataService;

	//게시판 리스트 
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list(
			@RequestParam(value = "confId", defaultValue = "9") String confId,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value="selSearch" ,defaultValue="0") String selSearch,
			@RequestParam(value="searchWord" ,defaultValue="") String searchWord,
			HttpSession session
			)
					throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			System.out.println("if session get");
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			//사용자의 권한을 얻어오는 부분
			String consultAuth = CmmUtil.nvl((String) authUI.get("CONSULT_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			
			// 게시판 권한을 통한 접근    
			if(consultAuth.equals("1")||userType.equals("0")) {
				PaginationDTO pDTO = new PaginationDTO();
				HashMap<String,Object> hMap = new HashMap<>();
				//검색부분 
				if(pDTO.getSearchWord()!=""&&pDTO.getSelSearch()!="") {
					pDTO.setSearchWord(searchWord);
					pDTO.setSelSearch(selSearch);
					
					hMap.put("searchWord",pDTO.getSearchWord());
					hMap.put("selSearch",selSearch);
					hMap.put("confId", confId);
					//게시판의 총 개수 , 페이징 부분
					int totalCount = boardService.boardListAdminCount(hMap);
					int pageSize = 10;
					int rangeSize = 5;

					pDTO.setTotalCount(totalCount);
					pDTO.setPageSize(pageSize);
					pDTO.setRangeSize(rangeSize);
					//curPage가 양수이면
					if(curPage>0) {
						pDTO.setCurPage(curPage);
					}
					pDTO.setConfId(confId);
					pDTO.doPagination();

				}else if(pDTO.getSearchWord()==""&&pDTO.getSelSearch()=="") {
					hMap.put("selSearch",0);
					hMap.put("confId", confId);
					int totalCount = boardService.boardListAdminCount(hMap);
					int pageSize = 10;
					int rangeSize = 5;

					pDTO.setTotalCount(totalCount);
					pDTO.setPageSize(pageSize);
					pDTO.setRangeSize(rangeSize);
					//curPage가 양수이면
					if(curPage>0) {
						pDTO.setCurPage(curPage);
					}
					pDTO.setConfId(confId);
					pDTO.doPagination();

				}
			
				//게시판 리스트 불러오는 부분
				List<HashMap<String,Object>> hList = boardService.boardAdminList(pDTO);
				mv.setViewName("egovframework/gcall/boardManage/consultManage/consultList");
				mv.addObject("hList",hList);
				mv.addObject("pDTO",pDTO);
				mv.addObject("confId",confId);
				mv.addObject("curPage",curPage);
				hList = null;
				pDTO = null;
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
		System.out.println("end");
		return mv;
	}
	
	//게시판 등록 뷰 부분
	@RequestMapping(value="/reg", method=RequestMethod.GET)
	public ModelAndView reg(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String consultAuth = CmmUtil.nvl((String) authUI.get("CONSULT_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(consultAuth.equals("1")||userType.equals("0")) {
				mv.setViewName("egovframework/gcall/boardManage/consultManage/consultReg");
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
	
	//게시판 등록
	@RequestMapping(value="/regProc",method=RequestMethod.POST)
	public ModelAndView regProc(BoardCommonDTO bDTO,
			@RequestParam(value="FILE_NAME",required=false) String[] FILE_NAME,
			@RequestParam(value="FILE_SORT",required=false) String[] FILE_SORT,
			@RequestParam(value="ORIGINAL_FILE_NAME",required=false) String[] ORIGINAL_FILE_NAME,
			@RequestParam(value="REAL_PATH",required=false) String[] REAL_PATH,
			@RequestParam(value="TEMP_ID",required=false) String[] TEMP_ID,
			@RequestParam(value="USE_YN",required=false) String[] USE_YN,
			HttpSession session
			) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String consultAuth = CmmUtil.nvl((String) authUI.get("CONSULT_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(consultAuth.equals("1")||userType.equals("0")) {
				//IP 조회하는 부분
				String ip = IpUtil.IpGet();
				
				bDTO.setBOARD_IP(ip);
				int boardSequence = boardService.boardSequence();
				
				String str = StrUtil.tagHtml(bDTO.getCONTENT());
				bDTO.setBOARD_NUM(Integer.toString(boardSequence));
				bDTO.setCONTENT(str);
				bDTO.setCONF_ID("9");
				//게시판 DB등록
				boardService.regProc(bDTO);
				//첨부 파일이 있으면 FILE의 정보를 FILES 테이블에 저장
				if(FILE_NAME!=null) {
					for(int i = 0; i <FILE_NAME.length;i++) {
						HashMap<String, Object> hMap = new HashMap<>();
						hMap.put("FILE_NAME", FILE_NAME[i]);
						hMap.put("FILE_SORT", FILE_SORT[i]);
						hMap.put("ORIGINAL_FILE_NAME", ORIGINAL_FILE_NAME[i]);
						hMap.put("REAL_PATH", REAL_PATH[i]);
						hMap.put("TEMP_ID", TEMP_ID[i]);
						hMap.put("USE_YN", USE_YN[i]);
						hMap.put("BOARD_NUM", boardSequence);
						hMap.put("CONF_ID", "9");
						imageUploadService.fileUploadDB(hMap);
					}
				}
		    	mv.setViewName("redirect:/consult/list.do");
		    	bDTO=null;
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
	
	//게시판 상세보기
	@RequestMapping(value="/detail")
	public ModelAndView detail(HttpServletRequest req,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {

			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String consultAuth = CmmUtil.nvl((String) authUI.get("CONSULT_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(consultAuth.equals("1")||userType.equals("0")) {
				String boardNum = req.getParameter("boardNum");
				String confId = req.getParameter("confId");
				HashMap<String,Object> hMap = new HashMap<>();
				HashMap<String,Object> newHMap = new HashMap<>();
				List<HashMap<String,Object>> fList = new ArrayList<>();
				JSONArray newFList = new JSONArray();
				hMap.put("boardNum", boardNum);
				hMap.put("confId",confId);
				//게시판 상세정보 조회
				hMap = boardService.getBoardDetail(hMap);
				//게시판 번호에 맞는 파일 리스트 조회 (첨부파일 목록) 
				fList = boardService.getBoardFileList(hMap);
				if(fList!=null) {
					for(int i=0; i<fList.size();i++) {
						//경로
						String sfileName = (String)fList.get(i).get("FILE_NAME");
						sfileName =	EgovWebUtil.filePathBlackList(sfileName);
						File file = new File(req.getSession().getServletContext().getRealPath("")+fList.get(i).get("REAL_PATH")+""+sfileName);
						
						/*
						 * 이부분에서 HashMap에 저장하는 이유는 handlebar.js 에서 파일 첨부된 목록들을 보여주기 위함이다.
						 * */
						newHMap.put("FILE_NAME",fList.get(i).get("FILE_NAME"));
						newHMap.put("ORIGINAL_FILE_NAME",new String(fList.get(i).get("ORIGINAL_FILE_NAME").toString().getBytes(),"UTF-8"));
						//newHMap.put("ORIGINAL_FILE_NAME",fList.get(i).get("ORIGINAL_FILE_NAME"));
						newHMap.put("FILE_SIZE", file.length());
						newHMap.put("REAL_PATH",fList.get(i).get("REAL_PATH"));
						newFList.put(newHMap);
					}
				}

				JSONObject jsonObj = new JSONObject(hMap);
				JSONArray jsonFList = new JSONArray(fList);
				mv.setViewName("egovframework/gcall/boardManage/consultManage/consultDetail");
				mv.addObject("jsonObj", jsonObj);
				mv.addObject("fList", jsonFList);
				mv.addObject("newFList",newFList);
				hMap=null;
				newHMap=null;
				fList=null;
				newFList=null;
			}else {
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
	//게시판 수정 뷰
	@RequestMapping(value="/updateView")
	public ModelAndView updateView(HttpServletRequest req,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
		Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
		String consultAuth = CmmUtil.nvl((String) authUI.get("CONSULT_AUTH"));
		String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
		if(consultAuth.equals("1")||userType.equals("0")) {
			String boardNum = req.getParameter("boardNum");
			String confId = req.getParameter("confId");
			HashMap<String,Object> hMap = new HashMap<>();
			HashMap<String,Object> newHMap = new HashMap<>();
			List<HashMap<String,Object>> fList = new ArrayList<>();
			JSONArray newFList = new JSONArray();
			hMap.put("boardNum", boardNum);
			hMap.put("confId",confId);
			//게시판 정보 조회
			hMap = boardService.getBoardDetail(hMap);
			//게시판 번호에 맞는 파일 리스트 조회 (첨부파일 목록) 			
			fList = boardService.getBoardFileList(hMap);
			if(fList!=null) {
				for(int i=0; i<fList.size();i++) {
					String sfileName = (String)fList.get(i).get("FILE_NAME");
					sfileName =	EgovWebUtil.filePathBlackList(sfileName);
					File file = new File(req.getSession().getServletContext().getRealPath("")+fList.get(i).get("REAL_PATH")+""+sfileName);
					newHMap.put("FILE_NAME",fList.get(i).get("FILE_NAME"));
					newHMap.put("ORIGINAL_FILE_NAME",new String(fList.get(i).get("ORIGINAL_FILE_NAME").toString().getBytes(),"UTF-8"));
					//newHMap.put("ORIGINAL_FILE_NAME",fList.get(i).get("ORIGINAL_FILE_NAME"));
					newHMap.put("FILE_SIZE", file.length());
					newHMap.put("REAL_PATH",fList.get(i).get("REAL_PATH"));
					newFList.put(newHMap);
				}
			}

			JSONObject jsonObj = new JSONObject(hMap);
			JSONArray jsonFList = new JSONArray(fList);
			mv.setViewName("egovframework/gcall/boardManage/consultManage/consultUpdate");
			mv.addObject("jsonObj", jsonObj);
			mv.addObject("fList", jsonFList);
			mv.addObject("newFList",newFList);
			hMap=null;
			newHMap=null;
			fList=null;
			newFList=null;
		}else {
			if(userType=="") {
				mv.setViewName("egovframework/gcall/boardManage/redirect");
				mv.addObject("url","/g110/login.do");
				mv.addObject("msg","로그인 정보가 없습니다.");
			}else {
				mv.setViewName("egovframework/gcall/boardManage/redirect");
				mv.addObject("url","/g110/adm.do");
				mv.addObject("msg","권한이 없습니다.");
			}
		}

		return mv;
	}
	
	//게시판 수정
	@RequestMapping(value="update",method=RequestMethod.POST)
	public ModelAndView update(BoardCommonDTO bDTO,
			@RequestParam(value="FILE_NAME",required=false) String[] FILE_NAME,
			@RequestParam(value="FILE_SORT",required=false) String[] FILE_SORT,
			@RequestParam(value="ORIGINAL_FILE_NAME",required=false) String[] ORIGINAL_FILE_NAME,
			@RequestParam(value="REAL_PATH",required=false) String[] REAL_PATH,
			@RequestParam(value="TEMP_ID",required=false) String[] TEMP_ID,
			@RequestParam(value="USE_YN",required=false) String[] USE_YN,
			HttpSession session,
			HttpServletRequest request
			) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String consultAuth = CmmUtil.nvl((String) authUI.get("CONSULT_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(consultAuth.equals("1")||userType.equals("0")) {
				//IP조회
				String ip = IpUtil.IpGet();
				bDTO.setBOARD_IP(ip);
				String str = StrUtil.tagHtml(bDTO.getCONTENT());
				bDTO.setCONTENT(str);
				bDTO.setCONF_ID("9");
				List<HashMap<String, Object>> rList= new ArrayList();
				HashMap<String, Object> rMap = new HashMap<>();
				//게시판번호에 맞는 파일 지우기
				rMap.put("BOARD_NUM", bDTO.getBOARD_NUM());
				rMap.put("CONF_ID",bDTO.getCONF_ID());
				//수정 로직
				boardService.updProc(bDTO);
				//원래 존재하는 파일이 있으면 삭제 안함
			
				//파일이 있으면 삭제
				if(FILE_NAME!=null) {
					rList=boardService.getBoardFileList(rMap);
					/*for(int i=0 ; i<rList.size();i++) {
						File f = new File(request.getSession().getServletContext().getRealPath("")+rList.get(i).get("REAL_PATH")+""+rList.get(i).get("FILE_NAME"));
						if(f.exists()) {
							f.delete();
						}
					}*/
					//DB에서 파일정보 삭제
					boardService.deleteFile(bDTO);
					for(int i = 0; i <FILE_NAME.length;i++) {
						HashMap<String, Object> hMap = new HashMap<>();
						hMap.put("FILE_NAME", FILE_NAME[i]);
						hMap.put("FILE_SORT", FILE_SORT[i]);
						hMap.put("ORIGINAL_FILE_NAME", ORIGINAL_FILE_NAME[i]);
						hMap.put("REAL_PATH", REAL_PATH[i]);
						hMap.put("TEMP_ID", TEMP_ID[i]);
						hMap.put("USE_YN", USE_YN[i]);
						hMap.put("BOARD_NUM", bDTO.getBOARD_NUM());
						hMap.put("CONF_ID", "9");
						imageUploadService.fileUploadDB(hMap);
					}
				}else {
					/*for(int i=0 ; i<rList.size();i++) {
						File f = new File(request.getSession().getServletContext().getRealPath("")+rList.get(i).get("REAL_PATH")+""+rList.get(i).get("FILE_NAME"));
						if(f.exists()) {
							f.delete();
						}
					}*/
					boardService.deleteFile(bDTO);
				}
		    	mv.setViewName("redirect:/consult/list.do");
		    	bDTO=null;
		    	rMap=null;
		    	rList=null;
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
	@RequestMapping(value="deleteBoard")
	public ModelAndView deleteBoard(HttpServletRequest req,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		//1. confid boardnum 
		//2. db confid boardnum  board 게시판 삭제
		//3. confid boardnum  파일리스트 조회  
		//4. 서버 파일 포문 돌려서 삭제 
		//5.   db confid boardnum hp_files 삭제
		String confId = req.getParameter("confId");
		String boardNum = req.getParameter("boardNum");
		HashMap<String,Object> hMap = new HashMap<>();
		hMap.put("CONF_ID", confId);
		hMap.put("BOARD_NUM", boardNum);
		BoardCommonDTO bDTO = new BoardCommonDTO();
		bDTO.setCONF_ID(confId);
		bDTO.setBOARD_NUM(boardNum);
		//게시판 삭제 
		boardService.deleteBoard(bDTO);
		List<HashMap<String, Object>> hList = new ArrayList<>();
		//파일리스트 조회 
		hList= boardService.getBoardFileList(hMap);
		if(hList!=null) {
			for(int i = 0 ; i < hList.size(); i++) {
				//경로
				String filePathName = req.getSession().getServletContext().getRealPath("")+hList.get(i).get("REAL_PATH")+""+hList.get(i).get("FILE_NAME");
				System.out.println(filePathName);
				filePathName =	EgovWebUtil.filePathBlackList(filePathName);
				File file = new File(filePathName);
				if(file.exists()) {
					file.delete();
				}
			}
			//게시판 파일첨부 디비 삭제
			boardService.deleteFile(bDTO);
		}

		mv.setViewName("egovframework/gcall/boardManage/redirect");
		mv.addObject("url","/consult/list.do");
		mv.addObject("msg","삭제 되었습니다.");
		return mv;
	}
	

	@RequestMapping(value="/fileAdd")
	public void fileAdd(MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {

		//HP_BOARD_ADMIN에서 테이블 조회 / 파일 경로
			String confId = request.getParameter("confId");
			System.out.println("컨프아이디:"+confId);
			if(confId == null) {
				confId = "";
			};
			PrintWriter out = response.getWriter();
			// 지식디비를 위한 번호 jsp에서 지정 contactDB
			if(!confId.equals("contactDB")) {
				if(confId.equals("90")||confId.equals("91")||confId.equals("92")) {
					//개발용
					String realFolder = request.getSession().getServletContext().getRealPath("")+"/files/alarm/";
					List<MultipartFile> mList = request.getFiles("file");
					SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMddHHmmss");
					Date date = new Date();
					String strDate =  format1.format(date);

					System.out.println("realFolder : " +realFolder);
					JSONObject resultJson = new JSONObject();
					HashMap<String,Object> resultObj = new HashMap<String,Object>();
					// 1. null 체크
					if(mList != null) {
						String org_filename =mList.get(0).getOriginalFilename().toLowerCase();
						if(
								org_filename.endsWith(".jpg") ||
	        		    		org_filename.endsWith(".jpeg") ||
	        		    		org_filename.endsWith(".png") ||
	        		    		org_filename.endsWith(".gif") ||
	        		    		org_filename.endsWith(".doc") ||
	        		    		org_filename.endsWith(".hwp") ||
	        		    		org_filename.endsWith(".ppt") ||
	        		    		org_filename.endsWith(".pptx") ||
	        		    		org_filename.endsWith(".xlsx") ||
	        		    		org_filename.endsWith(".pdf") ||
	        		    		org_filename.endsWith(".zip") 
	        		    		) {
							//2.파일 사이즈 확인후 제한 걸기
	        				int size = (int) mList.get(0).getSize();
	        				if ( size > 10485760) {
	        					resultJson.put("resultCode", "500");
	        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
	        					try {
	        						out.println(resultJson);
	        					} catch(IndexOutOfBoundsException e) {
	        						//e.printStackTrace();
	        						System.out.println("Exception occurred");
	        					} finally {
	        						out.close();
	        					}
	        				}else {
	        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
	    						UUID uuid = UUID.randomUUID();
	    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
	    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

	    						System.out.println("원본 파일명 : " + org_filename);
	    						System.out.println("저장할 파일명 : " + str_filename);
	    						String filepath = realFolder + str_filename;
	    						System.out.println("파일경로 : " + filepath);
	    						filepath =	EgovWebUtil.filePathBlackList(filepath);
	    						File f = new File(filepath);
	    						if (!f.exists()) {
	    							f.mkdirs();
	    						}
	    						mList.get(0).transferTo(f);
	    						
	    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
	    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
	    						//out.println("https://www.110.go.kr"+"/files/alarm/"+str_filename);
	    						
	    						resultObj.put("FILE_NAME", str_filename);
								resultObj.put("FILE_TYPE", "");
								resultObj.put("USE_YN", "");
								resultObj.put("ORIGINAL_FILE_NAME", org_filename);
								resultObj.put("REAL_PATH", "/files/alarm/");
								resultObj.put("TEMP_ID", "");
								resultObj.put("FILE_SORT", "3");
								resultObj.put("FILE_SIZE", mList.get(0).getSize());
	    						
								resultJson.put("resultCode",200);
	    						resultJson.put("result", resultObj);
	    						resultJson.put("extended", extended);
	    						
	    						 try {
	    		        			 out.println(resultJson);
	    		        		} catch (IndexOutOfBoundsException e) {
	    		        			//e.printStackTrace();
	    		        			System.out.println("Exception occurred");
	    		        		} finally {
	    		        			out.close();
	    		        		}
	        				}
							
						}else if(org_filename.endsWith(".wmv") ||
	        		    		org_filename.endsWith(".mp4") ||
	        		    		org_filename.endsWith(".avi") ||
	        		    		org_filename.endsWith(".webm") ||
	        		    		org_filename.endsWith(".ogg") ) {
							//2.파일 사이즈 확인후 제한 걸기
	        				int size = (int) mList.get(0).getSize();
	        				if ( size > 10485760) {
	        					resultJson.put("resultCode", "500");
	        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
	        					out.println(resultJson);
	        					out.close();
	        				}else {
	        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
	    						UUID uuid = UUID.randomUUID();
	    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
	    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

	    						System.out.println("원본 파일명 : " + org_filename);
	    						System.out.println("저장할 파일명 : " + str_filename);
	    						String filepath = realFolder + str_filename;
	    						System.out.println("파일경로 : " + filepath);
	    						filepath =	EgovWebUtil.filePathBlackList(filepath);
	    						File f = new File(filepath);
	    						if (!f.exists()) {
	    							f.mkdirs();
	    						}
	    						mList.get(0).transferTo(f);
	    						
	    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
	    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
	    						//out.println("https://www.110.go.kr"+"/files/alarm/"+str_filename);
	    						
	    						resultObj.put("FILE_NAME", str_filename);
								resultObj.put("FILE_TYPE", "");
								resultObj.put("USE_YN", "");
								resultObj.put("ORIGINAL_FILE_NAME", org_filename);
								resultObj.put("REAL_PATH", "/files/alarm/");
								resultObj.put("TEMP_ID", "");
								resultObj.put("FILE_SORT", "3");
								resultObj.put("FILE_SIZE", mList.get(0).getSize());
	    						
								resultJson.put("resultCode",200);
	    						resultJson.put("result", resultObj);
	    						resultJson.put("extended", extended);
	    						 try {
	    		        			 out.println(resultJson);
	    		        		} catch (IndexOutOfBoundsException e) {
	    		        			//e.printStackTrace();
	    		        			System.out.println("Exception occurred");
	    		        		} finally {
	    		        			out.close();
	    		        		}
	        				}
							
						}else {
	        				resultJson.put("resultCode", "501");
	    					resultJson.put("result", "지원하지 않는 파일 형식입니다.");
	    					 try {
			        			 out.println(resultJson);
			        		} catch (IndexOutOfBoundsException e) {
			        			//e.printStackTrace();
			        			System.out.println("Exception occurred");
			        		} finally {
			        			out.close();
			        		}
	        			}
				
					}
					mList=null;

				}else {
					System.out.println("지식디비  팝업 아닌거  다들어와야됨");
					List<HashMap<String,Object>> iList = new ArrayList();
					iList = imageUploadService.imageInfoGet(request.getParameter("confId"));
					//개발용
					String realFolder = request.getSession().getServletContext().getRealPath("")+iList.get(0).get("UPLOAD_PATH");
					List<MultipartFile> mList = request.getFiles("file");
					SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMddHHmmss");
					Date date = new Date();
					String strDate =  format1.format(date);

					System.out.println("realFolder : " +realFolder);
					JSONObject resultJson = new JSONObject();
			
					HashMap<String,Object> resultObj = new HashMap<String,Object>();
					// 1. null 체크
					if(mList != null) {
						String org_filename =mList.get(0).getOriginalFilename().toLowerCase();
						if(
								org_filename.endsWith(".jpg") ||
	        		    		org_filename.endsWith(".jpeg") ||
	        		    		org_filename.endsWith(".png") ||
	        		    		org_filename.endsWith(".gif") ||
	        		    		org_filename.endsWith(".doc") ||
	        		    		org_filename.endsWith(".hwp") ||
	        		    		org_filename.endsWith(".ppt") ||
	        		    		org_filename.endsWith(".pptx") ||
	        		    		org_filename.endsWith(".xlsx") ||
	        		    		org_filename.endsWith(".pdf") ||
	        		    		org_filename.endsWith(".zip") 
	        		    		) {
							//2.파일 사이즈 확인후 제한 걸기
	        				int size = (int) mList.get(0).getSize();
	        				if ( size > 10485760) {
	        					resultJson.put("resultCode", "500");
	        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
	        					out.println(resultJson);
	        					out.close();
	        				}else {
	        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
	    						UUID uuid = UUID.randomUUID();
	    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
	    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

	    						System.out.println("원본 파일명 : " + org_filename);
	    						System.out.println("저장할 파일명 : " + str_filename);
	    						String filepath = realFolder + str_filename;
	    						System.out.println("파일경로 : " + filepath);
	    						filepath =	EgovWebUtil.filePathBlackList(filepath);
	    						File f = new File(filepath);
	    						if (!f.exists()) {
	    							f.mkdirs();
	    						}
	    						mList.get(0).transferTo(f);
	    						
	    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
	    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
	    						//out.println("https://www.110.go.kr"+iList.get(0).get("UPLOAD_PATH")+str_filename);
	    						
	    						resultObj.put("FILE_NAME", str_filename);
								resultObj.put("FILE_TYPE", "");
								resultObj.put("USE_YN", "");
								resultObj.put("ORIGINAL_FILE_NAME", org_filename);
								resultObj.put("REAL_PATH", iList.get(0).get("UPLOAD_PATH"));
								resultObj.put("TEMP_ID", "");
								resultObj.put("FILE_SORT", "3");
								resultObj.put("FILE_SIZE", mList.get(0).getSize());
	    						
								resultJson.put("resultCode",200);
	    						resultJson.put("result", resultObj);
	    						resultJson.put("extended", extended);
	    						
	    						 try {
	    		        			 out.println(resultJson);
	    		        		} catch (IndexOutOfBoundsException e) {
	    		        			//e.printStackTrace();
	    		        			System.out.println("Exception occurred");
	    		        		} finally {
	    		        			out.close();
	    		        		}
	        				}
							
						}else if(org_filename.endsWith(".wmv") ||
	        		    		org_filename.endsWith(".mp4") ||
	        		    		org_filename.endsWith(".avi") ||
	        		    		org_filename.endsWith(".webm") ||
	        		    		org_filename.endsWith(".ogg") ) {
							//2.파일 사이즈 확인후 제한 걸기
	        				int size = (int) mList.get(0).getSize();
	        				if ( size > 10485760) {
	        					resultJson.put("resultCode", "500");
	        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
	        					out.println(resultJson);
	        					out.close();
	        				}else {
	        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
	    						UUID uuid = UUID.randomUUID();
	    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
	    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

	    						System.out.println("원본 파일명 : " + org_filename);
	    						System.out.println("저장할 파일명 : " + str_filename);
	    						String filepath = realFolder + str_filename;
	    						System.out.println("파일경로 : " + filepath);
	    						filepath =	EgovWebUtil.filePathBlackList(filepath);
	    						File f = new File(filepath);
	    						if (!f.exists()) {
	    							f.mkdirs();
	    						}
	    						mList.get(0).transferTo(f);
	    						
	    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
	    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
	    						//out.println("https://www.110.go.kr"+iList.get(0).get("UPLOAD_PATH")+str_filename);
	    						
	    						resultObj.put("FILE_NAME", str_filename);
								resultObj.put("FILE_TYPE", "");
								resultObj.put("USE_YN", "");
								resultObj.put("ORIGINAL_FILE_NAME", org_filename);
								resultObj.put("REAL_PATH",iList.get(0).get("UPLOAD_PATH"));
								resultObj.put("TEMP_ID", "");
								resultObj.put("FILE_SORT", "3");
								resultObj.put("FILE_SIZE", mList.get(0).getSize());
	    						
								resultJson.put("resultCode",200);
	    						resultJson.put("result", resultObj);
	    						resultJson.put("extended", extended);
	    						 try {
	    		        			 out.println(resultJson);
	    		        		} catch (IndexOutOfBoundsException e) {
	    		        			//e.printStackTrace();
	    		        			System.out.println("Exception occurred");
	    		        		} finally {
	    		        			out.close();
	    		        		}
	        				}
							
						}else {
	        				resultJson.put("resultCode", "501");
	    					resultJson.put("result", "지원하지 않는 파일 형식입니다.");
	    					 try {
			        			 out.println(resultJson);
			        		} catch (IndexOutOfBoundsException e) {
			        			//e.printStackTrace();
			        			System.out.println("Exception occurred");
			        		} finally {
			        			out.close();
			        		}
	        			}
				
					}
					mList=null;

				
				}

			}else if(confId.equals("contactDB")) {
				//개발용
				String realFolder = request.getSession().getServletContext().getRealPath("")+"/files/faq/";
				List<MultipartFile> mList = request.getFiles("file");
				SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMddHHmmss");
				Date date = new Date();
				String strDate =  format1.format(date);

				List<HashMap<String, Object>> result =new ArrayList<>();
				System.out.println("realFolder : " +realFolder);
				JSONObject resultJson = new JSONObject();
				HashMap<String,Object> resultObj = new HashMap<String,Object>();
				// 1. null 체크
				if(mList != null) {
					String org_filename =mList.get(0).getOriginalFilename().toLowerCase();
					if(
							org_filename.endsWith(".jpg") ||
        		    		org_filename.endsWith(".jpeg") ||
        		    		org_filename.endsWith(".png") ||
        		    		org_filename.endsWith(".gif") ||
        		    		org_filename.endsWith(".doc") ||
        		    		org_filename.endsWith(".hwp") ||
        		    		org_filename.endsWith(".ppt") ||
        		    		org_filename.endsWith(".pptx") ||
        		    		org_filename.endsWith(".xlsx") ||
        		    		org_filename.endsWith(".pdf") ||
        		    		org_filename.endsWith(".zip") 
        		    		) {
						//2.파일 사이즈 확인후 제한 걸기
        				int size = (int) mList.get(0).getSize();
        				if ( size > 10485760) {
        					resultJson.put("resultCode", "500");
        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
        					 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Connection Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}
        				}else {
        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
    						UUID uuid = UUID.randomUUID();
    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

    						System.out.println("원본 파일명 : " + org_filename);
    						System.out.println("저장할 파일명 : " + str_filename);
    						String filepath = realFolder + str_filename;
    						System.out.println("파일경로 : " + filepath);
    						filepath =	EgovWebUtil.filePathBlackList(filepath);
    						File f = new File(filepath);
    						if (!f.exists()) {
    							f.mkdirs();
    						}
    						mList.get(0).transferTo(f);
    						
    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
    						
    						resultObj.put("FILE_NAME", str_filename);
							resultObj.put("FILE_TYPE", "");
							resultObj.put("USE_YN", "");
							resultObj.put("ORIGINAL_FILE_NAME", org_filename);
							resultObj.put("REAL_PATH", "/files/faq/");
							resultObj.put("TEMP_ID", "");
							resultObj.put("FILE_SORT", "3");
							resultObj.put("FILE_SIZE", mList.get(0).getSize());
    						
							resultJson.put("resultCode",200);
    						resultJson.put("result", resultObj);
    						resultJson.put("extended", extended);
    						 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}
        				}
						
					}else if(org_filename.endsWith(".wmv") ||
        		    		org_filename.endsWith(".mp4") ||
        		    		org_filename.endsWith(".avi") ||
        		    		org_filename.endsWith(".webm") ||
        		    		org_filename.endsWith(".ogg") ) {
						//2.파일 사이즈 확인후 제한 걸기
        				int size = (int) mList.get(0).getSize();
        				if ( size > 10485760) {
        					resultJson.put("resultCode", "500");
        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
        					 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}
        				}else {
        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
    						UUID uuid = UUID.randomUUID();
    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

    						System.out.println("원본 파일명 : " + org_filename);
    						System.out.println("저장할 파일명 : " + str_filename);
    						String filepath = realFolder + str_filename;
    						System.out.println("파일경로 : " + filepath);
    						filepath =	EgovWebUtil.filePathBlackList(filepath);
    						File f = new File(filepath);
    						if (!f.exists()) {
    							f.mkdirs();
    						}
    						mList.get(0).transferTo(f);
    						
    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
    						//out.println("https://www.110.go.kr"+"/files/alarm/"+str_filename);
    						
    						resultObj.put("FILE_NAME", str_filename);
							resultObj.put("FILE_TYPE", "");
							resultObj.put("USE_YN", "");
							resultObj.put("ORIGINAL_FILE_NAME", org_filename);
							resultObj.put("REAL_PATH", "/files/faq/");
							resultObj.put("TEMP_ID", "");
							resultObj.put("FILE_SORT", "3");
							resultObj.put("FILE_SIZE", mList.get(0).getSize());
    						
							resultJson.put("resultCode",200);
    						resultJson.put("result", resultObj);
    						resultJson.put("extended", extended);
    						
    						 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}
        				}
						
					}else {
        				resultJson.put("resultCode", "501");
    					resultJson.put("result", "지원하지 않는 파일 형식입니다.");
    					 try {
		        			 out.println(resultJson);
		        		} catch (IndexOutOfBoundsException e) {
		        			//e.printStackTrace();
		        			System.out.println("Exception occurred");
		        		} finally {
		        			out.close();
		        		}
        			}
			
				}
				mList=null;
				
			}
	}
	
	
	@RequestMapping(value="/fileDelete")
	public void fileDelete(HttpServletRequest req,HttpServletResponse res) throws Exception{
		//filedelete는 배치로 돌려서 삭제할 예정
		/*System.out.println("asd"+req.getParameter("fileName"));
		List<HashMap<String,Object>> iList = new ArrayList();
		iList = imageUploadService.imageInfoGet(req.getParameter("confId"));

		// 업로드할 폴더 경로
		String realFolder = req.getSession().getServletContext().getRealPath("")+iList.get(0).get("UPLOAD_PATH");
		File f = new File(realFolder+"/"+req.getParameter("fileName"));
		String FILE_NAME=req.getParameter("fileName");
		System.out.println(FILE_NAME);*/
	}
	
	//게시판 파일다운
	@RequestMapping("/fileDown.do")
	public void boardFileDown(
			HttpServletRequest req,
			HttpServletResponse res
			) throws Exception{
			
			String filePath = req.getParameter("filePath");
			String fileName = req.getParameter("fileName");
			String originalFileName = req.getParameter("originalFileName");
		
			//Null Pointer 역참조 취약점 조치
			if(fileName == null || "".equals(fileName))  return;
			
			//Null Pointer 역참조 취약점 조치
			if(filePath == null || "".equals(filePath))  return;
			
			//Null Pointer 역참조 취약점 조치
			if(originalFileName == null || "".equals(originalFileName))  return;
			
			//필터 추가 2022.06.02
			filePath = req.getParameter("filePath").replaceAll("\r", "").replaceAll("\n", "");
			fileName = req.getParameter("fileName").replaceAll("\r", "").replaceAll("\n", "");
			originalFileName = req.getParameter("originalFileName").replaceAll("\r", "").replaceAll("\n", "");		
			
			File uFile = new File(req.getSession().getServletContext().getRealPath("")+filePath, EgovWebUtil.filePathBlackList(fileName));
			int fSize = (int) uFile.length();
			String extended = fileName.substring(fileName.indexOf("."), fileName.length());
		
			String originalFileName2 = java.net.URLEncoder.encode(originalFileName, "UTF-8");
			originalFileName2 = originalFileName2.replace("+", " ").trim();
			
			//필터 추가 2022.06.02
			if(originalFileName2 == null || "".equals(originalFileName2))  return;
			originalFileName2 = originalFileName2.replaceAll("\r", "").replaceAll("\n", "");
			
			String userAgent = req.getHeader("User-Agent");
			
			if(fSize <= 0) {
				res.setContentType("text/html;charset=UTF-8");
				res.getWriter().print("<script>alert('선택 하신 파일을 찾을 수 없습니다.'); history.go(-1);</script>");
				System.out.println("ERR: " + "file size is 0");
			} else {
	
				res.setContentType("application/octet-stream; charset=UTF-8;");
				
				// MS IE 5.5 이하
				if (userAgent.indexOf("MSIE 5.5") > -1) res.setHeader("Content-Disposition", "filename=" + new String(originalFileName2.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
				// MS IE (보통은 6.x 이상 가정)
				else if (userAgent.indexOf("MSIE") > -1) res.setHeader("Content-Disposition", "attachment; filename=" + new String(originalFileName2.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
				// MS IE 11
				else if (userAgent.indexOf("Trident") > -1) res.setHeader("Content-Disposition", "attachment; filename=" + new String(originalFileName2.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
				// 모질라나 오페라
				else res.setHeader("Content-Disposition", "attachment; filename=" + new String(originalFileName2.getBytes(),"UTF-8").replaceAll("\\+", "\\ ") + ";");
	
				res.setHeader("Content-Length", fSize + "");
				
				//필터추가 2022.06.02
				if(uFile == null || "".equals(uFile))  return;
				
				InputStream ins = new FileInputStream(uFile);
				OutputStream os = res.getOutputStream();
			  	
			  	byte b[] = new byte[fSize];
			  	int len = 0;	
			   	
			   	try {
			   		while((len = ins.read(b)) > 0) os.write(b, 0, len);
				} catch (IOException e) {
					//e.printStackTrace();
					System.out.println("Exception occurred");
				} finally {
					ins.close();
				   	os.close();
				}
			   	
			}

	}

}