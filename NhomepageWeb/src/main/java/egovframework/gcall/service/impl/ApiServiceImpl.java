package egovframework.gcall.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.dto.ApiCounselKeywordDTO;
import egovframework.gcall.dto.ApiKeywordRankDTO;
import egovframework.gcall.dto.ApiRisingSuddenKeywordDTO;
import egovframework.gcall.service.ApiService;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("ApiService")
public class ApiServiceImpl extends EgovAbstractServiceImpl implements ApiService {

	@Resource(name = "ApiDAO")
	private ApiDAO apiDAO;

	@Override
	public void insertCounselKeyword(ApiCounselKeywordDTO counselKeywordDto) throws Exception {
		//상담일자 데이터 여부
		int result = apiDAO.counselKeywordCount(counselKeywordDto);
		if(result == 0) {
			apiDAO.insertCounselKeyword(counselKeywordDto);
		}else {
			apiDAO.updateCounselKeyword(counselKeywordDto);
		}
		
	}
	
	@Override
	public void risingSuddenKeyword(ApiRisingSuddenKeywordDTO risingSuddenKeywordDTO) throws Exception {
		apiDAO.risingSuddenKeyword(risingSuddenKeywordDTO);
	}

	@Override
	public void keywordRankInsert(ApiKeywordRankDTO keywordRankDTO) throws Exception {
		apiDAO.keywordRankInsert(keywordRankDTO);
	}
}
