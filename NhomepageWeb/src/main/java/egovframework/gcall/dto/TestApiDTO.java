package egovframework.gcall.dto;

public class TestApiDTO {
	private double score;
	private double df;
	private double weight;
	private double rank;
    private String term;
    private double beforeRank;
    
    
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
	public String getTerm() {
		return term;
	}
	public double getBeforeRank() {
		return beforeRank;
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
	public void setTerm(String term) {
		this.term = term;
	}
	public void setBeforeRank(double beforeRank) {
		this.beforeRank = beforeRank;
	}
	
	
	@Override
	public String toString() {
		return "TestApiDTO [score=" + score + ", df=" + df + ", weight=" + weight + ", rank=" + rank + ", term=" + term
				+ ", beforeRank=" + beforeRank + "]";
	}
	
}


