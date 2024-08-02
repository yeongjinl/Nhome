package egovframework.gcall.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.main.service.MainService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("MainService")
public class MainServiceImpl extends EgovAbstractServiceImpl implements MainService {
	
	@Resource(name = "MainDAO")
	private MainDAO mainDAO;
	
	@Override
	public void visitIncrement(Map<String, Object> map) throws Exception {
		
		mainDAO.visitIncrement(map);
	}
	
	@Override
	public void visitMobileIncrement(Map<String, Object> map) throws Exception {
		
		mainDAO.visitMobileIncrement(map);
	}
	
	@Override
	public void visitMobilePageIncrement(Map<String, Object> map) throws Exception {
		
		mainDAO.visitMobilePageIncrement(map);
	}
	
	@Override
	public List<HashMap<String, Object>> popupZoneList(Map<String, Object> map) throws Exception {

		return mainDAO.popupZoneList(map);
	}
	
	@Override
	public List<HashMap<String, Object>> popupIdList(Map<String, Object> map) throws Exception {

		return mainDAO.popupIdList(map);
	}

	@Override
	public List<HashMap<String, Object>> popupDetail(Map<String, Object> map) throws Exception {

		return mainDAO.popupDetail(map);
	}
	
	@Override
	public List<HashMap<String, Object>> centerList() throws Exception {
		
		return mainDAO.centerList();
	}
	
	@Override
	public int boardListCount(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardListCount(map);
	}

	@Override
	public List<HashMap<String, Object>> boardList(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardList(map);
	}
	
	@Override
	public void boardReadCount(Map<String, Object> map) throws Exception {

		mainDAO.boardReadCount(map);
	}

	@Override
	public List<HashMap<String, Object>> boardDetail(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardDetail(map);
	}
	
	@Override
	public List<HashMap<String, Object>> boardFileDetail(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardFileDetail(map);
	}
	
	@Override
	public int boardPrevCount(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardPrevCount(map);
	}
	
	@Override
	public int boardNextCount(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardNextCount(map);
	}

	@Override
	public List<HashMap<String, Object>> boardPrev(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardPrev(map);
	}

	@Override
	public List<HashMap<String, Object>> boardNext(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardNext(map);
	}
	
	@Override
	public List<HashMap<String, Object>> boardFile(Map<String, Object> map) throws Exception {
		
		return mainDAO.boardFile(map);
	}
}
