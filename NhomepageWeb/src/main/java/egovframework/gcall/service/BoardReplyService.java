package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;

import egovframework.gcall.dto.PaginationDTO;

public interface BoardReplyService {

	List<HashMap<String, Object>> boardReplyList(PaginationDTO pDTO);

	int boardReplyListCount(HashMap<String, Object> hMap);

	int boardReplyInsert(HashMap<String, Object> hMap);

	int boardReplySequence();

	int boardReplyUpdate(HashMap<String, Object> hMap);

	
}
