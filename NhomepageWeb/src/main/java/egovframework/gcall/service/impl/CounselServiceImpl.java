package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.service.CounselService;
import egovframework.gcall.service.OtherService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("CounselService")
public class CounselServiceImpl extends EgovAbstractServiceImpl implements CounselService {
	
	@Resource(name = "CounselDAO")
	private CounselDAO  counselDAO;
	
	@Override
	public List<HashMap<String, Object>> counselList(Map<String, Object> hMap) throws Exception {
		List<HashMap<String, Object>> result = counselDAO.counselList(hMap);
		return result;
	}

	@Override
	public void counselInsert(Map<String, Object> hMap) throws Exception {
		counselDAO.counselinsert(hMap);
	}

	@Override
	public void counselUpdate(Map<String, Object> hMap) throws Exception {
		counselDAO.counselupdate(hMap);
	}

	@Override
	public List<HashMap<String, Object>> counselDetail(int param) throws Exception {
		List<HashMap<String, Object>> result = counselDAO.counselDetail(param);
		return result;
	}

	@Override
	public List<HashMap<String, Object>> bdayCheck(Map<String, Object> hMap) throws Exception {
		List<HashMap<String, Object>> result = counselDAO.bdayCheck(hMap);
		return result;
	}
	
	@Override
	public List<HashMap<String, Object>> rdayCheck(Map<String, Object> hMap) throws Exception {
		List<HashMap<String, Object>> result = counselDAO.rdayCheck(hMap);
		return result;
	}
	
}
