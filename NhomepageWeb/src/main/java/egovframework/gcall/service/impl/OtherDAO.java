package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("OtherDAO")
public class OtherDAO extends EgovComAbstractDAO {

	/*sjs 수정부분*/
    public List<HashMap<String, Object>> statConnectCount(Map<String, Object> map) throws Exception {
    	return selectList("OtherDAO.statConnectCount", map);
    }

    public List<HashMap<String, Object>> statConnectCountSum(Map<String, Object> map) throws Exception {
    	return selectList("OtherDAO.statConnectCountSum", map);
    }

    public List<HashMap<String, Object>> statConnectMonthSum(Map<String, Object> map) throws Exception {
    	return selectList("OtherDAO.statConnectMonthSum", map);
    }
}
