package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.dto.BoardCommonDTO;
import egovframework.gcall.dto.PaginationDTO;
import egovframework.gcall.service.BoardService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("BoardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService {

	@Resource(name = "BoardDAO")
	private BoardDAO boardDAO;
	/*sjs 수정부분*/
	@Override
	public void regProc(BoardCommonDTO bDTO) throws Exception   {
		// TODO Auto-generated method stub
		boardDAO.regProc(bDTO);
	}
	@Override
	public int boardSequence() throws Exception  {
		// TODO Auto-generated method stub
		int result = boardDAO.boardSequence();
		return result;
	}
	@Override
	public List<HashMap<String, Object>> boardAdminList(PaginationDTO pDTO) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> hList  = boardDAO.boardAdminList(pDTO);
		return hList;
	}
	@Override
	public int boardListAdminCount(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		int result = boardDAO.boardListAdminCount(hMap);
		return result;
	}
	@Override
	public HashMap<String, Object> getBoardDetail(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		HashMap<String, Object> result = boardDAO.getBoardDetail(hMap);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> getBoardFileList(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> result = boardDAO.getBoardFileList(hMap);
		return result;
	}
	@Override
	public void deleteFile(BoardCommonDTO bDTO) {
		// TODO Auto-generated method stub
		boardDAO.deleteFile(bDTO);
	}
	
	@Override
	public void updProc(BoardCommonDTO bDTO) {
		boardDAO.updProc(bDTO);
		
	}
	@Override
	public void deleteBoard(BoardCommonDTO bDTO) {
		// TODO Auto-generated method stub
		boardDAO.deleteBoard(bDTO);
	}
	@Override
	public void deleteFileName(String parameter) {
		// TODO Auto-generated method stub
		boardDAO.deleteFileName(parameter);
	}
	@Override
	public List<HashMap<String, Object>> getScFileList(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		return boardDAO.getScFileList(hMap);
	}
	
	
	
}
