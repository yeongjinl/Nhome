package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;

import egovframework.gcall.dto.BoardCommonDTO;
import egovframework.gcall.dto.PaginationDTO;

public interface BoardService {
	
	/*sjs 수정부분*/
	
	public void regProc(BoardCommonDTO bDTO) throws Exception;

	public int boardSequence() throws Exception;

	public List<HashMap<String, Object>> boardAdminList(PaginationDTO pDTO);

	public int boardListAdminCount(HashMap<String, Object> hMap) throws Exception;

	public HashMap<String, Object> getBoardDetail(HashMap<String, Object> hMap);

	public List<HashMap<String, Object>> getBoardFileList(HashMap<String, Object> hMap);

	public void updProc(BoardCommonDTO bDTO);

	public void deleteFile(BoardCommonDTO bDTO);

	public void deleteBoard(BoardCommonDTO bDTO);

	public void deleteFileName(String parameter);

	public List<HashMap<String, Object>> getScFileList(HashMap<String, Object> hMap);

	
}
