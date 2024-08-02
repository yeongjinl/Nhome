package egovframework.gcall.util;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;

import org.springframework.web.multipart.MultipartFile;

import com.ibm.icu.text.SimpleDateFormat;

import egovframework.com.cmm.EgovWebUtil;
import egovframework.gcall.dto.BoardCommonDTO;

public class FileUtil {
	
	public static  List<HashMap<String, Object>> fileUpload(List<MultipartFile> fileList,BoardCommonDTO bDTO,String realFolder,String realPath) throws Exception {
		
		// 1. null 체크
		if(fileList != null) {
			 if(fileList.size()>0) {
				 List<HashMap<String, Object>> mList = new ArrayList<HashMap<String,Object>>();
				 
				 for(int i = 0 ; i<fileList.size();i++) {
					// 2. 업로드할 파일 크기를 제한한다.
					int size = (int) fileList.get(i).getSize();
					if(size > 10485760) throw new ServletException("사이즈에러");
					 
					 String org_filename = fileList.get(i).getOriginalFilename().toLowerCase();
					 
					// 3. 화이트리스트 방식으로 업로드 파일의 확장자를 체크한다.
						if ( org_filename != null ) {
							if( 
					    		org_filename.endsWith(".doc") || 
					    		org_filename.endsWith(".hwp") || 
					    		org_filename.endsWith(".pdf") || 
					    		org_filename.endsWith(".xls") ||
					    		org_filename.endsWith(".jpg") ||
					    		org_filename.endsWith(".jpeg") ||
					    		org_filename.endsWith(".png") ||
					    		org_filename.endsWith(".xlsx") ||
					    		org_filename.endsWith(".zip") ) {
							System.out.println(fileList.get(i).getOriginalFilename());
							SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMddHHmmss");
				        	Date date = new Date();
				        	String strDate =  format1.format(date);
				        	UUID uuid = UUID.randomUUID();
			        		System.out.println(realFolder);
			        		// 업로드할 파일 이름
			        		String str_filename = "file"+strDate+ uuid;
			        		HashMap<String, Object> mMap = new HashMap<>();
			        		mMap.put("CONF_ID",bDTO.getCONF_ID());
			                mMap.put("FILE_NAME",str_filename);
			                mMap.put("BOARD_NUM",bDTO.getBOARD_NUM());
			                //mMap.put("FILE_TYPE",);
			                //mMap.put("USE_YN",);
			                mMap.put("ORIGINAL_FILE_NAME",fileList.get(i).getOriginalFilename());
			                mMap.put("REAL_PATH", realPath);
			                //mMap.put("TEMP_ID", );
			                //mMap.put("FILE_SORT", "");
			                 
			           	    String filepath = realFolder + "\\" + str_filename;
			           	  //RESOURCE_INJECTION 보안취약점 수정
			           	  //filepath = filepath.replaceAll("/", "").replaceAll("\\\\", "");
			           	  filepath = EgovWebUtil.filePathBlackList(filepath);
		                  File f = new File(filepath);
		              		if (!f.exists()) {
		              			f.mkdirs();
		              		}
		              		fileList.get(i).transferTo(f);	
		              		mList.add(mMap);
							}
						}
				  }
				 return mList;
			 }
		}
		 
		return null;
	}
}
