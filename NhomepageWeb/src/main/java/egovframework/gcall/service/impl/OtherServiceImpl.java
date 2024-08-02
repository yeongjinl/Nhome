package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.service.OtherService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("OtherService")
public class OtherServiceImpl extends EgovAbstractServiceImpl implements OtherService {

	@Resource(name = "OtherDAO")
	private OtherDAO otherDAO;
	/*sjs 수정부분*/
	@Override
	public List<HashMap<String, Object>> statConnectCount(Map<String, Object> map) throws Exception {
		List<HashMap<String, Object>> result = otherDAO.statConnectCount(map);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> statConnectCountSum(Map<String, Object> map) throws Exception {
		List<HashMap<String, Object>> result = otherDAO.statConnectCountSum(map);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> statConnectMonthSum(Map<String, Object> map) throws Exception {
		List<HashMap<String, Object>> result = otherDAO.statConnectMonthSum(map);
		return result;
	}
}
