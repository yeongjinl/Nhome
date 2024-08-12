package egovframework.gcall.dto;

public class ApiKeywordRankDTO {
	
	private String requestId;
	private String term;
	private double score;
	private double df;
	private double weight;
	private double rank;
    private double beforeRank;
    
    
	public String getRequestId() {
		return requestId;
	}
	public String getTerm() {
		return term;
	}
	public double getScore() {
		return score;
	}
	public double getDf() {
		return df;
	}
	public double getWeight() {
		return weight;
	}
	public double getRank() {
		return rank;
	}
	public double getBeforeRank() {
		return beforeRank;
	}
	
	
	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public void setDf(double df) {
		this.df = df;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public void setRank(double rank) {
		this.rank = rank;
	}
	public void setBeforeRank(double beforeRank) {
		this.beforeRank = beforeRank;
	}
    
}


