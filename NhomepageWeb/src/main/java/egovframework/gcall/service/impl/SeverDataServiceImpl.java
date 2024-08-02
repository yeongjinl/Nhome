package egovframework.gcall.service.impl;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.codehaus.jettison.json.JSONObject;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.google.common.collect.Lists;
import com.naver.api.security.client.MACManager;

import egovframework.gcall.dto.ContactDbDTO;
import egovframework.gcall.service.SeverDataService;
import egovframework.gcall.util.CmmUtil;
import egovframework.gcall.util.StrUtil;
import egovframework.gcall.util.StringUtil;
import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("SeverDataService")
public class SeverDataServiceImpl extends EgovAbstractServiceImpl implements SeverDataService {

	@Resource(name = "SeverDataDAO")
	private SeverDataDAO severdataDAO;

	@Override
	public int contactDbInsert(ContactDbDTO conteact) throws Exception {
		return severdataDAO.contactDbInsert(conteact);
	}

	@Override
	public List<ContactDbDTO> getProveView(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getProveView(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getDbGubun(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getDbGubun(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getClassGubunL(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getClassGubunL(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getClassGubunM(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getClassGubunM(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getClassGubunS(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getClassGubunS(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getConGubunL(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getConGubunL(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getConGubunM(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getConGubunM(cbDTO);
	}

	@Override
	public List<HashMap<String, Object>> getConGubunS(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getConGubunS(cbDTO);
	}

	@Override
	public int getProveViewCount(ContactDbDTO cbDTO) throws Exception {
		return severdataDAO.getProveViewCount(cbDTO);
	}

	@Override
	public ContactDbDTO getlistDetail(ContactDbDTO dDTO) throws Exception {
		return severdataDAO.getlistDetail(dDTO);
	}

	@Override
	public List<HashMap<String, Object>> getpopupflag(HashMap<String, Object> hmap) throws Exception {
		return severdataDAO.getpopupflag(hmap);
	}

	@Override
	public List<HashMap<String, Object>> getpopupclass(HashMap<String, Object> hmap) throws Exception {
		return severdataDAO.getpopupclass(hmap);
	}
	
	private static final int IMG_MAX_LENGTH = 1000;
	
	// 네이버 연계
	// 상담지식 승인(prove)
	@Override
	public int insertNaverProve(ContactDbDTO dDTO) throws Exception {
		
		// 개발환경
		// String url = "http://dev.apis.naver.com/kin_110call/kin/insertOrUpdateFaq";
		
		// 운영환경
		String url = "http://apis.naver.com/kin_110call/kin/insertOrUpdateFaq";
		
		// 연계결과값
		int resultCode = 0;
		
		// 2020-02-28 add
		// api전송을 하기 위한 html 속성 제거 함수 호출
		dDTO.setQUST_CNTN(StrUtil.dietString(dDTO.getQUST_CNTN()));
		dDTO.setCONTENT(StrUtil.dietString(dDTO.getCONTENT()));
		
		// 2020-03-02 add
		// 이미지 길이 체크 함수 호출
		if(!StrUtil.checkImgLength(dDTO.getQUST_CNTN(), IMG_MAX_LENGTH)) return -123;
		if(!StrUtil.checkImgLength(dDTO.getCONTENT(), IMG_MAX_LENGTH)) return -123;

		// String Replace Util
		// taghtml 은 &lt; 이런 표현식을 < 바꿔주는것 StrUtil 참조
		// brhtml 은 에디터에서 <br> 태그로 넘어올텐데 <br> - > <br /> 네이버는 <br /> 이렇게 읽어서 엔터로 표현하는듯 함
		// 만약 이것이 안되면 <p>태그는 들어가기떄문에 <br> 을 공백으로 치환하면될듯
		dDTO.setQUST_CNTN(StrUtil.brHtml(StrUtil.tagHtml(dDTO.getQUST_CNTN())));
		dDTO.setCONTENT(StrUtil.brHtml(StrUtil.tagHtml(dDTO.getCONTENT())));

		// img src 추출
		// 질문 이미지 src
		List<String> qustImgSrc = StrUtil.getImgSrc(dDTO.getQUST_CNTN());
		// 답변 이미지 src
		List<String> answImgSrc = StrUtil.getImgSrc(dDTO.getCONTENT());
		// 질문 동영상 src video embed
		List<String> qustVideoSrc = new ArrayList<>();
		// 답변 동영상 src
		List<String> answVideoSrc = new ArrayList<>();

		// 멀티파일 질문 이미지 리스트
		FileSystemResource[] qustResImage = null;
		// 멀티파일 답변 리스트
		FileSystemResource[] answResImage = null;
		// 멀티파일 질문 동영상 리스트
		FileSystemResource qustResVideo = null;
		// 멀티파일 답변 동영상 리스트
		FileSystemResource answResVideo = null;

		if (qustImgSrc != null) {
			// 이미지는 최대 3장까지임
			if (qustImgSrc.size() == 1) {
				qustResImage = new FileSystemResource[] {
						new FileSystemResource(dDTO.getRealFolder() + qustImgSrc.get(0)) };
			}
			if (qustImgSrc.size() == 2) {
				qustResImage = new FileSystemResource[] {
						new FileSystemResource(dDTO.getRealFolder() + qustImgSrc.get(0)),
						new FileSystemResource(dDTO.getRealFolder() + qustImgSrc.get(1)) };
			}
			if (qustImgSrc.size() == 3) {
				qustResImage = new FileSystemResource[] {
						new FileSystemResource(dDTO.getRealFolder() + qustImgSrc.get(0)),
						new FileSystemResource(dDTO.getRealFolder() + qustImgSrc.get(1)),
						new FileSystemResource(dDTO.getRealFolder() + qustImgSrc.get(2)) };
			}
		}
		if (answImgSrc != null) {
			// 이미지는 최대 3장까지임
			if (answImgSrc.size() == 1) {
				answResImage = new FileSystemResource[] {
						new FileSystemResource(dDTO.getRealFolder() + answImgSrc.get(0)) };
			}
			if (answImgSrc.size() == 2) {
				answResImage = new FileSystemResource[] {
						new FileSystemResource(dDTO.getRealFolder() + answImgSrc.get(0)),
						new FileSystemResource(dDTO.getRealFolder() + answImgSrc.get(1)) };
			}
			if (answImgSrc.size() == 3) {
				answResImage = new FileSystemResource[] {
						new FileSystemResource(dDTO.getRealFolder() + answImgSrc.get(0)),
						new FileSystemResource(dDTO.getRealFolder() + answImgSrc.get(1)),
						new FileSystemResource(dDTO.getRealFolder() + answImgSrc.get(2)) };
			}
		}

		System.out.println("qustImgSrc size : " + qustImgSrc.size());
		System.out.println("answImgSrc size : " + answImgSrc.size());
		////////////////////////////////////////////////////////////////////////////////////////////
		// video , embed 나눠서 로직 정리
		// 네이버는 질문 , 답변 동영상 파일 1개씩만 받기 때문에 로직에서 video 태그 있을 때 없을떄 나뉘어서 생각함
		// System.out.println("asdL:"+dDTO.getQUST_CNTN());
		// System.out.println("asdL2:"+dDTO.getCONTENT());
		// 질문 video 로직
		// 질문 에 video 태그가 없으면
//		if (StrUtil.getVideoSrc(dDTO.getQUST_CNTN()) == null) {
//			qustVideoSrc = null;
//		}
//		// 질문 에 video 태그가 있으면
//		else if (StrUtil.getVideoSrc(dDTO.getQUST_CNTN()) != null) {
//			qustVideoSrc = StrUtil.getVideoSrc(dDTO.getQUST_CNTN());
//			if (qustVideoSrc.size() == 1) {
//				qustResVideo = new FileSystemResource(dDTO.getRealFolder() + qustVideoSrc.get(0));
//				System.out.println("동영상 이름 ------------------: " + qustResVideo.getFilename());
//				System.out.println("동영상 존재 ------------------: " + qustResVideo.exists());
//				System.out.println("동영상경로------:" + qustResVideo.getPath());
//			}
//		}
		// 질문에 embed 태그가 없으면
//		if (StrUtil.getEmbedSrc(dDTO.getQUST_CNTN()) == null) {
//			// 치환 안하고
//			qustVideoSrc = null;
//		} else if (StrUtil.getEmbedSrc(dDTO.getQUST_CNTN()) != null) {
//			// embed 태그에 src 추출해서 배열에 담음
//			qustVideoSrc = StrUtil.getEmbedSrc(dDTO.getQUST_CNTN());
//			if (qustVideoSrc.size() == 1) {
//				qustResVideo = new FileSystemResource(dDTO.getRealFolder() + qustVideoSrc.get(0));
//				System.out.println("동영상 이름 ------------------: " + qustResVideo.getFilename());
//				System.out.println("동영상 존재 ------------------: " + qustResVideo.exists());
//				System.out.println("동영상경로------:" + qustResVideo.getPath());
//			}
//
//		}
		// 답변 video 로직
		// 답변 에 video 태그가 없으면
//		if (StrUtil.getVideoSrc(dDTO.getCONTENT()) == null) {
//			answVideoSrc = null;
//		}
//		// 답변 에 video 태그가 있으면
//		else if (StrUtil.getVideoSrc(dDTO.getCONTENT()) != null) {
//			answVideoSrc = StrUtil.getVideoSrc(dDTO.getCONTENT());
//			if (answVideoSrc.size() == 1) {
//				answResVideo = new FileSystemResource(dDTO.getRealFolder() + answVideoSrc.get(0));
//				System.out.println("동영상 이름 ------------------: " + answResVideo.getFilename());
//			}
//		}
//		// 답변에 embed 태그가 없으면
//		if (StrUtil.getEmbedSrc(dDTO.getCONTENT()) == null) {
//			// 치환 안하고
//			answVideoSrc = null;
//		} else if (StrUtil.getEmbedSrc(dDTO.getCONTENT()) != null) {
//			// embed 태그에 src 추출해서 배열에 담음
//			answVideoSrc = StrUtil.getEmbedSrc(dDTO.getCONTENT());
//			if (answVideoSrc.size() == 1) {
//				answResVideo = new FileSystemResource(dDTO.getRealFolder() + answVideoSrc.get(0));
//				System.out.println("동영상 이름 ------------------: " + answResVideo.getFilename());
//			}
//		}
		// 모든 작업 종료후 다시 치환 img , video , embed 태그 치환
		// 치환된 QUST_CNTN,CONTENT은 변수로 보내주면됨
		// 질문 치환
		dDTO.setQUST_CNTN(dDTO.getQUST_CNTN().replaceAll("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>", "{IMAGE}"));
//		dDTO.setQUST_CNTN(dDTO.getQUST_CNTN().replaceAll("<embed[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>", "{MOVIE}"));
//		dDTO.setQUST_CNTN(dDTO.getQUST_CNTN().replaceAll("<video[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>", "{MOVIE}"));
		// 답변 치환
		dDTO.setCONTENT(dDTO.getCONTENT().replaceAll("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>", "{IMAGE}"));
//		dDTO.setCONTENT(dDTO.getCONTENT().replaceAll("<embed[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>", "{MOVIE}"));
//		dDTO.setCONTENT(dDTO.getCONTENT().replaceAll("<video[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>", "{MOVIE}"));
		System.out.println("치환 결과:" + dDTO.getQUST_CNTN());
		System.out.println("치환 결과2:" + dDTO.getCONTENT());

		// System.out.println("test:"+Lists.newArrayList(qustResImage));
		// 파라미터 정의
		MultiValueMap<String, Object> paramMap = new LinkedMultiValueMap<>();
		paramMap.add("serviceId", "kin_110call");
		paramMap.add("reqEnc", "UTF-8");
		paramMap.add("questionTitle", CmmUtil.nvl(dDTO.getTITLE()));
		paramMap.add("questionContents", CmmUtil.nvl(dDTO.getQUST_CNTN()));
		paramMap.add("answerContents", CmmUtil.nvl(dDTO.getCONTENT()));
		paramMap.add("categoryId", "60106");
		paramMap.add("articleId", CmmUtil.nvl(dDTO.getDB_SEQ()));
		paramMap.add("source", "https://www.110.go.kr/data/faqView.do?num=" + CmmUtil.nvl(dDTO.getDB_SEQ()));
		// 분기 처리 해서 질문 , 답변 이미지 있는것들만 보냄
		List<Object> objqustResImage = new ArrayList<>();
		List<Object> objanswResImage = new ArrayList<>();
		List<Object> objqustResVideo = new ArrayList<>();
		List<Object> objanswResVideo = new ArrayList<>();

		if (qustImgSrc != null) {
			if (qustImgSrc.size() > 0) {
				objqustResImage = StrUtil.getObjectAraaylist(Lists.newArrayList(qustResImage));
				paramMap.put("questionImages", objqustResImage);
			}
		}
		if (answImgSrc != null) {
			if (answImgSrc.size() > 0) {
				objanswResImage = StrUtil.getObjectAraaylist(Lists.newArrayList(answResImage));
				paramMap.put("answerImages", objanswResImage);
			}
		}
		if (qustVideoSrc != null) {
			if (qustVideoSrc.size() > 0) {
				objqustResVideo = StrUtil.getObjectAraaylist(Lists.newArrayList(qustResVideo));
				paramMap.put("questionMovie", objqustResVideo);
			}
		}
		if (answVideoSrc != null) {
			if (answVideoSrc.size() > 0) {
				objanswResVideo = StrUtil.getObjectAraaylist(Lists.newArrayList(answResVideo));
				paramMap.put("answerMovie", objanswResVideo);
			}
		}

		// HTTP Header 정의
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("multipart", "form-data", Charset.forName("UTF-8")));
		HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<>(paramMap, headers);
		int apiTimeout = 3000; // API Timeout
		URI encryptedApiUrl = new URI(MACManager.getEncryptUrl(url));
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<?> httpResponse = restTemplate.exchange(encryptedApiUrl, HttpMethod.POST, request, Object.class);
		System.out.println(httpResponse);

		String json = httpResponse.getBody().toString();
		JSONObject jsonObject = new JSONObject(json);
		System.out.println(jsonObject);
		System.out.println("jsonObject.get(code) :" + jsonObject.get("code"));
		System.out.println("jsonObject.get(code).equals(200) :" + jsonObject.get("code").toString().equals("200"));
		if (jsonObject.get("code").toString().equals("200")) {
			severdataDAO.insertNaverProve(dDTO);
			resultCode = 200;
		}
		return resultCode;
	}

	// 상담지식 승인 거부
	@Override
	public int deleteNaverProve(ContactDbDTO dDTO) throws Exception {
		System.out.println("service start !");
		StringUtil st = new StringUtil();
		// 개발환경
		// String url = "http://dev.apis.naver.com/kin_110call/kin/deleteFaq";
		// 운영환경
		String url = "http://apis.naver.com/kin_110call/kin/deleteFaq";

		// 연계결과값
		int resultCode = 0;
		// 파라미터 정의
		MultiValueMap<String, Object> paramMap = new LinkedMultiValueMap<>();
		paramMap.add("ver", "1.0.0");
		paramMap.add("reqEnc", "UTF-8");
		paramMap.add("serviceId", "kin_110call");
		// paramMap.add("articleId", "61692");
		paramMap.add("articleId", CmmUtil.nvl(dDTO.getDB_SEQ()));
		// HTTP Header 정의
		HttpHeaders headers = new HttpHeaders();
		// headers.setContentType(MediaType.ALL);
		// headers.set("Content-Type", "x-www-form-urlencoded");
		HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<>(paramMap, headers);
		int apiTimeout = 3000; // API Timeout
		URI encryptedApiUrl = new URI(MACManager.getEncryptUrl(url));
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<?> httpResponse = restTemplate.exchange(encryptedApiUrl, HttpMethod.POST, request, String.class);
		System.out.println("asd:" + httpResponse);

		String json = httpResponse.getBody().toString();
		JSONObject jsonObject = new JSONObject(json);
		System.out.println(jsonObject);
		System.out.println("jsonObject.get(code) :" + jsonObject.get("code"));
		System.out.println("jsonObject.get(code).equals(200) :" + jsonObject.get("code").toString().equals("200"));
		if (jsonObject.get("code").toString().equals("200")) {
			// 상담지식DB 승인거부
			int dbResult = severdataDAO.updateNaverDenied(dDTO);
			resultCode = 200;
		}
		return resultCode;
	}

	@Override
	public int updateState(ContactDbDTO dDTO) throws Exception {
		// TODO Auto-generated method stub
		int dbResult = severdataDAO.updateState(dDTO);
		return dbResult;
	}

	@Override
	public List<HashMap<String, Object>> getHislist(ContactDbDTO dDTO) throws Exception {
		return severdataDAO.getHislist(dDTO);
	}

	@Override
	public int getHislistCount(ContactDbDTO cbDTO) throws Exception {
		return severdataDAO.getHislistCount(cbDTO);
	}

	@Override
	public ContactDbDTO getHisDetail(ContactDbDTO hDTO) throws Exception {
		ContactDbDTO hDTO2 = severdataDAO.getHisDetail(hDTO);
		if (hDTO2.getTITLE() == null)
			hDTO2.setTITLE("");
		if (hDTO2.getQUST_CNTN() == null)
			hDTO2.setQUST_CNTN("");
		if (hDTO2.getCONTENT() == null)
			hDTO2.setCONTENT("");
		if (hDTO2.getUSER_NM() == null)
			hDTO2.setUSER_NM("");
		if (hDTO2.getKEY_WORD() == null)
			hDTO2.setKEY_WORD("");
		if (hDTO2.getFLAG_NAME() == null)
			hDTO2.setFLAG_NAME("");
		if (hDTO2.getCONTACT_DB_GUBUN_NAME() == null)
			hDTO2.setCONTACT_DB_GUBUN_NAME("");
		if (hDTO2.getCON1_NM() == null)
			hDTO2.setCON1_NM("");
		if (hDTO2.getCON2_NM() == null)
			hDTO2.setCON2_NM("");
		if (hDTO2.getCON3_NM() == null)
			hDTO2.setCON3_NM("");
		if (hDTO2.getCLASS1_NM() == null)
			hDTO2.setCLASS1_NM("");
		if (hDTO2.getCLASS2_NM() == null)
			hDTO2.setCLASS2_NM("");
		if (hDTO2.getCLASS3_NM() == null)
			hDTO2.setCLASS3_NM("");
		if (hDTO2.getPOST_NAME() == null)
			hDTO2.setPOST_NAME("");
		return hDTO2;

	}

	@Override
	public int updateProc(ContactDbDTO contact) throws Exception {
		int updateResult = severdataDAO.updateProc(contact);
		if (updateResult == 1) {
			int insertHis = severdataDAO.insertHis(contact);
			if (insertHis == 1) {
				return 1;
			}
		}
		return 0;
	}

	// 업무구분
	@Override
	public List<HashMap<String, Object>> getFlagGubun(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getFlagGubun(cbDTO);
	}

	@Override
	public int omContactDbSEQ() throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.omContactDbSEQ();
	}

	@Override
	public void fileUploadDB(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		severdataDAO.fileUploadDB(hMap);
	}

	@Override
	public List<HashMap<String, Object>> getOmDbFileList(String db_seq) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getOmDbFileList(db_seq);
	}

	@Override
	public void deleteFile(String db_seq) throws Exception {
		// TODO Auto-generated method stub
		severdataDAO.deleteFile(db_seq);

	}

	@Override
	public List<HashMap<String, Object>> getAdminFlagGubun(ContactDbDTO cbDTO) throws Exception {
		// TODO Auto-generated method stub
		return severdataDAO.getAdminFlagGubun(cbDTO);
	}

	@Override
	public void scFileUploadDB(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		severdataDAO.scFileUploadDB(hMap);
	}

}