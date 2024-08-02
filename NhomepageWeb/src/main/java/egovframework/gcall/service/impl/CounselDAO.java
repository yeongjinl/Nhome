package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("CounselDAO")
public class CounselDAO extends EgovComAbstractDAO {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> counselList(Map<String, Object> hMap) throws Exception {
		return selectList("CounselDAO.counselList", hMap);
	}
	public void counselinsert(Map<String, Object> hMap) throws Exception {
		insert("CounselDAO.counselInsert", hMap);
	}
	public void counselupdate(Map<String, Object> hMap) throws Exception {
		update("CounselDAO.counselUpdate", hMap);
	}
	public List<HashMap<String, Object>> counselDetail(int param) throws Exception {
		return selectList("CounselDAO.counselDetail", param);
	}
	public List<HashMap<String, Object>> bdayCheck(Map<String, Object> hMap) throws Exception {
		return selectList("CounselDAO.bdayCheck", hMap);
	}
	public List<HashMap<String, Object>> rdayCheck(Map<String, Object> hMap) throws Exception {
		return selectList("CounselDAO.rdayCheck", hMap);
	}
}
