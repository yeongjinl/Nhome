package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("ImageUploadDAO")
public class ImageUploadDAO extends EgovComAbstractDAO {

	/*sjs 수정부분*/
	public List<HashMap<String, Object>> imageInfoGet(String confId) {
		// TODO Auto-generated method stub
		return selectList("ImageUploadDAO.imageInfoGet",confId);
	}

	public void fileUploadDB(HashMap<String, Object> mMap) {
		// TODO Auto-generated method stub
		 insert("ImageUploadDAO.fileUploadDB",mMap);
	}

	
}
