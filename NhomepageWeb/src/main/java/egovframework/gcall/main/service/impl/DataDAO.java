package egovframework.gcall.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("DataDAO")
public class DataDAO extends EgovComAbstractDAO {
	
	public int contactListCount(Map<String, Object> map) {

		return selectOne("DataDAO.contactListCount", map);
	}
	
	public List<HashMap<String, Object>> contactList(Map<String, Object> map) {

		return selectList("DataDAO.contactList", map);
	}
	
	public void contactReadCount(Map<String, Object> map) {
		
		update("DataDAO.contactReadCount", map);
	}
	
	public List<HashMap<String, Object>> contactDetail(Map<String, Object> map) {
		
		return selectList("DataDAO.contactDetail", map);
	}
	
	public List<HashMap<String, Object>> contactFileDetail(Map<String, Object> map) {
		
		return selectList("DataDAO.contactFileDetail", map);
	}
	
	public int contactPrevCount(Map<String, Object> map) {
		
		return selectOne("DataDAO.contactPrevCount", map);
	}
	
	public int contactNextCount(Map<String, Object> map) {
		
		return selectOne("DataDAO.contactNextCount", map);
	}
	
	public List<HashMap<String, Object>> contactPrev(Map<String, Object> map) {
		
		return selectList("DataDAO.contactPrev", map);
	}

	public List<HashMap<String, Object>> contactNext(Map<String, Object> map) {
		
		return selectList("DataDAO.contactNext", map);
	}
	
	public List<HashMap<String, Object>> contactFile(Map<String, Object> map) {
		
		return selectList("DataDAO.contactFile", map);
	}
}
