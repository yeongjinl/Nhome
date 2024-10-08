package egovframework.gcall.service;

import egovframework.gcall.dto.ApiCounselKeywordDTO;
import egovframework.gcall.dto.ApiKeywordRankDTO;
import egovframework.gcall.dto.ApiRisingSuddenKeywordDTO;


public interface ApiService {
	// 상담 키워드 트렌드 연계
	public void insertCounselKeyword(ApiCounselKeywordDTO counselKeywordDto) throws Exception;
	

	// 급상승 키워드 연계
	public void risingSuddenKeyword(ApiRisingSuddenKeywordDTO risingSuddenKeywordDTO) throws Exception;
	
	// 키워드 랭킹 연계
	public void keywordRankInsert(ApiKeywordRankDTO keywordRankDTO) throws Exception;
	
}
