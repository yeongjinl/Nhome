package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;

public interface ImageUploadService {

	/*sjs 수정부분*/

	public List<HashMap<String,Object>> imageInfoGet(String confId);

	public void fileUploadDB(HashMap<String, Object> mMap);


}
