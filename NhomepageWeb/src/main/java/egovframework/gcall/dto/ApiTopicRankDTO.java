package egovframework.gcall.dto;

public class ApiTopicRankDTO {
	
	// 연관어 Graph 연계
	
	
	
	// 연관어 키워드 결과
	
	private String rqstId;
	private String kywd;
	private double wgvlVl;
	private double riseRank;
	private double frq;
	private double bfrRank;
	private double scr;
	
	
	public String getRqstId() {
		return rqstId;
	}
	public String getKywd() {
		return kywd;
	}
	public double getWgvlVl() {
		return wgvlVl;
	}
	public double getRiseRank() {
		return riseRank;
	}
	public double getFrq() {
		return frq;
	}
	public double getBfrRank() {
		return bfrRank;
	}
	public double getScr() {
		return scr;
	}
	
	
	public void setRqstId(String rqstId) {
		this.rqstId = rqstId;
	}
	public void setKywd(String kywd) {
		this.kywd = kywd;
	}
	public void setWgvlVl(double wgvlVl) {
		this.wgvlVl = wgvlVl;
	}
	public void setRiseRank(double riseRank) {
		this.riseRank = riseRank;
	}
	public void setFrq(double frq) {
		this.frq = frq;
	}
	public void setBfrRank(double bfrRank) {
		this.bfrRank = bfrRank;
	}
	public void setScr(double scr) {
		this.scr = scr;
	}
	
}


