package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.gcall.dto.LgnHistoryDTO2;


public interface AdminService {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> adminLoginYn2(Map<String, Object> map) throws Exception;
	public void subManagerInsert(String user_id) throws Exception;
	public void subManagerUpdate(Map<String, Object> map) throws Exception;
	public int subManagerListCount(Map<String, Object> lMap) throws Exception;
	public List<HashMap<String, Object>> subManagerList(Map<String, Object> hMap) throws Exception;
	public List<HashMap<String, Object>> userDetail(String user_id) throws Exception;
	public void expirationPwdUpd(Map<String, Object> map) throws Exception;
	public void expirationPwdUpdTB(Map<String, Object> map) throws Exception;
	public void loginDateUpdate(Map<String, Object> map) throws Exception;
	public int logoutDateUpdate(Map<String, Object> map) throws Exception;
	public int userExistenceChk(Map<String, Object> map)throws Exception;
	public int userLoginChk(Map<String, Object> map)throws Exception;
	public List<HashMap<String, Object>> TBUserSession(Map<String, Object> map)throws Exception;
	public List<HashMap<String, Object>> HPUserSession(Map<String, Object> map)throws Exception;
	public int userDetailCount(String user_id)throws Exception;

   

	/*원본*/
	//public List<HashMap<String, Object>> commonMenuTopSelect(Map<String, Object> map) throws Exception;
	public List<HashMap<String, Object>> statConnectCount(Map<String, Object> map) throws Exception;
	public List<HashMap<String, Object>> statConnectCountSum(Map<String, Object> map) throws Exception;
	public List<HashMap<String, Object>> statConnectMonthSum(Map<String, Object> map) throws Exception;
	public void pwFailedCountUpdate(Map<String, Object> fMap) throws Exception;
	public int pwFailedCountSelect(Map<String, Object> fMap) throws Exception;
	public void lgnHstr2Insert(LgnHistoryDTO2 lgnHstr) throws Exception;
	public void passwordCountCheckInitialize(String loginID) throws Exception;
}
