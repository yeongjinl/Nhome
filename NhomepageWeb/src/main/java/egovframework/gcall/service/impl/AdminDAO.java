package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.LgnHistoryDTO2;

@Repository("AdminDAO")
public class AdminDAO extends EgovComAbstractDAO {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> adminLoginYn2(Map<String, Object> map) throws Exception {
		return selectList("AdminDAO.adminLoginYn2", map);
	}
    public void subManagerInsert(String user_id) throws Exception {
    	insert("AdminDAO.subManagerInsert", user_id);
    }
    public void subManagerUpdate(Map<String, Object> map) throws Exception {
    	update("AdminDAO.subManagerUpdate", map);
    }
    public int subManagerListCount(Map<String, Object> lMap) throws Exception {
    	return selectOne("AdminDAO.subManagerListCount", lMap);
    }
    public List<HashMap<String, Object>> subManagerList(Map<String, Object> hMap) throws Exception {
    	return selectList("AdminDAO.subManagerList", hMap);
    }
    public List<HashMap<String, Object>> userDetail(String user_id) throws Exception {
    	return selectList("AdminDAO.userDetail", user_id);
    }
    public void expirationPwdUpd(Map<String, Object> map) throws Exception {
    	update("AdminDAO.expirationPwdUpd", map);
    }
    public void expirationPwdUpdTB(Map<String, Object> map) throws Exception {
    	update("AdminDAO.expirationPwdUpdTB", map);
    }
    public void loginDateUpdate(Map<String, Object> map) throws Exception {
    	update("AdminDAO.loginDateUpdate", map);
    }
    public int logoutDateUpdate(Map<String, Object> map) throws Exception {
    	return update("AdminDAO.logoutDateUpdate", map);
    }
	public int userExistenceChk(Map<String, Object> map) throws Exception {
		return selectOne("AdminDAO.userExistenceChk", map);
	}
	public int userLoginChk(Map<String, Object> map) throws Exception {
		return selectOne("AdminDAO.userLoginChk", map);
	}
	public List<HashMap<String, Object>> TBUserSession(Map<String, Object> map) throws Exception {
		return selectList("AdminDAO.TBUserSession", map);
	}
	public List<HashMap<String, Object>> HPUserSession(Map<String, Object> map) throws Exception {
		return selectList("AdminDAO.HPUserSession", map);
	}
	public int userDetailCount(String user_id) throws Exception {
		return selectOne("AdminDAO.userDetailCount", user_id);
	}
	/*원본*/
//    public List<HashMap<String, Object>> commonMenuTopSelect(Map<String, Object> map) throws Exception {
//    	return selectList("AdminDAO.commonMenuTopSelect", map);
//    }

    public List<HashMap<String, Object>> statConnectCount(Map<String, Object> map) throws Exception {
    	return selectList("AdminDAO.statConnectCount", map);
    }

    public List<HashMap<String, Object>> statConnectCountSum(Map<String, Object> map) throws Exception {
    	return selectList("AdminDAO.statConnectCountSum", map);
    }

    public List<HashMap<String, Object>> statConnectMonthSum(Map<String, Object> map) throws Exception {
    	return selectList("AdminDAO.statConnectMonthSum", map);
    }
	public void pwFailedCountUpdate(Map<String, Object> fMap) throws Exception {
    	update("AdminDAO.pwFailedCountUpdate", fMap);
	}
	public int pwFailedCountSelect(Map<String, Object> fMap) throws Exception {
		return selectOne("AdminDAO.pwFailedCountSelect", fMap);
	}
	public void lgnHstr2Insert(LgnHistoryDTO2 lgnHstr) throws Exception {
		update("AdminDAO.lgnHstr2Insert", lgnHstr);
	}
	public void passwordCountCheckInitialize(String loginID) throws Exception {
		update("AdminDAO.passwordCountCheckInitialize", loginID);
	}
}
