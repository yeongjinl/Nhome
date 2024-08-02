package egovframework.gcall.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("MainDAO")
public class MainDAO extends EgovComAbstractDAO {
	
	public void visitIncrement(Map<String, Object> map) {
		update("MainDAO.visitIncrement", map);
	}
	
	public void visitMobileIncrement(Map<String, Object> map) {
		update("MainDAO.visitMobileIncrement", map);
	}
	
	public void visitMobilePageIncrement(Map<String, Object> map) {
		update("MainDAO.visitMobilePageIncrement", map);
	}
	
	public List<HashMap<String, Object>> popupZoneList(Map<String, Object> map) {
		
		return selectList("MainDAO.popupZoneList", map);
	}
	
	public List<HashMap<String, Object>> popupIdList(Map<String, Object> map) {
		
		return selectList("MainDAO.popupIdList", map);
	}
	
	public List<HashMap<String, Object>> popupDetail(Map<String, Object> map) {
		
		return selectList("MainDAO.popupDetail", map);
	}
	
	public List<HashMap<String, Object>> centerList() {

		return selectList("MainDAO.centerList");
	}
	
	public int boardListCount(Map<String, Object> map) {

		return selectOne("MainDAO.boardListCount", map);
	}
	
	public List<HashMap<String, Object>> boardList(Map<String, Object> map) {

		return selectList("MainDAO.boardList", map);
	}
	
	public void boardReadCount(Map<String, Object> map) {
		
		update("MainDAO.boardReadCount", map);
	}
	
	public List<HashMap<String, Object>> boardDetail(Map<String, Object> map) {
		
		return selectList("MainDAO.boardDetail", map);
	}
	
	public List<HashMap<String, Object>> boardFileDetail(Map<String, Object> map) {
		
		return selectList("MainDAO.boardFileDetail", map);
	}
	
	public int boardPrevCount(Map<String, Object> map) {
		
		return selectOne("MainDAO.boardPrevCount", map);
	}
	
	public int boardNextCount(Map<String, Object> map) {
		
		return selectOne("MainDAO.boardNextCount", map);
	}
	
	public List<HashMap<String, Object>> boardPrev(Map<String, Object> map) {
		
		return selectList("MainDAO.boardPrev", map);
	}

	public List<HashMap<String, Object>> boardNext(Map<String, Object> map) {
		
		return selectList("MainDAO.boardNext", map);
	}
	
	public List<HashMap<String, Object>> boardFile(Map<String, Object> map) {
		
		return selectList("MainDAO.boardFile", map);
	}
}
