package egovframework.gcall.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.enterprise.inject.Model;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.springframework.stereotype.Controller;
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
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.IpUtil;
import egovframework.gcall.util.StrUtil;



@RequestMapping(value="/contest")
@Controller
public class ContestManageController {
	@Resource(name = "ImageUploadService")
	private ImageUploadService imageUploadService;

	@Resource(name = "BoardService")
	private BoardService boardService;

	@RequestMapping(value="/list.do", method=RequestMethod.GET)
	public ModelAndView list(
			@RequestParam(value = "confId", defaultValue = "12") String confId,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value="selSearch" ,defaultValue="0") String selSearch,
			@RequestParam(value="searchWord" ,defaultValue="") String searchWord,
			HttpSession session
			)
					throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String contestAuth = CmmUtil.nvl((String) authUI.get("CONTEST_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(contestAuth.equals("1")||userType.equals("0")) {
				PaginationDTO pDTO = new PaginationDTO();
				HashMap<String,Object> hMap = new HashMap<>();
				if(pDTO.getSearchWord()!=""&&pDTO.getSelSearch()!="") {
					pDTO.setSearchWord(searchWord);
					pDTO.setSelSearch(selSearch);
					
					hMap.put("searchWord",pDTO.getSearchWord());
					hMap.put("selSearch",selSearch);
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

				List<HashMap<String,Object>> hList = boardService.boardAdminList(pDTO);
				mv.setViewName("egovframework/gcall/boardManage/contestManage/contestList");
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
		}else if(session.getAttribute("ss_user_info")==null) {
			mv.setViewName("egovframework/gcall/boardManage/redirect");
			mv.addObject("url","/g110/login.do");
			mv.addObject("msg","로그인 정보가 없습니다.");
		}
		return mv;
	}
	@RequestMapping(value="/reg.do", method=RequestMethod.GET)
	public ModelAndView reg(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String contestAuth = CmmUtil.nvl((String) authUI.get("CONTEST_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(contestAuth.equals("1")||userType.equals("0")) {
				mv.setViewName("egovframework/gcall/boardManage/contestManage/contestReg");
			}else{
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
	@RequestMapping(value="/regProc.do",method=RequestMethod.POST)
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
			String contestAuth = CmmUtil.nvl((String) authUI.get("CONTEST_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(contestAuth.equals("1")||userType.equals("0")) {
				String ip = IpUtil.IpGet();
				//IP 저장
				bDTO.setBOARD_IP(ip);
				int boardSequence = boardService.boardSequence();
				String str = StrUtil.tagHtml(bDTO.getCONTENT());
				bDTO.setBOARD_NUM(Integer.toString(boardSequence));
				bDTO.setCONTENT(str);
				bDTO.setCONF_ID("12");
				boardService.regProc(bDTO);
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
						hMap.put("CONF_ID", "12");
						imageUploadService.fileUploadDB(hMap);
					}
				}
		    	mv.setViewName("redirect:/contest/list.do");
		    	bDTO=null;
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
	@RequestMapping(value="/detail.do")
	public ModelAndView detail(HttpServletRequest req,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String contestAuth = CmmUtil.nvl((String) authUI.get("CONTEST_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(contestAuth.equals("1")||userType.equals("0")) {
				String boardNum = req.getParameter("boardNum");
				String confId = req.getParameter("confId");
				HashMap<String,Object> hMap = new HashMap<>();
				HashMap<String,Object> newHMap = new HashMap<>();
				List<HashMap<String,Object>> fList = new ArrayList<>();
				JSONArray newFList = new JSONArray();
				hMap.put("boardNum", boardNum);
				hMap.put("confId",confId);
				hMap = boardService.getBoardDetail(hMap);
				fList = boardService.getBoardFileList(hMap);
				for(int i=0; i<fList.size();i++) {
					//경로
					String sfileName = (String)fList.get(i).get("FILE_NAME");
					sfileName =	EgovWebUtil.filePathBlackList(sfileName);
					File file = new File(req.getSession().getServletContext().getRealPath("")+fList.get(i).get("REAL_PATH")+""+sfileName);
					newHMap.put("FILE_NAME",fList.get(i).get("FILE_NAME"));
					newHMap.put("ORIGINAL_FILE_NAME",fList.get(i).get("ORIGINAL_FILE_NAME"));
					newHMap.put("FILE_SIZE", file.length());
					newHMap.put("REAL_PATH",fList.get(i).get("REAL_PATH"));
					newFList.put(newHMap);
					System.out.println("파일사이즈:"+file.length());
				}

				JSONObject jsonObj = new JSONObject(hMap);
				JSONArray jsonFList = new JSONArray(fList);
				mv.setViewName("egovframework/gcall/boardManage/contestManage/contestDetail");
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
	@RequestMapping(value="/updateView.do")
	public ModelAndView updateView(HttpServletRequest req,HttpSession session) throws JSONException {
		ModelAndView mv = new ModelAndView();
		Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
		Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
		String contestAuth = CmmUtil.nvl((String) authUI.get("CONTEST_AUTH"));
		String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
		if(contestAuth.equals("1")||userType.equals("0")) {
			String boardNum = req.getParameter("boardNum");
			String confId = req.getParameter("confId");
			HashMap<String,Object> hMap = new HashMap<>();
			HashMap<String,Object> newHMap = new HashMap<>();
			List<HashMap<String,Object>> fList = new ArrayList<>();
			JSONArray newFList = new JSONArray();
			hMap.put("boardNum", boardNum);
			hMap.put("confId",confId);
			hMap = boardService.getBoardDetail(hMap);
			fList = boardService.getBoardFileList(hMap);
			for(int i=0; i<fList.size();i++) {
				String sfileName = (String)fList.get(i).get("FILE_NAME");
				sfileName =	EgovWebUtil.filePathBlackList(sfileName);
				File file = new File(req.getSession().getServletContext().getRealPath("")+fList.get(i).get("REAL_PATH")+""+sfileName);
				newHMap.put("FILE_NAME",fList.get(i).get("FILE_NAME"));
				newHMap.put("ORIGINAL_FILE_NAME",fList.get(i).get("ORIGINAL_FILE_NAME"));
				newHMap.put("FILE_SIZE", file.length());
				newHMap.put("REAL_PATH",fList.get(i).get("REAL_PATH"));
				newFList.put(newHMap);
			}

			JSONObject jsonObj = new JSONObject(hMap);
			JSONArray jsonFList = new JSONArray(fList);
			mv.setViewName("egovframework/gcall/boardManage/contestManage/contestUpdate");
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
	@RequestMapping(value="update.do",method=RequestMethod.POST)
	public ModelAndView update(BoardCommonDTO bDTO,
			@RequestParam(value="FILE_NAME",required=false) String[] FILE_NAME,
			@RequestParam(value="FILE_SORT",required=false) String[] FILE_SORT,
			@RequestParam(value="ORIGINAL_FILE_NAME",required=false) String[] ORIGINAL_FILE_NAME,
			@RequestParam(value="REAL_PATH",required=false) String[] REAL_PATH,
			@RequestParam(value="TEMP_ID",required=false) String[] TEMP_ID,
			@RequestParam(value="USE_YN",required=false) String[] USE_YN,
			HttpSession session,
			HttpServletRequest req
			) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("ss_user_info")!=null) {
			Map<String,Object> sessionUI = (Map<String,Object>)session.getAttribute("ss_user_info");
			Map<String,Object> authUI = (Map<String,Object>)session.getAttribute("ss_user_auth");
			String contestAuth = CmmUtil.nvl((String) authUI.get("CONTEST_AUTH"));
			String userType = CmmUtil.nvl((String) authUI.get("USER_TYPE"));
			if(contestAuth.equals("1")||userType.equals("0")) {
				String ip = IpUtil.IpGet();
				//IP 저장
				bDTO.setBOARD_IP(ip);
				String str = StrUtil.tagHtml(bDTO.getCONTENT());
				bDTO.setCONTENT(str);
				bDTO.setCONF_ID("12");
				List<HashMap<String, Object>> rList= new ArrayList();
				HashMap<String, Object> rMap = new HashMap<>();
				//게시판번호에 맞는 파일 지우기
				rMap.put("BOARD_NUM", bDTO.getBOARD_NUM());
				rMap.put("CONF_ID",bDTO.getCONF_ID());

				boardService.updProc(bDTO);
				
				if(FILE_NAME!=null) {
					rList=boardService.getBoardFileList(rMap);
					
				/*	for(int i=0 ; i<rList.size();i++) {
						String filePathName = req.getSession().getServletContext().getRealPath("")+rList.get(i).get("REAL_PATH")+rList.get(i).get("FILE_NAME");
						File f = new File(filePathName);
						if(f.exists()) {
							f.delete();
						}
					}*/
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
						hMap.put("CONF_ID", "12");
						imageUploadService.fileUploadDB(hMap);
					}
				}else {
				/*	for(int i=0 ; i<rList.size();i++) {
						File f = new File(req.getSession().getServletContext().getRealPath("")+rList.get(i).get("REAL_PATH")+rList.get(i).get("FILE_NAME"));
						if(f.exists()) {
							f.delete();
						}
					}*/
					boardService.deleteFile(bDTO);
				}
		    	mv.setViewName("redirect:/contest/list.do");
		    	bDTO=null;
		    	rMap=null;
		    	rList=null;
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
	@RequestMapping(value="deleteBoard.do")
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
				String filePathName = req.getSession().getServletContext().getRealPath("")+hList.get(i).get("REAL_PATH")+""+hList.get(i).get("FILE_NAME");
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
		mv.addObject("url","/contest/list.do");
		mv.addObject("msg","삭제 되었습니다.");
		return mv;
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
}