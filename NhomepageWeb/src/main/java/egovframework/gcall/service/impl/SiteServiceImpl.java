package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.service.OtherService;
import egovframework.gcall.service.SiteService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("SiteService")
public class SiteServiceImpl extends EgovAbstractServiceImpl implements SiteService {

	@Resource(name = "SiteDAO")
	private SiteDAO siteDAO;
	/*sjs 수정부분*/
	/*
	 * @Override public List<HashMap<String, Object>>
	 * statConnectMonthSum(Map<String, Object> map) throws Exception {
	 * List<HashMap<String, Object>> result = otherDAO.statConnectMonthSum(map);
	 * return result; }
	 */

	//코드 타입 select
//	@Override
//	public List<HashMap<String, Object>> getCodeType(Map<String, Object> map) throws Exception {
//
//		List<HashMap<String, Object>> result = siteDAO.getCodeType(map);
//		return result;
//	}
	@Override
	public List<HashMap<String, Object>> getCodeType() throws Exception {

		List<HashMap<String, Object>> result = siteDAO.getCodeType();
		return result;
	}

	//코드북 select
	@Override
	public List<HashMap<String, Object>> getCodeBook(Map<String, Object> map) throws Exception {

		List<HashMap<String, Object>> result = siteDAO.getCodeBook(map);

		return result;
	}

	@Override
	public int insertCodeType(Map<String, Object> map) throws Exception {
		int res = siteDAO.insertCodeType(map);
		return res;
	}

	@Override
	public int deleteCodeType(Map<String, Object> map) throws Exception {
		int res = siteDAO.deleteCodeType(map);
		return res;
	}

	@Override
	public int insertCodebook(Map<String, Object> map) throws Exception {
		int res = siteDAO.insertCodebook(map);
		return res;
	}

	@Override
	public int updateCodeType(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return siteDAO.updateCodeType(map);
	}

	@Override
	public int updateCodebook(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return siteDAO.updateCodebook(map);
	}
	
	@Override
	public String getCodeName(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return siteDAO.getCodeName(map);
	}
}
