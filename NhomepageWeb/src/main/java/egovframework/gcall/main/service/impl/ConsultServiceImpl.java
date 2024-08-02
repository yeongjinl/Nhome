package egovframework.gcall.main.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.main.service.ConsultService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("ConsultService")
public class ConsultServiceImpl extends EgovAbstractServiceImpl implements ConsultService {
	
	@Resource(name = "ConsultDAO")
	private ConsultDAO consultDAO;
	
	@Override
	public List<HashMap<String, Object>> selectHoliday() throws Exception {

		return consultDAO.selectHoliday();
	}
	
	@Override
	public List<HashMap<String, Object>> selectBusiness() throws Exception {

		return consultDAO.selectBusiness();
	}
	
	@Override
	public void insertSmsLog(Map<String, Object> map) throws Exception {

		consultDAO.insertSmsLog(map);
	}

	@Override
	public void insertReservationLog(Map<String, Object> map) throws Exception {

		consultDAO.insertReservationLog(map);
	}

}
