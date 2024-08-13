package egovframework.gcall.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.ApiKeywordRankDTO;
import egovframework.gcall.dto.ApiRisingSuddenKeywordDTO;

@Repository("ApiDAO")
public class ApiDAO extends EgovComAbstractDAO {

	// 키워드 랭킹 연계 적재
	public void risingSuddenKeyword(ApiRisingSuddenKeywordDTO risingSuddenKeywordDTO) throws Exception {
    	insert("ApiDAO.risingSuddenKeyword", risingSuddenKeywordDTO);
    }
	
	// 키워드 랭킹 연계 적재
	public void keywordRankInsert(ApiKeywordRankDTO keywordRankDTO) throws Exception {
    	insert("ApiDAO.keywordRankInsert", keywordRankDTO);
    }
    
}
