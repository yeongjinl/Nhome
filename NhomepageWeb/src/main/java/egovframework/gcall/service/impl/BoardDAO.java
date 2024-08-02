package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.BoardCommonDTO;
import egovframework.gcall.dto.PaginationDTO;

@Repository("BoardDAO")
public class BoardDAO extends EgovComAbstractDAO {

	/*sjs 수정부분*/
	public void regProc(BoardCommonDTO bDTO) {
		// TODO Auto-generated method stub
		 insert("BoardDAO.regProc", bDTO);
	}

	public int boardSequence() {
		return selectOne("BoardDAO.boardSequence");
	}

	public List<HashMap<String, Object>> boardAdminList(PaginationDTO pDTO) {
		// TODO Auto-generated method stub
		return selectList("BoardDAO.boardAdminList",pDTO);
	}

	public int boardListAdminCount(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return selectOne("BoardDAO.boardListAdminCount",hMap);
	}

	public HashMap<String, Object> getBoardDetail(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return selectOne("BoardDAO.getBoardDetail",hMap);
	}

	public List<HashMap<String, Object>> getBoardFileList(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return selectList("BoardDAO.getBoardFileList",hMap);
	}

	public void deleteFile(BoardCommonDTO bDTO) {
		// TODO Auto-generated method stub
		delete("BoardDAO.deleteFile",bDTO);
	}
	public void updProc(BoardCommonDTO bDTO) {
		// TODO Auto-generated method stub
		update("BoardDAO.updProc", bDTO);
	}

	public void deleteBoard(BoardCommonDTO bDTO) {
		// TODO Auto-generated method stub
		delete("BoardDAO.deleteBoard",bDTO);
	}

	public void deleteFileName(String parameter) {
		// TODO Auto-generated method stub
		delete("BoardDAO.deleteFileName",parameter);
	}

	public List<HashMap<String, Object>> getScFileList(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return selectList("BoardDAO.getScFileList",hMap);	}

	
}
