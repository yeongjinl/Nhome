package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public interface PopupService {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> popupList(Map<String, Object> hMap) throws Exception;
	public void popupinsert(Map<String, Object> hMap) throws Exception;
	public void popupupdate(Map<String, Object> hMap) throws Exception;
	public List<HashMap<String, Object>> popupDetail(int param) throws Exception;
}
