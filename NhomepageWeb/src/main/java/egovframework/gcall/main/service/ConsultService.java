package egovframework.gcall.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ConsultService {

	public List<HashMap<String, Object>> selectHoliday() throws Exception;
	
	public List<HashMap<String, Object>> selectBusiness() throws Exception;
	
	public void insertSmsLog(Map<String, Object> map) throws Exception;
	
	public void insertReservationLog(Map<String, Object> map) throws Exception;
}
