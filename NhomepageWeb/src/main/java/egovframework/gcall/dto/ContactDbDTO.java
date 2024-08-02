package egovframework.gcall.dto;

public class ContactDbDTO {
   private String DB_SEQ;
   private String TITLE;
   private String CONTENT;
   private String KEY_WORD;
   private String REG_DATE;
   private String REG_TIME;
   private String REG_ID;
   private String LST_UPDATE_DATE;
   private String LST_UPDATE_TIME;
   private String LST_UPDATE_ID;
   private String FLAG;
   private String PROVE_STATE;
   private String CONTACT_DB_GUBUN;
   private String RELATION_DEPT_NM;
   private String RELATION_DEPT_TEL;
   private String RELATION_DEPT_ADMIN;
   private String CON1_CD;
   private String CON2_CD;
   private String CON3_CD;
   private String CLASS1_CD;
   private String CLASS2_CD;
   private String CLASS3_CD;
   private String UPDATE_CNT;
   private String LST_UPDATE_MEMO;
   private String CON1_NEW_CD;
   private String CON2_NEW_CD;
   private String CON3_NEW_CD;
   private String VIEW_CNT;
   private String QUST_CNTN;
   //
   private String POST_NAME;
   private String USER_NM;
   private String FLAG_NAME;
   private String LST_DAY;
   private String CONTACT_DB_GUBUN_NAME;
   private String CLASS1_NM;
   private String CLASS2_NM;
   private String CLASS3_NM;
   private String CON1_NM;
   private String CON2_NM;
   private String CON3_NM;
   private String DB_HIS_SEQ;
   private String UPDATE_NM;
   private String REG_DAY;
   private String UPDATE_MEMO;

   private String CODE_ID;
   private String CODE_TYPE;
   private String CODE_NAME;
   private String PARENT_ID;
   private String SELECTED;
   //요청날짜
   private String tStartDate;
   private String tEndDate;
   //paging
   private int startlist;
   private int listsize;
   private String RN;
   
   //경로변수
   private String realFolder;
   
   
   
   
public String getRealFolder() {
	return realFolder;
}
public void setRealFolder(String realFolder) {
	this.realFolder = realFolder;
}
public String getRN() {
	return RN;
}
public void setRN(String rN) {
	RN = rN;
}
//사용자 team_cd
   private String POST_CD;
   
   public String getPOST_CD() {
   return POST_CD;
   }
	public void setPOST_CD(String pOST_CD) {
		POST_CD = pOST_CD;
	}
// 지식 디비 히스토리 부모 시퀀스
   private String PARENT_DB_SEQ;

   public String getPARENT_DB_SEQ() {
      return PARENT_DB_SEQ;
   }
   public void setPARENT_DB_SEQ(String pARENT_DB_SEQ) {
      PARENT_DB_SEQ = pARENT_DB_SEQ;
   }

   public String getCODE_NAME() {
      return CODE_NAME;
   }
   public void setCODE_NAME(String cODE_NAME) {
      CODE_NAME = cODE_NAME;
   }
   public String getCODE_ID() {
      return CODE_ID;
   }
   public void setCODE_ID(String cODE_ID) {
      CODE_ID = cODE_ID;
   }
   public String getCODE_TYPE() {
      return CODE_TYPE;
   }
   public void setCODE_TYPE(String cODE_TYPE) {
      CODE_TYPE = cODE_TYPE;
   }
   public String getPARENT_ID() {
      return PARENT_ID;
   }
   public void setPARENT_ID(String pARENT_ID) {
      PARENT_ID = pARENT_ID;
   }
   public String getSELECTED() {
      return SELECTED;
   }
   public void setSELECTED(String sELECTED) {
      SELECTED = sELECTED;
   }
   public String getDB_SEQ() {
      return DB_SEQ;
   }
   public void setDB_SEQ(String dB_SEQ) {
      DB_SEQ = dB_SEQ;
   }
   public String getTITLE() {
      return TITLE;
   }
   public void setTITLE(String tITLE) {
      TITLE = tITLE;
   }
   public String getCONTENT() {
      return CONTENT;
   }
   public void setCONTENT(String cONTENT) {
      CONTENT = cONTENT;
   }
   public String getKEY_WORD() {
      return KEY_WORD;
   }
   public void setKEY_WORD(String kEY_WORD) {
      KEY_WORD = kEY_WORD;
   }
   public String getREG_DATE() {
      return REG_DATE;
   }
   public void setREG_DATE(String rEG_DATE) {
      REG_DATE = rEG_DATE;
   }
   public String getREG_TIME() {
      return REG_TIME;
   }
   public void setREG_TIME(String rEG_TIME) {
      REG_TIME = rEG_TIME;
   }
   public String getREG_ID() {
      return REG_ID;
   }
   public void setREG_ID(String rEG_ID) {
      REG_ID = rEG_ID;
   }
   public String getLST_UPDATE_DATE() {
      return LST_UPDATE_DATE;
   }
   public void setLST_UPDATE_DATE(String lST_UPDATE_DATE) {
      LST_UPDATE_DATE = lST_UPDATE_DATE;
   }
   public String getLST_UPDATE_TIME() {
      return LST_UPDATE_TIME;
   }
   public void setLST_UPDATE_TIME(String lST_UPDATE_TIME) {
      LST_UPDATE_TIME = lST_UPDATE_TIME;
   }
   public String getLST_UPDATE_ID() {
      return LST_UPDATE_ID;
   }
   public void setLST_UPDATE_ID(String lST_UPDATE_ID) {
      LST_UPDATE_ID = lST_UPDATE_ID;
   }
   public String getFLAG() {
      return FLAG;
   }
   public void setFLAG(String fLAG) {
      FLAG = fLAG;
   }
   public String getPROVE_STATE() {
      return PROVE_STATE;
   }
   public void setPROVE_STATE(String pROVE_STATE) {
      PROVE_STATE = pROVE_STATE;
   }
   public String getCONTACT_DB_GUBUN() {
      return CONTACT_DB_GUBUN;
   }
   public void setCONTACT_DB_GUBUN(String cONTACT_DB_GUBUN) {
      CONTACT_DB_GUBUN = cONTACT_DB_GUBUN;
   }
   public String getRELATION_DEPT_NM() {
      return RELATION_DEPT_NM;
   }
   public void setRELATION_DEPT_NM(String rELATION_DEPT_NM) {
      RELATION_DEPT_NM = rELATION_DEPT_NM;
   }
   public String getRELATION_DEPT_TEL() {
      return RELATION_DEPT_TEL;
   }
   public void setRELATION_DEPT_TEL(String rELATION_DEPT_TEL) {
      RELATION_DEPT_TEL = rELATION_DEPT_TEL;
   }
   public String getRELATION_DEPT_ADMIN() {
      return RELATION_DEPT_ADMIN;
   }
   public void setRELATION_DEPT_ADMIN(String rELATION_DEPT_ADMIN) {
      RELATION_DEPT_ADMIN = rELATION_DEPT_ADMIN;
   }
   public String getCON1_CD() {
      return CON1_CD;
   }
   public void setCON1_CD(String cON1_CD) {
      CON1_CD = cON1_CD;
   }
   public String getCON2_CD() {
      return CON2_CD;
   }
   public void setCON2_CD(String cON2_CD) {
      CON2_CD = cON2_CD;
   }
   public String getCON3_CD() {
      return CON3_CD;
   }
   public void setCON3_CD(String cON3_CD) {
      CON3_CD = cON3_CD;
   }
   public String getCLASS1_CD() {
      return CLASS1_CD;
   }
   public void setCLASS1_CD(String cLASS1_CD) {
      CLASS1_CD = cLASS1_CD;
   }
   public String getCLASS2_CD() {
      return CLASS2_CD;
   }
   public void setCLASS2_CD(String cLASS2_CD) {
      CLASS2_CD = cLASS2_CD;
   }
   public String getCLASS3_CD() {
      return CLASS3_CD;
   }
   public void setCLASS3_CD(String cLASS3_CD) {
      CLASS3_CD = cLASS3_CD;
   }
   public String getUPDATE_CNT() {
      return UPDATE_CNT;
   }
   public void setUPDATE_CNT(String uPDATE_CNT) {
      UPDATE_CNT = uPDATE_CNT;
   }
   public String getLST_UPDATE_MEMO() {
      return LST_UPDATE_MEMO;
   }
   public void setLST_UPDATE_MEMO(String lST_UPDATE_MEMO) {
      LST_UPDATE_MEMO = lST_UPDATE_MEMO;
   }
   public String getCON1_NEW_CD() {
      return CON1_NEW_CD;
   }
   public void setCON1_NEW_CD(String cON1_NEW_CD) {
      CON1_NEW_CD = cON1_NEW_CD;
   }
   public String getCON2_NEW_CD() {
      return CON2_NEW_CD;
   }
   public void setCON2_NEW_CD(String cON2_NEW_CD) {
      CON2_NEW_CD = cON2_NEW_CD;
   }
   public String getCON3_NEW_CD() {
      return CON3_NEW_CD;
   }
   public void setCON3_NEW_CD(String cON3_NEW_CD) {
      CON3_NEW_CD = cON3_NEW_CD;
   }
   public String getVIEW_CNT() {
      return VIEW_CNT;
   }
   public void setVIEW_CNT(String vIEW_CNT) {
      VIEW_CNT = vIEW_CNT;
   }
   public String getQUST_CNTN() {
      return QUST_CNTN;
   }
   public void setQUST_CNTN(String qUST_CNTN) {
      QUST_CNTN = qUST_CNTN;
   }
   public String getPOST_NAME() {
      return POST_NAME;
   }
   public void setPOST_NAME(String pOST_NAME) {
      POST_NAME = pOST_NAME;
   }
   public String getUSER_NM() {
      return USER_NM;
   }
   public void setUSER_NM(String uSER_NM) {
      USER_NM = uSER_NM;
   }
   public String getFLAG_NAME() {
      return FLAG_NAME;
   }
   public void setFLAG_NAME(String fLAG_NAME) {
      FLAG_NAME = fLAG_NAME;
   }
   public String getLST_DAY() {
      return LST_DAY;
   }
   public void setLST_DAY(String lST_DAY) {
      LST_DAY = lST_DAY;
   }
   public String getCONTACT_DB_GUBUN_NAME() {
      return CONTACT_DB_GUBUN_NAME;
   }
   public void setCONTACT_DB_GUBUN_NAME(String cONTACT_DB_GUBUN_NAME) {
      CONTACT_DB_GUBUN_NAME = cONTACT_DB_GUBUN_NAME;
   }
   public String getCLASS1_NM() {
      return CLASS1_NM;
   }
   public void setCLASS1_NM(String cLASS1_NM) {
      CLASS1_NM = cLASS1_NM;
   }
   public String getCLASS2_NM() {
      return CLASS2_NM;
   }
   public void setCLASS2_NM(String cLASS2_NM) {
      CLASS2_NM = cLASS2_NM;
   }
   public String getCLASS3_NM() {
      return CLASS3_NM;
   }
   public void setCLASS3_NM(String cLASS3_NM) {
      CLASS3_NM = cLASS3_NM;
   }
   public String getCON1_NM() {
      return CON1_NM;
   }
   public void setCON1_NM(String cON1_NM) {
      CON1_NM = cON1_NM;
   }
   public String getCON2_NM() {
      return CON2_NM;
   }
   public void setCON2_NM(String cON2_NM) {
      CON2_NM = cON2_NM;
   }
   public String getCON3_NM() {
      return CON3_NM;
   }
   public void setCON3_NM(String cON3_NM) {
      CON3_NM = cON3_NM;
   }
   public String getDB_HIS_SEQ() {
      return DB_HIS_SEQ;
   }
   public void setDB_HIS_SEQ(String dB_HIS_SEQ) {
      DB_HIS_SEQ = dB_HIS_SEQ;
   }
   public String getUPDATE_NM() {
      return UPDATE_NM;
   }
   public void setUPDATE_NM(String uPDATE_NM) {
      UPDATE_NM = uPDATE_NM;
   }
   public String getREG_DAY() {
      return REG_DAY;
   }
   public void setREG_DAY(String rEG_DAY) {
      REG_DAY = rEG_DAY;
   }
   public String getUPDATE_MEMO() {
      return UPDATE_MEMO;
   }
   public void setUPDATE_MEMO(String uPDATE_MEMO) {
      UPDATE_MEMO = uPDATE_MEMO;
   }
	public String gettStartDate() {
		return tStartDate;
	}
	public void settStartDate(String tStartDate) {
		this.tStartDate = tStartDate;
	}
	public String gettEndDate() {
		return tEndDate;
	}
	public void settEndDate(String tEndDate) {
		this.tEndDate = tEndDate;
	}
   public int getStartlist() {
		return startlist;
	}
	public void setStartlist(int startlist) {
		this.startlist = startlist;
	}
	public int getListsize() {
		return listsize;
	}
	public void setListsize(int listsize) {
		this.listsize = listsize;
	}


}