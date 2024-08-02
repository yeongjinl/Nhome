package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.PaginationDTO;

@Repository("BoardReplyDAO")
public class BoardReplyDAO extends EgovComAbstractDAO {
	/*sjs 수정부분*/
	public List<HashMap<String, Object>> boardReplyList(PaginationDTO pDTO) {
		// TODO Auto-generated method stub
		return selectList("BoardReplyDAO.boardReplyList",pDTO);
	}

	public int boardReplyListCount(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return selectOne("BoardReplyDAO.boardReplyListCount",hMap);
	}

	public int boardReplyInsert(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return insert("BoardReplyDAO.boardReplyInsert",hMap);
	}

	public int boardReplySequence() {
		// TODO Auto-generated method stub
		return selectOne("BoardReplyDAO.boardReplySequence");
	}

	public int boardReplyUpdate(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return update("BoardReplyDAO.boardReplyUpdate",hMap);
	}

	
}
