package egovframework.gcall.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface DataService {
	
	public int contactListCount(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> contactList(Map<String, Object> map) throws Exception;
	
	public void contactReadCount(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> contactDetail(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> contactFileDetail(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> contactPrev(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> contactNext(Map<String, Object> map) throws Exception;
	
	public List<HashMap<String, Object>> contactFile(Map<String, Object> map) throws Exception;
}
