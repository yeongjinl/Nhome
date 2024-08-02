package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.dto.LgnHistoryDTO2;
import egovframework.gcall.service.AdminService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("AdminService")
public class AdminServiceImpl extends EgovAbstractServiceImpl implements AdminService {

	@Resource(name = "AdminDAO")
	private AdminDAO adminDAO;
	/*sjs 수정부분*/
	@Override
	public List<HashMap<String, Object>> adminLoginYn2(Map<String, Object> map) throws Exception {

		List<HashMap<String, Object>> result = adminDAO.adminLoginYn2(map);

		return result;
	}
	@Override
	public void subManagerInsert(String user_id) throws Exception {
		adminDAO.subManagerInsert(user_id);
	}
	@Override
	public void subManagerUpdate(Map<String, Object> map) throws Exception {
		adminDAO.subManagerUpdate(map);
	}
	@Override
	public int subManagerListCount(Map<String, Object> lMap) throws Exception {
		int result = adminDAO.subManagerListCount(lMap);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> subManagerList(Map<String, Object> hMap) throws Exception {
		List<HashMap<String, Object>> result = adminDAO.subManagerList(hMap);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> userDetail(String user_id) throws Exception {
		List<HashMap<String, Object>> result = adminDAO.userDetail(user_id);
		return result;
	}
	@Override
	public void expirationPwdUpd(Map<String, Object> map) throws Exception {
		adminDAO.expirationPwdUpd(map);
	}
	@Override
	public void expirationPwdUpdTB(Map<String, Object> map) throws Exception {
		adminDAO.expirationPwdUpdTB(map);
	}
	@Override
	public void loginDateUpdate(Map<String, Object> map) throws Exception {
		adminDAO.loginDateUpdate(map);
	}
	@Override
	public int logoutDateUpdate(Map<String, Object> map) throws Exception {
		return adminDAO.logoutDateUpdate(map);
	}
	@Override
	public int userExistenceChk(Map<String, Object> map) throws Exception {
		int result = adminDAO.userExistenceChk(map);
		return result;
	}
	@Override
	public int userLoginChk(Map<String, Object> map) throws Exception {
		int result = adminDAO.userLoginChk(map);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> TBUserSession(Map<String, Object> map) throws Exception {
		return adminDAO.TBUserSession(map);
	}
	@Override
	public List<HashMap<String, Object>> HPUserSession(Map<String, Object> map) throws Exception {
		return adminDAO.HPUserSession(map);
	}
	@Override
	public int userDetailCount(String user_id) throws Exception {
		return adminDAO.userDetailCount(user_id);
	}
	
	
	
	/*원본*/
//	@Override
//	public List<HashMap<String, Object>> commonMenuTopSelect(Map<String, Object> map) throws Exception {
//		List<HashMap<String, Object>> result = adminDAO.commonMenuTopSelect(map);
//		return result;
//	}
	@Override
	public List<HashMap<String, Object>> statConnectCount(Map<String, Object> map) throws Exception {
		List<HashMap<String, Object>> result = adminDAO.statConnectCount(map);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> statConnectCountSum(Map<String, Object> map) throws Exception {
		List<HashMap<String, Object>> result = adminDAO.statConnectCountSum(map);
		return result;
	}
	@Override
	public List<HashMap<String, Object>> statConnectMonthSum(Map<String, Object> map) throws Exception {
		List<HashMap<String, Object>> result = adminDAO.statConnectMonthSum(map);
		return result;
	}
	@Override
	public void pwFailedCountUpdate(Map<String, Object> fMap) throws Exception {
		adminDAO.pwFailedCountUpdate(fMap);
	}
	@Override
	public int pwFailedCountSelect(Map<String, Object> fMap) throws Exception {
		return adminDAO.pwFailedCountSelect(fMap);
	}
	@Override
	public void lgnHstr2Insert(LgnHistoryDTO2 lgnHstr) throws Exception {
		adminDAO.lgnHstr2Insert(lgnHstr);
	}
	@Override
	public void passwordCountCheckInitialize(String loginID) throws Exception {
		adminDAO.passwordCountCheckInitialize(loginID);
	}
	
	
}
