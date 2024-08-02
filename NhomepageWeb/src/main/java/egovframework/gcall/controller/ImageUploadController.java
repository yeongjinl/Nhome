package egovframework.gcall.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jettison.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.ibm.icu.text.SimpleDateFormat;

import egovframework.com.cmm.EgovWebUtil;
import egovframework.gcall.service.ImageUploadService;
/*
 *
 * @author kim
 *  파일의 경로는 WAS 내부로 지정 -> 110 서버에 있는 WAS에 파일서버로의 링크가 걸려있음
 * confId 는 HP_BOARD_ADMIN 에서 파일의 경로및 정보를 가져오는것임
 * 예외)jsp 에서 지식디비는 contactDB 로 변수를 받아와서 파일경로 따로 지정해줬고, 팝업,팝업존,배너 90 91 92 받아오면 files/alarm 으로 지정
 */

@Controller
public class ImageUploadController {
	@Resource(name="ImageUploadService")
	private ImageUploadService imageUploadService;

	@RequestMapping(value="/imageUpload")
	public void profileUpload(MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception {
		//HP_BOARD_ADMIN에서 테이블 조회 / 파일 경로
		response.setContentType("text/html;charset=utf-8");
		String confId = request.getParameter("confId");
		if(confId == null) {
			confId = "";
		}

		confId = confId.replaceAll("<","&lt;");
    	confId = confId.replaceAll(">","&gt;");
    	confId = confId.replaceAll("&","&amp;");
    	confId = confId.replaceAll("\"","&quot;");

    	if(!confId.equals("contactDB")) {
    		List<HashMap<String,Object>> iList = new ArrayList();

    		String realFolder="";
    		//팝업 ,팝업존 , 배너
    		if(confId.equals("90")||confId.equals("91")||confId.equals("92")) {
        		iList = imageUploadService.imageInfoGet(confId);
        		PrintWriter out = response.getWriter();
        		// 업로드할 폴더 경로 개발용 was
        		realFolder = request.getSession().getServletContext().getRealPath("")+"/files/alarm/";
        		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        		Date date = new Date();
        		String strDate =  format.format(date);
        		JSONObject resultJson = new JSONObject();
        		// 1. null
        		if(file != null) {
    	    		String org_filename =file.getOriginalFilename().toLowerCase();
        			if(
        		    		org_filename.endsWith(".jpg") ||
        		    		org_filename.endsWith(".jpeg") ||
        		    		org_filename.endsWith(".png") ||
        		    		org_filename.endsWith(".gif")
        		    		) {
        				//2.파일 사이즈 확인후 제한 걸기
        				int size = (int) file.getSize();
        				if ( size > 10485760) {
        					resultJson.put("resultCode", "500");
        					resultJson.put("result", "파일 사이즈가 초과했습니다.");
        					 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}

        				}else {
        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
    						UUID uuid = UUID.randomUUID();
    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

    						System.out.println("원본 파일명 : " + org_filename);
    						System.out.println("저장할 파일명 : " + str_filename);
    						String filepath = realFolder + str_filename;
    						System.out.println("파일경로 : " + filepath);
    						filepath =	EgovWebUtil.filePathBlackList(filepath);
    						File f = new File(filepath);
    						if (!f.exists()) {
    							f.mkdirs();
    						}
    						file.transferTo(f);
    						resultJson.put("resultCode",200);
    						resultJson.put("result", "https://www.110.go.kr/files/alarm/"+str_filename);
    						resultJson.put("extended", extended);
    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
    						//out.println("https://www.110.go.kr"+"/files/alarm/"+str_filename);
    		        		 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}

        				}

        			}else if(org_filename.endsWith(".wmv") ||
        		    		org_filename.endsWith(".mp4") ||
        		    		org_filename.endsWith(".webm") ||
        		    		org_filename.endsWith(".avi") ||
        		    		org_filename.endsWith(".ogg") ) {
        				int size = (int) file.getSize();
        				if ( size > 157286400) {
        					resultJson.put("result", "500");
        					resultJson.put("resAlert", "동영상 파일 사이즈가 초과했습니다.");
        					 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}

        				}else {
        					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
    						UUID uuid = UUID.randomUUID();
    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
    						String str_filename ="movie"+confId+"_"+strDate+"_"+uuid+extended;

    						System.out.println("원본 파일명 : " + org_filename);
    						System.out.println("저장할 파일명 : " + str_filename);
    						String filepath = realFolder + str_filename;
    						System.out.println("파일경로 : " + filepath);
    						filepath =	EgovWebUtil.filePathBlackList(filepath);
    						File f = new File(filepath);
    						if (!f.exists()) {
    							f.mkdirs();
    						}
    						file.transferTo(f);
    						resultJson.put("resultCode",200);
    						resultJson.put("result", "https://www.110.go.kr/files/alarm/"+str_filename);
    						resultJson.put("extended", extended);
    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
    						//out.println("https://www.110.go.kr"+"/files/alarm/"+str_filename);
    						 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}

        				}
        			}else {
        				resultJson.put("resultCode", "501");
    					resultJson.put("result", "지원하지 않는 파일 형식입니다.");
    					 try {
		        			 out.println(resultJson);
		        		} catch (IndexOutOfBoundsException e) {
		        			//e.printStackTrace();
		        			System.out.println(" Exception occurred");
		        		} finally {
		        			out.close();
		        		}

        			}
        		}

	    		// 팝업 ,팝업존 ,배너 ,지식디비 제외한 나머지 게시판 썸머노트
    		}else {
    			iList = imageUploadService.imageInfoGet(confId);
	    		PrintWriter out = response.getWriter();
	    		// 업로드할 폴더 경로 개발용 was
	    		realFolder = request.getSession().getServletContext().getRealPath("")+iList.get(0).get("UPLOAD_PATH");
	    		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
	    		Date date = new Date();
	    		String strDate =  format.format(date);
	    		JSONObject resultJson = new JSONObject();
	    		// 1. null
	    		if(file != null) {
		    		String org_filename =file.getOriginalFilename().toLowerCase();
	    			if(
	    		    		org_filename.endsWith(".jpg") ||
	    		    		org_filename.endsWith(".jpeg") ||
	    		    		org_filename.endsWith(".png") ||
	    		    		org_filename.endsWith(".gif")
	    		    		) {
	    				//2.파일 사이즈 확인후 제한 걸기
	    				int size = (int) file.getSize();
	    				if ( size > 10485760) {
	    					resultJson.put("resultCode", "500");
	    					resultJson.put("result", "파일 사이즈가 초과했습니다.");
	    					try {
   		        			 out.println(resultJson);
   		        		} catch (IndexOutOfBoundsException e) {
   		        			//e.printStackTrace();
   		        			System.out.println("Exception occurred");
   		        		} finally {
   		        			out.close();
   		        		}
	    				}else {
	    					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
    						UUID uuid = UUID.randomUUID();
    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
    						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

    						System.out.println("원본 파일명 : " + org_filename);
    						System.out.println("저장할 파일명 : " + str_filename);
    						String filepath = realFolder + str_filename;
    						System.out.println("파일경로 : " + filepath);
    						filepath =	EgovWebUtil.filePathBlackList(filepath);
    						File f = new File(filepath);
    						if (!f.exists()) {
    							f.mkdirs();
    						}
    						file.transferTo(f);
    						resultJson.put("resultCode",200);
    						resultJson.put("result", "https://www.110.go.kr"+iList.get(0).get("UPLOAD_PATH")+str_filename);
    						resultJson.put("extended", extended);
    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
    						//out.println("https://www.110.go.kr"+iList.get(0).get("UPLOAD_PATH")+str_filename);
    						 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}
	    				}

	    			}else if(org_filename.endsWith(".wmv") ||
	    		    		org_filename.endsWith(".mp4") ||
	    		    		org_filename.endsWith(".avi") ||
	    		    		org_filename.endsWith(".webm") ||
	    		    		org_filename.endsWith(".ogg") ) {
	    				int size = (int) file.getSize();
	    				if ( size > 157286400) {
	    					resultJson.put("result", "500");
	    					resultJson.put("resAlert", "동영상 파일 사이즈가 초과했습니다.");
	    					out.println(resultJson);
	    					out.close();
	    				}else {
	    					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
    						UUID uuid = UUID.randomUUID();
    						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
    						String str_filename ="movie"+confId+"_"+strDate+"_"+uuid+extended;

    						System.out.println("원본 파일명 : " + org_filename);
    						System.out.println("저장할 파일명 : " + str_filename);
    						String filepath = realFolder + str_filename;
    						System.out.println("파일경로 : " + filepath);
    						filepath =	EgovWebUtil.filePathBlackList(filepath);
    						File f = new File(filepath);
    						if (!f.exists()) {
    							f.mkdirs();
    						}
    						file.transferTo(f);
    						resultJson.put("resultCode",200);
    						resultJson.put("result","https://www.110.go.kr"+iList.get(0).get("UPLOAD_PATH")+str_filename);
    						resultJson.put("extended", extended);
    						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
    						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
    						//out.println("https://www.110.go.kr"+iList.get(0).get("UPLOAD_PATH")+str_filename);
    						 try {
    		        			 out.println(resultJson);
    		        		} catch (IndexOutOfBoundsException e) {
    		        			//e.printStackTrace();
    		        			System.out.println("Exception occurred");
    		        		} finally {
    		        			out.close();
    		        		}

	    				}
	    			}else {
	    				resultJson.put("resultCode", "501");
    					resultJson.put("result", "지원하지 않는 파일 형식입니다.");
    					 try {
		        			 out.println(resultJson);
		        		} catch (IndexOutOfBoundsException e) {
		        			//e.printStackTrace();
		        			System.out.println("Exception occurred");
		        		} finally {
		        			out.close();
		        		}

	    			}
	    		}

    		}
    		//지식 디비 썸머노트 부분
    	}else if(confId.equals("contactDB")) {
    		String realFolder="";
    		PrintWriter out = response.getWriter();
    		// 업로드할 폴더 경로 개발용 was
    		realFolder = request.getSession().getServletContext().getRealPath("")+"/files/faq/";
    		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
    		Date date = new Date();
    		String strDate =  format.format(date);
    		JSONObject resultJson = new JSONObject();
    		// 1. null
    		if(file != null) {
	    		String org_filename =file.getOriginalFilename().toLowerCase();
    			if(
    		    		org_filename.endsWith(".jpg") ||
    		    		org_filename.endsWith(".jpeg") ||
    		    		org_filename.endsWith(".png") ||
    		    		org_filename.endsWith(".gif")
    		    		) {
    				//2.파일 사이즈 확인후 제한 걸기
    				int size = (int) file.getSize();
    				if ( size > 10485760) {
    					resultJson.put("resultCode", "500");
    					resultJson.put("result", "파일 사이즈가 초과했습니다.");
    					 try {
		        			 out.println(resultJson);
		        		} catch (IndexOutOfBoundsException e) {
		        			//e.printStackTrace();
		        			System.out.println("Exception occurred");
		        		} finally {
		        			out.close();
		        		}

    				}else {
    					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
						UUID uuid = UUID.randomUUID();
						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
						String str_filename = confId+"_"+strDate+"_"+uuid+extended;

						System.out.println("원본 파일명 : " + org_filename);
						System.out.println("저장할 파일명 : " + str_filename);
						String filepath = realFolder + str_filename;
						System.out.println("파일경로 : " + filepath);
						filepath =	EgovWebUtil.filePathBlackList(filepath);
						File f = new File(filepath);
						if (!f.exists()) {
							f.mkdirs();
						}
						file.transferTo(f);
						resultJson.put("resultCode",200);
						resultJson.put("result", "https://www.110.go.kr/files/faq/"+str_filename);
						resultJson.put("extended", extended);
						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
						//out.println("https://www.110.go.kr"+"/files/faq/"+str_filename);
						 try {
		        			 out.println(resultJson);
		        		} catch (IndexOutOfBoundsException e) {
		        			//e.printStackTrace();
		        			System.out.println("Exception occurred");
		        		} finally {
		        			out.close();
		        		}
    				}

    			}
    			/*else if(org_filename.endsWith(".wmv") ||
    		    		org_filename.endsWith(".mp4") ||
    		    		org_filename.endsWith(".avi") ||
    		    		org_filename.endsWith(".webm") ||
    		    		org_filename.endsWith(".ogg") ) {
    				int size = (int) file.getSize();
    				if ( size > 157286400) {
    					resultJson.put("result", "500");
    					resultJson.put("resAlert", "동영상 파일 사이즈가 초과했습니다.");
    					out.println(resultJson);
    					out.close();
    				}else {
    					//UUID  저장할떄는 한글 파일명이 깨지기 때문에 uuid 로
						UUID uuid = UUID.randomUUID();
						String extended = org_filename.substring(org_filename.indexOf("."), org_filename.length());
						String str_filename ="movie"+confId+"_"+strDate+"_"+uuid+extended;

						System.out.println("원본 파일명 : " + org_filename);
						System.out.println("저장할 파일명 : " + str_filename);
						String filepath = realFolder + str_filename;
						System.out.println("파일경로 : " + filepath);

						File f = new File(filepath);
						if (!f.exists()) {
							f.mkdirs();
						}
						file.transferTo(f);
						resultJson.put("resultCode",200);
						resultJson.put("result", "https://www.110.go.kr/files/faq/"+str_filename);
						resultJson.put("extended", extended);
						//이 부분은 썸머노트 에디터 이미지를 올렸을떄 img src= " "  출력되는 부분이다.
						//파일서버에 링크가 걸려있고 110 도메인만 자원 접근이 되는거 같음
						//out.println("https://www.110.go.kr"+"/files/faq/"+str_filename);
						 try {
		        			 out.println(resultJson);
		        		} catch (Exception e) {
		        			//e.printStackTrace();
		        		} finally {
		        			out.close();
		        		}

    				}
    			}*/
    			else {
    				resultJson.put("resultCode", "501");
					resultJson.put("result", "지원하지 않는 파일 형식입니다.");
					 try {
	        			 out.println(resultJson);
	        		} catch (IndexOutOfBoundsException e) {
	        			//e.printStackTrace();
	        			System.out.println("Exception occurred");
	        		} finally {
	        			out.close();
	        		}

    			}
    		}
    	}
	}

}
