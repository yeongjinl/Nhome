package egovframework.gcall.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import java.util.ArrayList;
import java.util.Iterator;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import egovframework.com.cmm.service.Globals;
import egovframework.com.utl.fcc.service.EgovStringUtil;
import egovframework.gcall.dto.ApiCounselKeywordDTO;
import egovframework.gcall.dto.ApiKeywordRankDTO;
import egovframework.gcall.dto.ApiRisingSuddenKeywordDTO;
import egovframework.gcall.service.ApiService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.v3.oas.annotations.Operation;


/**
 * 
 * [모범상담사례 연계]
 * http://192.168.90.91:8081/api/languge/lget/tbLnaguageResource?intt_cd=1390000
 * 
 * [상담 키워드 트렌드 연계]
 * http://192.168.90.91:8081/api/ta/count/keyword/by/day?intt_cd=1390000&index_names=tb_cons_meta_hstr&date_from=2023-09-22&date_duration=7
 * 
 * [키워드 연관어 연계]
 * http://192.168.90.91:8081/api/ta/topicrank/result?index_names=tb_cons_meta_hstr&date_from=2024-05-22&date_to=2024-05-28&intt_cd=1390000
 * 
 * [급상승 키워드 연계] 
 * http://192.168.90.91:8081/api/dashboard/rank/rising?index_names=tb_cons_meta_hstr&intt_cd=1390000&date_from=2023-09-22&day_count=1&top_rank=5&rank_type=RISING_SUDDEN
 * 
 * [키워드 랭킹 연계]
 * http://192.168.90.91:8081/api/dashboard/rank/top?intt_cd=1390000&date_from=2023-09-22&day_count=1&top_rank=5&rank_type=RISING
 * 
 * */


@RestController
@RequestMapping(value = "/api")
public class ApiController {
	
	@Resource(name = "ApiService")
	private ApiService apiService;


	
	@ApiOperation(value = "api호출 ", notes="type : {tbLnaguageResource-모범상담사례,day-상담키워드,result-키워드연관어,rising-급상승키워드,top-키워드랭킹}")
    @GetMapping("/{type}.do")
    public ResponseEntity<String> callForecastApi(
    		  @ApiParam(value = "구분타입") @PathVariable("type")String type
    		, @ApiParam(value = "기관코드")	@RequestParam(value="intt_cd"		, defaultValue="1390000")	String intt_cd
    		, @ApiParam(value = "시작일자")	@RequestParam(value="date_from"		, required = false)			String date_from
    		, @ApiParam(value = "종료일자")	@RequestParam(value="date_to"		, required = false)			String date_to
    		) throws Exception{
    	
        HttpURLConnection urlConnection = null;
        InputStream stream = null;
        String result = null;

        String urlStr = "";
        String paramStr = "?index_names=tb_cons_meta_hstr";
        
        if(type.equals("tbLnaguageResource")) {
        	urlStr = Globals.API_TB_LNAGUAGE_RESOURCE;		// 모범상담사례 연계 URL
        }else if(type.equals("day")) {
        	urlStr = Globals.API_DAY;						// 상담 키워드 트렌드 연계
        }else if(type.equals("result")) {
        	urlStr = Globals.API_RESULT;					// 키워드 연관어 연계
        }else if(type.equals("rising")) {
        	urlStr = Globals.API_RISING;					// 급상승 키워드 연계
        }else if(type.equals("top")) {
        	urlStr = Globals.API_TOP;						// 키워드 랭킹 연계
        }
        
        if(!EgovStringUtil.isEmpty(intt_cd)) {
        	paramStr += "&intt_cd=" + intt_cd;
        }
        if(!EgovStringUtil.isEmpty(date_from)) {
        	paramStr += "&date_from=" + date_from;
        }
        if(!EgovStringUtil.isEmpty(date_to)) {
        	paramStr += "&date_to=" + date_to;
        }
        
        if(type.equals("rising")) {
        	// 급상승 키워드 연계인경우 고정 파라미터 추가 (없으면 결과값 다르게 나옴)
        	paramStr += "&day_count=1&top_rank=5&rank_type=RISING_SUDDEN";
        			
        }else if(type.equals("top")) {
        	// 키워드 랭킹 연계인경우 고정 파라미터 추가 (없으면 결과값 다르게 나옴)
        	paramStr += "&day_count=1&top_rank=5&rank_type=RISING";
        }else if(type.equals("day")) {
        	paramStr += "&date_duration=1";
        }
        
        urlStr = urlStr+ paramStr;
        System.out.println(urlStr);
        
        try {
            URL url = new URL(urlStr);

            urlConnection = (HttpURLConnection) url.openConnection();
            stream = getNetworkConnection(urlConnection);
            result = readStreamToString(stream);

            try {
            	
            	// Rest API로 가져온 데이터를 JSON Parsing해 JSONObject에 넣어준다.
    			JSONObject jsonObj = (JSONObject) new JSONParser().parse(result);
    			JSONObject jsonMap = (JSONObject) jsonObj.get("returnObject");
    			
    			insertReturn(type, date_from, jsonObj, jsonMap);
            	
            } catch (ParseException e) {
            	//e.printStackTrace();
            }
            
            if (stream != null) stream.close();
        } catch(IOException e) {
            e.printStackTrace();
        } finally {
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
        }

        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    /* URLConnection 을 전달받아 연결정보 설정 후 연결, 연결 후 수신한 InputStream 반환 */
    private InputStream getNetworkConnection(HttpURLConnection urlConnection) throws IOException {
        urlConnection.setConnectTimeout(30000);
        urlConnection.setReadTimeout(30000);
        urlConnection.setRequestMethod("GET");
        urlConnection.setDoInput(true);

        if(urlConnection.getResponseCode() != HttpURLConnection.HTTP_OK) {
            throw new IOException("HTTP error code : " + urlConnection.getResponseCode());
        }

        return urlConnection.getInputStream();
    }

    /* InputStream을 전달받아 문자열로 변환 후 반환 */
    private String readStreamToString(InputStream stream) throws IOException{
        StringBuilder result = new StringBuilder();

        BufferedReader br = new BufferedReader(new InputStreamReader(stream, "UTF-8"));

        String readLine;
        while((readLine = br.readLine()) != null) {
            result.append(readLine + "\n\r");
        }

        br.close();

        return result.toString();
    }
    
    @SuppressWarnings("unchecked")
	private void insertReturn(String type, String date_from, JSONObject jsonObj, JSONObject jsonMap) throws Exception {
    	
    	String requestId = (String) jsonObj.get("requestId");
    	
    	// JsonObject(HashMap) Key값 찾아서 ArrayList에 세팅
    	ArrayList<String> keyArray = new ArrayList<>();
    	Iterator<String> iter = jsonMap.keySet().iterator();
    	
    	while(iter.hasNext()) {
    		String key = iter.next();
    		keyArray.add(key);
    	}
    			
    	
    	if(type.equals("tbLnaguageResource")) {	// 모범상담사례 연계 URL
        	
    		
    		
        }
    	else if(type.equals("day")) {			// 상담 키워드 트렌드 연계
    		JSONArray jsonData  = (JSONArray) jsonMap.get("data");
    		JSONArray jsonSum  = (JSONArray) jsonMap.get("sum");
    		JSONArray jsonCategories  = (JSONArray) jsonMap.get("categories");
    		
    		System.out.println((double)jsonData.get(0));
    		ApiCounselKeywordDTO counselKeywordDto = new ApiCounselKeywordDTO();
			
    		counselKeywordDto.setDmndId(requestId);
    		counselKeywordDto.setRsltDat((double)jsonData.get(0));
    		counselKeywordDto.setRsltSum((double)jsonSum.get(0));
    		counselKeywordDto.setConsDt((String)jsonCategories.get(0));
    		// 상담 키워드 트렌드 연계 적재
			apiService.insertCounselKeyword(counselKeywordDto);
        	
        }
        else if(type.equals("result")) {		// 키워드 연관어 연계
        	
    		JSONArray jsonData  = (JSONArray) jsonMap.get("data");
    		JSONArray jsonNodes = (JSONArray) jsonMap.get("nodes");
    		
    		for(Object arr : jsonData) {
				JSONObject obj = (JSONObject) arr; // JSONArray 데이터를 하나씩 가져와 JSONObject로 변환해준다.
			    
			    // 값을 VO에 넣어준다.
				
			}
    		
    		for(Object arr : jsonNodes) {
				JSONObject obj = (JSONObject) arr; // JSONArray 데이터를 하나씩 가져와 JSONObject로 변환해준다.
			    
			    // 값을 VO에 넣어준다.
				
			}
        	
        	
        }
        else if(type.equals("rising")) {		// 급상승 키워드 연계
        	
        	// list Key값 arraylist에 들어 있음. key가 고정값이 아니라서 해당 방법으로 처리
        	for(int i=0; i<keyArray.size(); i++) {
	        	
        		//JSONArray jsonArr = (JSONArray) jsonMap.get("2023.09.22(금) 10시");
        		JSONArray jsonArr = (JSONArray) jsonMap.get(keyArray.get(i));
	        	
				for(Object arr : jsonArr) {
					JSONObject obj = (JSONObject) arr; // JSONArray 데이터를 하나씩 가져와 JSONObject로 변환해준다.
				    
				    // 값을 VO에 넣어준다.
					ApiRisingSuddenKeywordDTO risingSuddenDto = new ApiRisingSuddenKeywordDTO();
					
					risingSuddenDto.setRqstId(requestId);
					risingSuddenDto.setKywd((String) obj.get("term"));
					risingSuddenDto.setWgvlVl((double) obj.get("weight"));
					risingSuddenDto.setRiseRank((double) obj.get("rank"));
					risingSuddenDto.setFrq((double) obj.get("df"));
					risingSuddenDto.setBfrRank((double) obj.get("beforeRank"));
					risingSuddenDto.setScr((double) obj.get("score"));
					
					// 급상승 키워드 연계 적재
					apiService.risingSuddenKeyword(risingSuddenDto);
				}
				
        	}
				
        }
        else if(type.equals("top")) {			// 키워드 랭킹 연계
        	
        	// list Key값 arraylist에 들어 있음. key가 고정값이 아니라서 해당 방법으로 처리
        	for(int i=0; i<keyArray.size(); i++) {
        	
	        	//JSONArray jsonArr = (JSONArray) jsonMap.get("2023.09.22(금)");
        		JSONArray jsonArr = (JSONArray) jsonMap.get(keyArray.get(i));
				
				for(Object arr : jsonArr) {
					JSONObject obj = (JSONObject) arr; // JSONArray 데이터를 하나씩 가져와 JSONObject로 변환해준다.
				    
				    // 값을 VO에 넣어준다.
					ApiKeywordRankDTO keywordRankDto = new ApiKeywordRankDTO();
					
					keywordRankDto.setRqstId(requestId);
					keywordRankDto.setKywd((String) obj.get("term"));
					keywordRankDto.setWgvlVl((double) obj.get("weight"));
					keywordRankDto.setPrord((double) obj.get("rank"));
					keywordRankDto.setFrq((double) obj.get("df"));
					keywordRankDto.setBfrRank((double) obj.get("beforeRank"));
					keywordRankDto.setScr((double) obj.get("score"));
					
					// 키워드 랭킹 연계 적재
					apiService.keywordRankInsert(keywordRankDto);
				}
        	}
		}
    	
    }

	private JSONObject jsonData(int i) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
