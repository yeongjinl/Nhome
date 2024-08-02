package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.dto.PaginationDTO;
import egovframework.gcall.service.BoardReplyService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("BoardReplyService")
public class BoardReplyServiceImpl extends EgovAbstractServiceImpl implements BoardReplyService {

	@Resource(name = "BoardReplyDAO")
	private BoardReplyDAO boardReplyDAO;
	/*sjs 수정부분*/

	@Override
	public List<HashMap<String, Object>> boardReplyList(PaginationDTO pDTO) {
		// TODO Auto-generated method stub
		return boardReplyDAO.boardReplyList(pDTO);
	}

	@Override
	public int boardReplyListCount(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return boardReplyDAO.boardReplyListCount(hMap);
	}

	@Override
	public int boardReplyInsert(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return  boardReplyDAO.boardReplyInsert(hMap);
	}

	@Override
	public int boardReplySequence() {
		// TODO Auto-generated method stub
		return boardReplyDAO.boardReplySequence();
	}

	@Override
	public int boardReplyUpdate(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return boardReplyDAO.boardReplyUpdate(hMap);
	}
	
	
}
