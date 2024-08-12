package egovframework.gcall.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.ApiKeywordRankDTO;

@Repository("ApiDAO")
public class ApiDAO extends EgovComAbstractDAO {

	// 키워드 랭킹 연계 적재
	public void keywordRankInfoInsert(ApiKeywordRankDTO apiKeywordRankDTO) throws Exception {
    	insert("ApiDAO.keywordRankInfoInsert", apiKeywordRankDTO);
    }
    
}
