package egovframework.gcall.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LgnHistoryDTO2 {
	private String LGN_HSTR_ID;
	private String USER_ID;
	private String IP_ADDR;
	private String RGSN_DTTM; 
    private LoginStatus STATUS;
    private String PROCESS_URI;
  //로그인 상태를 나타내는 enum 클래스
    public enum LoginStatus {
    	 LOGIN("로그인"),
    	 LOGOUT("로그아웃"),
    	 LOGIN_FAILURE("로그인실패");
    	 
    	 private String status;
    	
    	 LoginStatus(String status){
    		 this.status = status;
    	 }
    	 
    	 public String getSTATUS() {
			return status;
		}
    	 
    }
    
	public LgnHistoryDTO2(LgnHistoryDTO2Builder lgnHistoryDTO2Builder) {
		this.LGN_HSTR_ID = lgnHistoryDTO2Builder.LGN_HSTR_ID;
		this.USER_ID = lgnHistoryDTO2Builder.USER_ID;
		this.IP_ADDR = lgnHistoryDTO2Builder.IP_ADDR;
		this.RGSN_DTTM = lgnHistoryDTO2Builder.RGSN_DTTM;
        this.STATUS = lgnHistoryDTO2Builder.STATUS;
        this.PROCESS_URI = lgnHistoryDTO2Builder.PROCESS_URI;

	}
	
	
	
	public static class LgnHistoryDTO2Builder{
		private final String LGN_HSTR_ID;
		private final String USER_ID;
		private final String IP_ADDR;
		private String RGSN_DTTM;
        private final LoginStatus STATUS;
        private final String PROCESS_URI;
		
		public LgnHistoryDTO2Builder(String LGN_HSTR_ID, String USER_ID, String IP_ADDR, Timestamp RGSN_DTTM, LoginStatus STATUS, String PROCESS_URI) {
			this.LGN_HSTR_ID = generateLgnHstrId();
			this.USER_ID = USER_ID;
			this.IP_ADDR = IP_ADDR;
			this.RGSN_DTTM = generateLgnHstrId();
			this.STATUS = STATUS;
			this.PROCESS_URI = PROCESS_URI;
		}
		
		public LgnHistoryDTO2Builder(String LGN_HSTR_ID, String USER_ID, String IP_ADDR, LoginStatus STATUS, String PROCESS_URI) {
			this.LGN_HSTR_ID = generateLgnHstrId();
			this.USER_ID = USER_ID;
			this.IP_ADDR = IP_ADDR;
			this.STATUS = STATUS;
			this.PROCESS_URI = PROCESS_URI;
		}
		
		public LgnHistoryDTO2 build() {
			return new LgnHistoryDTO2(this);
		}
	}

	public String getLGN_HSTR_ID() {
		return LGN_HSTR_ID;
	}


	public String getUSER_ID() {
		return USER_ID;
	}


	public String getIP_ADDR() {
		return IP_ADDR;
	}
	

	public static String generateLgnHstrId() {
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
    	String currentTime = dateFormat.format(new Date());
    	return "LOG" + currentTime;
    }


	public String getRGSN_DTTM() {
		return RGSN_DTTM;
	}
	
	
}


