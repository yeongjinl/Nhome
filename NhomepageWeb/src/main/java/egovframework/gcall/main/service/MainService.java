package egovframework.gcall.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface MainService {
	
	public void visitIncrement(Map<String, Object> map) throws Exception;
	
	public void visitMobileIncrement(Map<String, Object> map) throws Exception;
	
	public void visitMobilePageIncrement(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> popupZoneList(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> popupIdList(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> popupDetail(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> centerList() throws Exception;
	
	public int boardListCount(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> boardList(Map<String, Object> map) throws Exception;
	
	public void boardReadCount(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> boardDetail(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> boardFileDetail(Map<String, Object> map) throws Exception;
	
	public int boardPrevCount(Map<String, Object> map) throws Exception;
	
	public int boardNextCount(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> boardPrev(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> boardNext(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> boardFile(Map<String, Object> map) throws Exception;
}
