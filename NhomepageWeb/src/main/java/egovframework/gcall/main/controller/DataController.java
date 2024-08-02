package egovframework.gcall.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.dto.PaginationDTO2;
import egovframework.gcall.main.service.DataService;
import egovframework.gcall.main.service.MainService;
import egovframework.gcall.util.CommonUtil;

@Controller
@RequestMapping(value = "/data")
public class DataController {
	
	@Resource(name = "MainService")
	private MainService mainService;
	
	@Resource(name = "DataService")
	private DataService dataService;
	
	/*
	 * faq관리(리스트)
	 */
	@RequestMapping("/faq.do")
	public ModelAndView faq(
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/data/sub01N");
		mav.addObject("lev1_menu", "data");
		mav.addObject("lev2_menu", "faq");
		
		/*
		 * 0. contact 타입 설정 및 검색어 설정
		 * sc_type = 04 : 사례
		 * sc_type = 03 : faq
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sc_type", scType);
		map.put("sc_text", scText);
		
		/*
		 * 1. 페이지네이션 설정
		 * 총 개수 / 한 페이지당 게시물 개수 / 하단 보여줄 페이지 개수 / 현재 페이지
		 */
		PaginationDTO2 paginationDTO = new PaginationDTO2();
		
		paginationDTO.setTotalCount(dataService.contactListCount(map));
		paginationDTO.setPageSize(10);
		paginationDTO.setRangeSize(10);
		//curPage가 양수이면
		if(curPage>0) {
			paginationDTO.setCurPage(curPage);
		}
		
		paginationDTO.doPagination();
		
		// 2. 시작 인덱스 및 페이지 수 추가
		map.put("start_index", paginationDTO.getStartIndex());
		map.put("page_size", paginationDTO.getPageSize());
		
		// 3. 게시물 조회
		List<HashMap<String, Object>> resultList = dataService.contactList(map);
		
		mav.addObject("faqList", resultList);
		mav.addObject("paginationDTO", paginationDTO);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	/*
	 * faq관리(상세페이지)
	 */
	@RequestMapping("/faqView.do")
	public ModelAndView faqView(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value = "num", defaultValue = "0") Integer num,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/data/sub01ViewN");
		mav.addObject("lev1_menu", "data");
		mav.addObject("lev2_menu", "faq");
		
		/*
		 * 0. contact num 설정
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("db_seq", num);
		map.put("sc_type", scType);
		map.put("sc_text", scText);
		
		/*
		 * 1. 게시물 조회수 업데이트
		 */
		dataService.contactReadCount(map);
		
		/*
		 * 2. 게시판 및 첨부파일 불러오기
		 */
		List<HashMap<String, Object>> resultList = dataService.contactDetail(map);
		List<HashMap<String, Object>> resultList2 = dataService.contactFileDetail(map);
		
		mav.addObject("faqDetail", resultList.get(0));
		mav.addObject("faqFileDetail", resultList2);
		
		/*
		 * 3. 이전글 / 다음글 불러오기
		 */
		List<HashMap<String, Object>> prevList = dataService.contactPrev(map);
		List<HashMap<String, Object>> nextList = dataService.contactNext(map);
		if(prevList.isEmpty()) prevList.add(null);
		if(nextList.isEmpty()) nextList.add(null);
		
		mav.addObject("faqPrev", prevList.get(0));
		mav.addObject("faqNext", nextList.get(0));
		mav.addObject("curPage", curPage);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	/*
	 * 상담사연관리(리스트)
	 */
	@RequestMapping("/story.do")
	public ModelAndView story(
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/data/sub02N");
		mav.addObject("lev1_menu", "data");
		mav.addObject("lev2_menu", "story");
		
		/*
		 * 0. 게시판 타입 설정
		 * board_type = 9: 상담사연
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("story"));
		map.put("sc_type", scType);
		map.put("sc_text", scText);
		
		/*
		 * 1. 페이지네이션 설정
		 * 총 개수 / 한 페이지당 게시물 개수 / 하단 보여줄 페이지 개수 / 현재 페이지
		 */
		PaginationDTO2 paginationDTO = new PaginationDTO2();
		
		paginationDTO.setTotalCount(mainService.boardListCount(map));
		paginationDTO.setPageSize(10);
		paginationDTO.setRangeSize(10);
		//curPage가 양수이면
		if(curPage>0) {
			paginationDTO.setCurPage(curPage);
		}
		
		paginationDTO.doPagination();
		
		// 2. 시작 인덱스 및 페이지 수 추가
		map.put("start_index", paginationDTO.getStartIndex());
		map.put("page_size", paginationDTO.getPageSize());
		
		// 3. 게시물 조회
		List<HashMap<String, Object>> resultList = mainService.boardList(map);
		
		mav.addObject("storyList", resultList);
		mav.addObject("paginationDTO", paginationDTO);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	/*
	 * 상담사연관리(상세페이지)
	 */
	@RequestMapping("/storyView.do")
	public ModelAndView storyView(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value = "num", defaultValue = "0") Integer num,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/data/sub02ViewN");
		mav.addObject("lev1_menu", "data");
		mav.addObject("lev2_menu", "story");
		
		/*
		 * 0. 게시판 타입 및 게시판 num 설정
		 * board_type = 9: 상담사연
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("story"));
		map.put("board_num", num);
		map.put("sc_type", scType);
		map.put("sc_text", scText);
		
		/*
		 * 1. 게시물 조회수 업데이트
		 */
		mainService.boardReadCount(map);
		
		/*
		 * 2. 게시판 및 첨부파일 불러오기
		 */
		List<HashMap<String, Object>> resultList = mainService.boardDetail(map);
		List<HashMap<String, Object>> resultList2 = mainService.boardFileDetail(map);
		
		mav.addObject("storyDetail", resultList.get(0));
		mav.addObject("storyFileDetail", resultList2);
		
		/*
		 * 3. 이전글 / 다음글 불러오기
		 */
		map.put("board_top", resultList.get(0).get("IS_TOP"));
		map.put("board_reg", resultList.get(0).get("BOARD_REG_DATE"));
		
		map.put("prev_count", mainService.boardPrevCount(map));
		map.put("next_count", mainService.boardNextCount(map));
		
		List<HashMap<String, Object>> prevList = mainService.boardPrev(map);
		List<HashMap<String, Object>> nextList = mainService.boardNext(map);
		if(prevList.isEmpty()) prevList.add(null);
		if(nextList.isEmpty()) nextList.add(null);
		
		mav.addObject("storyPrev", prevList.get(0));
		mav.addObject("storyNext", nextList.get(0));
		mav.addObject("curPage", curPage);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	// 법령정보
	@RequestMapping("/law.do")
	public ModelAndView law() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/data/sub03N");
		mav.addObject("lev1_menu", "data");
		mav.addObject("lev2_menu", "law");
		
		return mav;
	}
}
