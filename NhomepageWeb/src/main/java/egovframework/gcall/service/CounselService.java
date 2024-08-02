package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public interface CounselService {

	public List<HashMap<String, Object>> counselList(Map<String, Object> hMap) throws Exception;
	public void counselInsert(Map<String, Object> hMap) throws Exception;
	public void counselUpdate(Map<String, Object> hMap) throws Exception;
	public List<HashMap<String, Object>> counselDetail(int param) throws Exception;
	public List<HashMap<String, Object>> bdayCheck(Map<String, Object> hMap) throws Exception;
	public List<HashMap<String, Object>> rdayCheck(Map<String, Object> hMap) throws Exception;
}
