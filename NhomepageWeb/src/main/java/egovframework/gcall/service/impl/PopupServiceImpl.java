package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.service.PopupService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("PopupService")
public class PopupServiceImpl extends EgovAbstractServiceImpl implements PopupService {

	@Resource(name = "PopupDAO")
	private PopupDAO popupDAO;
	/*sjs 수정부분*/
	@Override
	public List<HashMap<String, Object>> popupList(Map<String, Object> hMap) throws Exception {
		List<HashMap<String, Object>> result = popupDAO.popupList(hMap);
		return result;
	}
	@Override
	public void popupinsert(Map<String, Object> hMap) throws Exception {
		popupDAO.popupinsert(hMap);
	}
	@Override
	public void popupupdate(Map<String, Object> hMap) throws Exception {
		popupDAO.popupupdate(hMap);
	}
	@Override
	public List<HashMap<String, Object>> popupDetail(int param) throws Exception {
		List<HashMap<String, Object>> result = popupDAO.popupDetail(param);
		return result;
	}
}
