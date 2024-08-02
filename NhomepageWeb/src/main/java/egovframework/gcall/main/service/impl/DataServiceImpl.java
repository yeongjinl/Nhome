package egovframework.gcall.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.main.service.DataService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("DataService")
public class DataServiceImpl extends EgovAbstractServiceImpl implements DataService {

	@Resource(name = "DataDAO")
	private DataDAO dataDAO;
	
	@Override
	public int contactListCount(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactListCount(map);
	}

	@Override
	public List<HashMap<String, Object>> contactList(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactList(map);
	}
	
	@Override
	public void contactReadCount(Map<String, Object> map) throws Exception {

		dataDAO.contactReadCount(map);
	}

	@Override
	public List<HashMap<String, Object>> contactDetail(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactDetail(map);
	}
	
	@Override
	public List<HashMap<String, Object>> contactFileDetail(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactFileDetail(map);
	}
	
	@Override
	public List<HashMap<String, Object>> contactPrev(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactPrev(map);
	}

	@Override
	public List<HashMap<String, Object>> contactNext(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactNext(map);
	}
	
	@Override
	public List<HashMap<String, Object>> contactFile(Map<String, Object> map) throws Exception {
		
		return dataDAO.contactFile(map);
	}
}
