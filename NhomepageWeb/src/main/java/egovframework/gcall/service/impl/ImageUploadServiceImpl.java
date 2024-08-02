package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import egovframework.gcall.service.ImageUploadService;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("ImageUploadService")
public class ImageUploadServiceImpl extends EgovAbstractServiceImpl implements ImageUploadService {

	@Resource(name = "ImageUploadDAO")
	private ImageUploadDAO imageUploadDAO;
	/*sjs 수정부분*/

	@Override
	public List<HashMap<String,Object>> imageInfoGet(String confId) {
		// TODO Auto-generated method stub
		List<HashMap<String,Object>> iList = imageUploadDAO.imageInfoGet(confId);
		return iList;
	}

	@Override
	public void fileUploadDB(HashMap<String, Object> mMap) {
		// TODO Auto-generated method stub
		 imageUploadDAO.fileUploadDB(mMap);
		
	}

}
