package egovframework.gcall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.gcall.dto.ContactDbDTO;

public interface SeverDataService {

	int contactDbInsert(ContactDbDTO conteact) throws Exception;

	List<ContactDbDTO> getProveView(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getDbGubun(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getClassGubunL(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getClassGubunM(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getClassGubunS(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getConGubunL(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getConGubunM(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getConGubunS(ContactDbDTO cbDTO) throws Exception;

	public int getProveViewCount(ContactDbDTO cbDTO) throws Exception;

	List<HashMap<String, Object>> getpopupflag(HashMap<String, Object> hmap)throws Exception;

	List<HashMap<String, Object>> getpopupclass(HashMap<String, Object> hmap)throws Exception;

	ContactDbDTO getlistDetail(ContactDbDTO dDTO)throws Exception;
	//네이버 연계
	int insertNaverProve(ContactDbDTO dDTO)throws Exception;

    int deleteNaverProve(ContactDbDTO dDTO)throws Exception;

    int updateState(ContactDbDTO dDTO)throws Exception;

    List<HashMap<String, Object>> getHislist(ContactDbDTO dDTO)throws Exception;

    public int getHislistCount(ContactDbDTO cbDTO) throws Exception;

    ContactDbDTO getHisDetail(ContactDbDTO hDTO)throws Exception;

	int updateProc(ContactDbDTO contact)throws Exception;

	List<HashMap<String, Object>> getFlagGubun(ContactDbDTO cbDTO)throws Exception;

	int omContactDbSEQ() throws Exception;

	void fileUploadDB(HashMap<String, Object> hMap) throws Exception;

	List<HashMap<String, Object>> getOmDbFileList(String db_seq) throws Exception;

	void deleteFile(String db_seq) throws Exception;

	List<HashMap<String, Object>> getAdminFlagGubun(ContactDbDTO cbDTO)throws Exception;

	void scFileUploadDB(HashMap<String, Object> hMap)throws Exception;
}
