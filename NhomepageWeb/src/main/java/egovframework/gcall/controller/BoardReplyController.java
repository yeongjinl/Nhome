package egovframework.gcall.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import egovframework.gcall.dto.PaginationDTO;
import egovframework.gcall.service.BoardReplyService;
import egovframework.gcall.util.StringUtil;

@RequestMapping(value="/boardReply")
@Controller
public class BoardReplyController {
	@Resource(name = "BoardReplyService")
	private BoardReplyService boardReplyService;
	
	@RequestMapping(value="/list.do", method=RequestMethod.GET)
	public ModelAndView list(HttpServletRequest req,
			@RequestParam(value = "curPage", defaultValue = "1") Integer curPage,
			@RequestParam(value="selSearch" ,defaultValue="0") String selSearch,
			@RequestParam(value="searchWord" ,defaultValue="") String searchWord
			) {
		PaginationDTO pDTO = new PaginationDTO();
		HashMap<String,Object> hMap = new HashMap<>();
		if(pDTO.getSearchWord()!="") {
			pDTO.setSearchWord(searchWord);
			pDTO.setSelSearch(selSearch);
			hMap.put("searchWord",pDTO.getSearchWord());
		}
		hMap.put("CONF_ID", req.getParameter("confId"));
		hMap.put("BOARD_NUM", req.getParameter("boardNum"));
		hMap.put("selSearch",selSearch);
	
		int totalCount = boardReplyService.boardReplyListCount(hMap);
		int pageSize = 10;
		int rangeSize = 5;
		
		pDTO.setTotalCount(totalCount);
		pDTO.setPageSize(pageSize);
		pDTO.setRangeSize(rangeSize);
		//curPage가 양수이면
		if(curPage>0) {
			pDTO.setCurPage(curPage);
		}
		pDTO.setConfId(req.getParameter("confId"));
		pDTO.setBoardNum(req.getParameter("boardNum"));
		pDTO.doPagination();
		List<HashMap<String,Object>> boardReplyList = new ArrayList<>();
		boardReplyList = boardReplyService.boardReplyList(pDTO);
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("egovframework/gcall/boardReply/boardReplyList");
		mv.addObject("boardReplyList",boardReplyList);
		mv.addObject("pDTO",pDTO);
		mv.addObject("confId",req.getParameter("confId"));
		mv.addObject("boardNum",req.getParameter("boardNum"));
		mv.addObject("curPage",curPage);
		return mv;
	}
	@RequestMapping(value="/insert.do", method=RequestMethod.POST)
	public void insert(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		HashMap<String, Object> hMap = new HashMap<>();
		//int boardReplySeq = boardReplyService.boardReplySequence();
		//hMap.put("REPLY_SEQ", boardReplySeq);
		hMap.put("BOARD_NUM", req.getParameter("boardNum"));
		hMap.put("CONF_ID", req.getParameter("confId"));
		hMap.put("USER_ID", req.getParameter("USER_ID"));
		hMap.put("REPLY_WRITER", req.getParameter("REPLY_WRITER"));
		hMap.put("REPLY_CONTENTS", req.getParameter("REPLY_CONTENTS"));
		hMap.put("REPLY_PW", req.getParameter("REPLY_PW"));
	
		
		int result =  boardReplyService.boardReplyInsert(hMap);
		PrintWriter out = resp.getWriter();
		try {
			out.write(StringUtil.cleanXSS((new ObjectMapper()).writeValueAsString(result)));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
		
	}
	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public void update(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		HashMap<String, Object> hMap = new HashMap<>();
		hMap.put("BOARD_NUM", req.getParameter("boardNum"));
		hMap.put("CONF_ID", req.getParameter("confId"));
		hMap.put("USER_ID", req.getParameter("USER_ID"));
		hMap.put("REPLY_WRITER", req.getParameter("REPLY_WRITER"));
		hMap.put("REPLY_CONTENTS", req.getParameter("REPLY_CONTENTS"));
		/*hMap.put("REPLY_PW", req.getParameter("REPLY_PW"));*/
		hMap.put("REPLY_SEQ",  req.getParameter("REPLY_SEQ"));
		
		
		int result =  boardReplyService.boardReplyUpdate(hMap);
		PrintWriter out = resp.getWriter();
		try {
			out.write(StringUtil.cleanXSS((new ObjectMapper()).writeValueAsString(result)));
		} catch(IOException e) {
			//e.printStackTrace();
			System.out.println("Exception occurred");
		} finally {
			out.close();
		}
	}
}
