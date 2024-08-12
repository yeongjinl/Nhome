package egovframework.gcall.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;

import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.Locale;

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
import egovframework.gcall.dto.ApiKeywordRankDTO;
import egovframework.gcall.service.ApiService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;



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
 * http://192.168.90.91:8081/api/dashboard/rank/rising?intt_cd=1390000&date_from=2023-09-22&day_count=1&top_rank=5&rank_type=RISING_SUDDEN
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

	
	@GetMapping("/test")
	public String getTest() {
		return "test";
	}


	@ApiOperation(value = "api호출 ")
    @GetMapping("/{type}.do")
    public ResponseEntity<String> callForecastApi(@ApiParam(value = "tbLnaguageResource-모범상담사례,day-상담키워드,result-키워드연관어,rising-급상승키워드,top-키워드랭킹") @PathVariable("type")String type
    		, @ApiParam(value = "기관코드") @RequestParam(value="intt_cd", defaultValue="1390000") String intt_cd
    		, @ApiParam(value = "시작일자") @RequestParam(value="date_from", required = false) String date_from
    		, @ApiParam(value = "일수") @RequestParam(value="date_duration", required = false) String date_duration) throws Exception{
    	
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
        if(!EgovStringUtil.isEmpty(date_duration)) {
        	paramStr += "&date_duration=" + date_duration;
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
    			JSONObject jsosMap = (JSONObject) jsonObj.get("returnObject");
    			
    			insertReturn(type, date_from, jsonObj, jsosMap);
            	
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
    
    private void insertReturn(String type, String date_from, JSONObject jsonObj, JSONObject jsosMap) throws Exception {
    	
    	String requestId = (String) jsonObj.get("requestId");
    	
    	
    	if(type.equals("tbLnaguageResource")) {	// 모범상담사례 연계 URL
        	
    		
    		
        }else if(type.equals("day")) {			// 상담 키워드 트렌드 연계
        	
        	
        	
        }else if(type.equals("result")) {		// 키워드 연관어 연계
        	
        	
        	
        }else if(type.equals("rising")) {		// 급상승 키워드 연계
        	
        	
        	
        }else if(type.equals("top")) {			// 키워드 랭킹 연계
        	
        	LocalDate date = LocalDate.parse(date_from, DateTimeFormatter.ISO_DATE);

        	DateTimeFormatter formatter;
        	String formatteDateTime;
        	
        	String dayOfWeekInKorean;
        	
        	formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
        	formatteDateTime = date.format(formatter);
        	dayOfWeekInKorean = date.getDayOfWeek().getDisplayName(TextStyle.SHORT, Locale.KOREAN);
        	
        	// 입력한 날짜(jsonArray의 Key값)
        	String inputDateFrom = formatteDateTime + "(" + dayOfWeekInKorean + ")";
        	
        	//JSONArray jsonArr = (JSONArray) jsosMap.get("2023.09.22(금)");
        	JSONArray jsonArr = (JSONArray) jsosMap.get(inputDateFrom);
			
			for(Object arr : jsonArr) {
				JSONObject obj = (JSONObject) arr; // JSONArray 데이터를 하나씩 가져와 JSONObject로 변환해준다.
			    
			    // 값을 VO에 넣어준다.
				ApiKeywordRankDTO apiKeywordRankDto = new ApiKeywordRankDTO();
				
				apiKeywordRankDto.setRequestId(requestId);
				apiKeywordRankDto.setTerm((String) obj.get("term"));
				apiKeywordRankDto.setScore((double) obj.get("score"));
				apiKeywordRankDto.setDf((double) obj.get("df"));
				apiKeywordRankDto.setWeight((double) obj.get("weight"));
				apiKeywordRankDto.setRank((double) obj.get("rank"));
				apiKeywordRankDto.setBeforeRank((double) obj.get("beforeRank"));
				
				// 키워드 랭킹 연계 적재
				apiService.keywordRankInfoInsert(apiKeywordRankDto);
			}
			
		}
    	
    }
	
	
	
}
