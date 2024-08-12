package egovframework.gcall.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.TestApiDTO;

@Repository("TestApiDAO")
public class TestApiDAO extends EgovComAbstractDAO {

	public void keywordRankInfoInsert(TestApiDTO testApiDto) throws Exception {
    	insert("TestApiDAO.keywordRankInfoInsert", testApiDto);
    }
    
}
