package egovframework.gcall.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.gcall.dto.ContactDbDTO;

@Repository("SeverDataDAO")
public class SeverDataDAO extends EgovComAbstractDAO {

	public int contactDbInsert(ContactDbDTO conteact) {
		return insert("SeverDataDAO.contactDbInsert", conteact);
	}

	// 승인 0 , 1 , 9
	public List<ContactDbDTO> getProveView(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getProveView", cbDTO);
	}

	// 지식 DB 구분
	public List<HashMap<String, Object>> getDbGubun(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getDbGubun", cbDTO);
	}

	// 기관 대중소 분류
	public List<HashMap<String, Object>> getClassGubunL(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getClassGubunL", cbDTO);
	}

	public List<HashMap<String, Object>> getClassGubunM(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getClassGubunM", cbDTO);
	}

	public List<HashMap<String, Object>> getClassGubunS(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getClassGubunS", cbDTO);
	}

	//업무 대중소 분류
	public List<HashMap<String, Object>> getConGubunL(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getConGubunL", cbDTO);
	}
	public List<HashMap<String, Object>> getConGubunM(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getConGubunM", cbDTO);
	}

	public List<HashMap<String, Object>> getConGubunS(ContactDbDTO cbDTO) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getConGubunS", cbDTO);
	}

    public int getProveViewCount(ContactDbDTO cbDTO) throws Exception {
    	return selectOne("SeverDataDAO.getProveViewCount", cbDTO);
    }

	public ContactDbDTO getlistDetail(ContactDbDTO dDTO) {
		// TODO Auto-generated method stub
		//뷰 카운트
		update("SeverDataDAO.detailViewCount",dDTO);
		return selectOne("SeverDataDAO.getlistDetail",dDTO);
	}
	public List<HashMap<String, Object>> getpopupflag(HashMap<String, Object> hmap) {
      return selectList("SeverDataDAO.getpopupflag",hmap);
   }

   public List<HashMap<String, Object>> getpopupclass(HashMap<String, Object> hmap) {
      return selectList("SeverDataDAO.getpopupclass",hmap);
   }
   //네이버 승인
   public int insertNaverProve(ContactDbDTO dDTO) {
      // TODO Auto-generated method stub
      return update("SeverDataDAO.insertNaverProve",dDTO);
   }

   //네이버 거부
   public int updateNaverDenied(ContactDbDTO dDTO) {
       return update("SeverDataDAO.insertNaverProve",dDTO);
   }

   public int updateState(ContactDbDTO dDTO) {
      // TODO Auto-generated method stub
      return update("SeverDataDAO.insertNaverProve",dDTO);
   }

   public List<HashMap<String, Object>> getHislist(ContactDbDTO dDTO) {

      return selectList("SeverDataDAO.getHislist",dDTO);
   }

   public int getHislistCount(ContactDbDTO cbDTO) throws Exception {
	   return selectOne("SeverDataDAO.getHislistCount", cbDTO);
   }

   public ContactDbDTO getHisDetail(ContactDbDTO hDTO) {
      return selectOne("SeverDataDAO.getHisDetail",hDTO);
   }

	public int updateProc(ContactDbDTO contact) {
		return update("SeverDataDAO.updateProc",contact);
	}

	public int insertHis(ContactDbDTO contact) {
		return insert("SeverDataDAO.insertHis",contact);
	}

	public List<HashMap<String, Object>> getFlagGubun(ContactDbDTO cbDTO) {
		return selectList("SeverDataDAO.getFlagGubun",cbDTO);
	}

	public int omContactDbSEQ() {
		// TODO Auto-generated method stub
		return selectOne("SeverDataDAO.omContactDbSEQ");
	}

	public void fileUploadDB(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		insert("SeverDataDAO.fileUploadDB",hMap);
	}

	public List<HashMap<String, Object>> getOmDbFileList(String db_seq) {
		// TODO Auto-generated method stub
		return selectList("SeverDataDAO.getOmDbFileList",db_seq);
	}

	public void deleteFile(String db_seq) {
		// TODO Auto-generated method stub
		delete("SeverDataDAO.deleteFile",db_seq);

	}

	public List<HashMap<String, Object>> getAdminFlagGubun(ContactDbDTO cbDTO) {
		return selectList("SeverDataDAO.getAdminFlagGubun",cbDTO);
	}

	public void scFileUploadDB(HashMap<String, Object> hMap) {
		// TODO Auto-generated method stub
		insert("SeverDataDAO.scFileUploadDB",hMap);
	}
}