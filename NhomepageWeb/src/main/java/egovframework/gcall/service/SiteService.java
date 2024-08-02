package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.antlr.grammar.v3.ANTLRParser.exceptionGroup_return;


public interface SiteService {

	//codetype 가져오기
//	List<HashMap<String, Object>> getCodeType(Map<String, Object> map)throws Exception;
	List<HashMap<String, Object>> getCodeType()throws Exception;

	List<HashMap<String, Object>> getCodeBook(Map<String, Object> map)throws Exception;

	int insertCodeType(Map<String, Object> map)throws Exception;

	int deleteCodeType(Map<String, Object> map)throws Exception;

	int insertCodebook(Map<String, Object> map)throws Exception;

	int updateCodeType(Map<String, Object> map)throws Exception;

	int updateCodebook(Map<String, Object> map)throws Exception;

	String getCodeName(Map<String, Object> map)throws Exception;
	/*sjs 수정부분*/

}
