package egovframework.gcall.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.dto.ApiKeywordRankDTO;
import egovframework.gcall.service.ApiService;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("ApiService")
public class ApiServiceImpl extends EgovAbstractServiceImpl implements ApiService {

	@Resource(name = "ApiDAO")
	private ApiDAO ApiDAO;

	@Override
	public void keywordRankInfoInsert(ApiKeywordRankDTO apiKeywordRankDTO) throws Exception {
		// 키워드 랭킹 연계 적재
		ApiDAO.keywordRankInfoInsert(apiKeywordRankDTO);
	}
	
}
