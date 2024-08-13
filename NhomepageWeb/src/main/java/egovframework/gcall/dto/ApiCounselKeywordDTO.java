package egovframework.gcall.dto;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "상담키워드 응답DTO")
public class ApiCounselKeywordDTO {
	
	@Schema(description = "상담순번")
	private String consSqno;
	
	@Schema(description = "요청ID")
	private String dmndId;
	
	@Schema(description = "결과자료")
	private double rsltDat;
	
	@Schema(description = "결과합계")
	private double rsltSum;
	
	@Schema(description = "상담일자")
	private String consDt;
	
	@Schema(description = "등록자ID")
	private String rgsrId;
	
	@Schema(description = "수정자ID")
	private String amndId;

	public String getConsSqno() {
		return consSqno;
	}

	public void setConsSqno(String consSqno) {
		this.consSqno = consSqno;
	}

	public String getDmndId() {
		return dmndId;
	}

	public void setDmndId(String dmndId) {
		this.dmndId = dmndId;
	}

	public double getRsltDat() {
		return rsltDat;
	}

	public void setRsltDat(double rsltDat) {
		this.rsltDat = rsltDat;
	}

	public double getRsltSum() {
		return rsltSum;
	}

	public void setRsltSum(double rsltSum) {
		this.rsltSum = rsltSum;
	}

	public String getConsDt() {
		return consDt;
	}

	public void setConsDt(String consDt) {
		this.consDt = consDt;
	}

	public String getRgsrId() {
		return rgsrId;
	}

	public void setRgsrId(String rgsrId) {
		this.rgsrId = rgsrId;
	}

	public String getAmndId() {
		return amndId;
	}

	public void setAmndId(String amndId) {
		this.amndId = amndId;
	}
	
	
}


