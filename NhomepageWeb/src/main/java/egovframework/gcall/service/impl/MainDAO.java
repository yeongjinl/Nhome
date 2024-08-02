package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("MainDAO2")
public class MainDAO extends EgovComAbstractDAO {

    public List<HashMap<String, Object>> commonMenuSideSubSelect(Map<String, Object> map) throws Exception {
    	return selectList("MainDAO2.commonMenuSideSubSelect", map);
    }
    
}
