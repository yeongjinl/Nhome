package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public interface OtherService {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> statConnectCount(Map<String, Object> map) throws Exception;
	public List<HashMap<String, Object>> statConnectCountSum(Map<String, Object> map) throws Exception;
	public List<HashMap<String, Object>> statConnectMonthSum(Map<String, Object> map) throws Exception;
}
