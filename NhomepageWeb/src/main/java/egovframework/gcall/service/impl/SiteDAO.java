package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("SiteDAO")
public class SiteDAO extends EgovComAbstractDAO {

//	public List<HashMap<String, Object>> getCodeType(Map<String, Object> map) {
//		return selectList("SiteDAO.getCodeType",map);
//	}
	public List<HashMap<String, Object>> getCodeType() {
		return selectList("SiteDAO.getCodeType");
	}

	public List<HashMap<String, Object>> getCodeBook(Map<String, Object> map) {
		return selectList("SiteDAO.getCodeBook",map);
	}

	public int insertCodeType(Map<String, Object> map) {
		return insert("SiteDAO.insertCodeType", map);
	}

	public int deleteCodeType(Map<String, Object> map) {
		return delete("SiteDAO.deleteCodeType", map);
	}

	public int insertCodebook(Map<String, Object> map) {
		return insert("SiteDAO.insertCodebook", map);
	}

	public int updateCodeType(Map<String, Object> map) {
		return update("SiteDAO.updateCodeType", map);
	}

	public int updateCodebook(Map<String, Object> map) {
		return update("SiteDAO.updateCodebook", map);
	}

	public String getCodeName(Map<String, Object> map) {
		return selectOne("SiteDAO.getCodeBookNm", map);
	}

}
