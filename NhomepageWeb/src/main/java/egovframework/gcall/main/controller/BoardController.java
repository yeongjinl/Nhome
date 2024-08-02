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
import egovframework.gcall.main.service.MainService;
import egovframework.gcall.util.CommonUtil;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	@Resource(name = "MainService")
	private MainService mainService;
	
	// 공지사항
	@RequestMapping("/notice.do")
	public ModelAndView notice(
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/board/sub01N");
		mav.addObject("lev1_menu", "board");
		mav.addObject("lev2_menu", "notice");
		
		/*
		 * 0. 게시판 타입 설정
		 * board_type = 51: 공지사항
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("notice"));
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
		
		mav.addObject("noticeList", resultList);
		mav.addObject("paginationDTO", paginationDTO);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	// 공지사항 상세
	@RequestMapping("/noticeView.do")
	public ModelAndView noticeView(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value = "num", defaultValue = "0") Integer num,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/board/sub01ViewN");
		mav.addObject("lev1_menu", "board");
		mav.addObject("lev2_menu", "notice");
		
		/*
		 * 0. 게시판 타입 및 게시판 num 설정
		 * board_type = 51: 공지사항
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("notice"));
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
		
		mav.addObject("noticeDetail", resultList.get(0));
		mav.addObject("noticeFileDetail", resultList2);
		
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
		
		mav.addObject("noticePrev", prevList.get(0));
		mav.addObject("noticeNext", nextList.get(0));
		mav.addObject("curPage", curPage);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	/*
	 * 보도자료 관리(리스트)
	 */
	@RequestMapping("/news.do")
	public ModelAndView news(
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/board/sub02N");
		mav.addObject("lev1_menu", "board");
		mav.addObject("lev2_menu", "news");
		
		/*
		 * 0. 게시판 타입 설정
		 * board_type = 4: 보도자료
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("news"));
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
		
		mav.addObject("newsList", resultList);
		mav.addObject("paginationDTO", paginationDTO);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	/*
	 * 보도자료관리(상세페이지)
	 */
	@RequestMapping("/newsView.do")
	public ModelAndView newsView(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value = "num", defaultValue = "0") Integer num,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/board/sub02ViewN");
		mav.addObject("lev1_menu", "board");
		mav.addObject("lev2_menu", "news");
		
		
		/*
		 * 0. 게시판 타입 및 게시판 num 설정
		 * board_type = 4: 보도자료
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("news"));
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
		
		mav.addObject("newsDetail", resultList.get(0));
		mav.addObject("newsFileDetail", resultList2);
		
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
		
		mav.addObject("newsPrev", prevList.get(0));
		mav.addObject("newsNext", nextList.get(0));
		mav.addObject("curPage", curPage);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	// 홍보자료
	@RequestMapping("/promotion.do")
	public ModelAndView promotion(
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/board/sub03N");
		mav.addObject("lev1_menu", "board");
		mav.addObject("lev2_menu", "promotion");
		
		/*
		 * 0. 게시판 타입 설정
		 * board_type = 5, 6: 홍보자료
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("promotion"));
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
		
		mav.addObject("promotionList", resultList);
		mav.addObject("paginationDTO", paginationDTO);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
	
	/*
	 * 홍보자료관리(상세페이지)
	 */
	@RequestMapping("/promotionView.do")
	public ModelAndView promotionView(
			HttpServletRequest req,
			HttpServletResponse res,
			@RequestParam(value = "num", defaultValue = "0") Integer num,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value = "scType", defaultValue = "") String scType,
			@RequestParam(value = "scText", defaultValue = "") String scText) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("egovframework/gcall/main/board/sub03ViewN");
		mav.addObject("lev1_menu", "board");
		mav.addObject("lev2_menu", "promotion");
		
		/*
		 * 0. 게시판 타입 및 게시판 num 설정
		 * board_type = 5, 6: 홍보자료
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_type", new CommonUtil().getConfIdList().get("promotion"));
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
		
		mav.addObject("promotionDetail", resultList.get(0));
		mav.addObject("promotionFileDetail", resultList2);
		
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
		
		mav.addObject("promotionPrev", prevList.get(0));
		mav.addObject("promotionNext", nextList.get(0));
		mav.addObject("curPage", curPage);
		mav.addObject("scType", scType);
		mav.addObject("scText", scText);
		
		return mav;
	}
}
