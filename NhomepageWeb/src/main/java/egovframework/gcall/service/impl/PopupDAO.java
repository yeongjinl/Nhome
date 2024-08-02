package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("PopupDAO")
public class PopupDAO extends EgovComAbstractDAO {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> popupList(Map<String, Object> hMap) throws Exception {
		return selectList("PopupDAO.popupList", hMap);
	}
	public void popupinsert(Map<String, Object> hMap) throws Exception {
		insert("PopupDAO.popupinsert", hMap);
	}
	public void popupupdate(Map<String, Object> hMap) throws Exception {
		update("PopupDAO.popupupdate", hMap);
	}
	public List<HashMap<String, Object>> popupDetail(int param) throws Exception {
		return selectList("PopupDAO.popupDetail", param);
	}
}
