package egovframework.gcall.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.gcall.dto.TestApiDTO;
import egovframework.gcall.service.TestApiService;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("TestApiService")
public class TestApiServiceImpl extends EgovAbstractServiceImpl implements TestApiService {

	@Resource(name = "TestApiDAO")
	private TestApiDAO testApiDAO;

	@Override
	public void keywordRankInfoInsert(TestApiDTO testApiDto) throws Exception {
		testApiDAO.keywordRankInfoInsert(testApiDto);
	}
	
}
