package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.service.MainService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("MainService2")
public class MainServiceImpl extends EgovAbstractServiceImpl implements MainService {

	@Resource(name = "MainDAO2")
	private MainDAO mainDAO2;
	
	@Override
	public List<HashMap<String, Object>> commonMenuSideSubSelect(Map<String, Object> map) throws Exception {
		
		List<HashMap<String, Object>> result = mainDAO2.commonMenuSideSubSelect(map);
		
		return result;
	}
	
}
