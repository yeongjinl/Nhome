package egovframework.gcall.dto;

public class ApiKeywordRankDTO {
	
	private String rqstId;
	private String kywd;
	private double wgvlVl;
	private double prord;
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
	public double getPrord() {
		return prord;
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
	public void setPrord(double prord) {
		this.prord = prord;
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

