package egovframework.gcall.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import egovframework.gcall.dto.TestApiDTO;
import egovframework.gcall.service.TestApiService;



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
@RequestMapping(value = "/apitest")
public class TestApiController {
	
	@Resource(name = "TestApiService")
	private TestApiService testApiService;

	
	@GetMapping("/test")
	public String getTest() {
		return "test";
	}

	
    @GetMapping("/apiTest.do")
    public ResponseEntity<String> callForecastApi( /*@RequestParam(value="base_time") String baseTime */ ) throws Exception{
    	
        HttpURLConnection urlConnection = null;
        InputStream stream = null;
        String result = null;

        String urlStr = "http://192.168.90.91:8081/api/dashboard/rank/top?intt_cd=1390000&date_from=2023-09-22&day_count=1&top_rank=5&rank_type=RISING";

        try {
            URL url = new URL(urlStr);

            urlConnection = (HttpURLConnection) url.openConnection();
            stream = getNetworkConnection(urlConnection);
            result = readStreamToString(stream);

            try {
            	
            	// Rest API로 가져온 데이터를 JSON Parsing해 JSONObject에 넣어준다.
    			JSONObject jsonObj = (JSONObject) new JSONParser().parse(result);
    			JSONObject jsosMap = (JSONObject) jsonObj.get("returnObject");
    			String requestId = (String) jsonObj.get("requestId");
    			
    			// JSONObject 데이터 중 List를 JSONArray에 넣어준다.
    			JSONArray jsonArr = (JSONArray) jsosMap.get("2023.09.22(금)");
    						    
    			//List<TestApiDTO> testApiList = new ArrayList<TestApiDTO>(); // 데이터를 저장할 List
    			for(Object arr : jsonArr) {
    				JSONObject obj = (JSONObject) arr; // JSONArray 데이터를 하나씩 가져와 JSONObject로 변환해준다.
    			    
    			    // 값을 VO에 넣어준다.
    				
    				TestApiDTO testApiDto = new TestApiDTO();
    				
    				testApiDto.setRequestId(requestId);
    				testApiDto.setTerm((String) obj.get("term"));
    				testApiDto.setScore((double) obj.get("score"));
    				testApiDto.setDf((double) obj.get("df"));
    				testApiDto.setWeight((double) obj.get("weight"));
    				testApiDto.setRank((double) obj.get("rank"));
    				testApiDto.setBeforeRank((double) obj.get("beforeRank"));
    				
    				System.out.println("test : " + testApiDto.toString());
    				//testApiList.add(testApiDto); // list에 추가해준다.
    				
    				testApiService.keywordRankInfoInsert(testApiDto);
    				
    			}
            	
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
	
	
	
}
