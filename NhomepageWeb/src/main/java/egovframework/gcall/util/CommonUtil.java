package egovframework.gcall.util;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

public class CommonUtil {
	private Map<String, List<Integer>> confIdMap;
	
	public CommonUtil() {
	}
	
	public Map<String, List<Integer>> getConfIdList() {
		confIdMap = new HashMap<String, List<Integer>>();
		confIdMap.put("notice", new ArrayList<Integer>(Arrays.asList(51)));
		confIdMap.put("news", new ArrayList<Integer>(Arrays.asList(4)));
		confIdMap.put("promotion", new ArrayList<Integer>(Arrays.asList(5, 6)));
		
		confIdMap.put("story", new ArrayList<Integer>(Arrays.asList(9)));
		confIdMap.put("faq", new ArrayList<Integer>(Arrays.asList(10)));
		
		return confIdMap;
	}
	
	public static String requestReplace (String paramValue, String gubun) {

        String result = "";
        
        if (paramValue != null) {
        	paramValue = paramValue.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
        	paramValue = paramValue.replaceAll("\\*", "");
        	paramValue = paramValue.replaceAll("\\?", "");
        	paramValue = paramValue.replaceAll("\\[", "");
        	paramValue = paramValue.replaceAll("\\{", "");
        	paramValue = paramValue.replaceAll("\\(", "");
        	paramValue = paramValue.replaceAll("\\)", "");
        	paramValue = paramValue.replaceAll("\\^", "");
        	paramValue = paramValue.replaceAll("\\$", "");
        	paramValue = paramValue.replaceAll("'", "");
        	paramValue = paramValue.replaceAll("@", "");
        	paramValue = paramValue.replaceAll("%", "");
        	paramValue = paramValue.replaceAll(";", "");
        	paramValue = paramValue.replaceAll(":", "");
        	paramValue = paramValue.replaceAll("-", "");
        	paramValue = paramValue.replaceAll("#", "");
        	paramValue = paramValue.replaceAll("--", "");
        	paramValue = paramValue.replaceAll("-", "");
        	paramValue = paramValue.replaceAll(",", "");
        	
        	if(gubun != "encodeData"){
        		paramValue = paramValue.replaceAll("\\+", "");
        		paramValue = paramValue.replaceAll("/", "");
        		paramValue = paramValue.replaceAll("=", "");
        	}
        	
        	result = paramValue;
        }
        
        return result;
  }
	 public static String getRequestPath(HttpServletRequest poRequest){
	        String returnVal="";
	        String os = System.getProperty("os.name").toLowerCase();
	        //윈도우(개발환경)
	        if(os.indexOf("win")>=0){
	            returnVal = poRequest.getServletPath();

	        //linux는 운영환경
	        } else if(os.indexOf("nix")>=0 || os.indexOf("nux")>=0 || os.indexOf("aix")>=0){
	            returnVal = poRequest.getPathInfo();
	        }
	        return returnVal;
	    }
	
//	public static void main(String args[]) throws ParseException {
//		String tel = "0102232223";
//		tel = tel.replaceAll("-", "");
//		String patternStr = "\\d{3}\\d{3,4}\\d{4}"; // 휴대폰 번호규칙을 패턴으로 저장
//		
//		Pattern pattern = Pattern.compile(patternStr);
//		Matcher matcher = pattern.matcher(tel);
//		
//		if(matcher.matches()) {
//			System.out.println("올바른 휴대폰 번호");
//		} else {
//			System.out.println("잘못된 휴대폰 번호");
//		}
//		
//	}
}
