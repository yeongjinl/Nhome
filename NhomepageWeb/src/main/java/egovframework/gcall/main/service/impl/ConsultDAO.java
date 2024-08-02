package egovframework.gcall.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("ConsultDAO")
public class ConsultDAO extends EgovComAbstractDAO {
	
	public List<HashMap<String, Object>> selectHoliday() {
		
		return selectList("ConsultDAO.selectHoliday");
	}
	
	public List<HashMap<String, Object>> selectBusiness() {
		
		return selectList("ConsultDAO.selectBusiness");
	}
	
	public void insertSmsLog(Map<String, Object> map) {
		
		insert("ConsultDAO.insertSmsLog", map);
	}
	
	public void insertReservationLog(Map<String, Object> map) {
		
		insert("ConsultDAO.insertReservationLog", map);
	}
}
