package egovframework.gcall.dto;

public class ResultDTO {
	private Boolean _error;
	private String _message;
	private int _count;
	private AccountStatus accountStatus;
	

    public enum AccountStatus {
        ACCOUNT_CHECK("아이디 또는 패스워드를 확인하세요!"),
        ACCOUNT_LOCKED_ON_FAILED("패스워드 5회 이상 오류입니다. 관리자에게 문의 해주세요.");

        private final String description;

        AccountStatus(String description) {
            this.description = description;
        }

        public String getDescription() {
            return description;
        }
    }
	
	public Boolean get_error() {
		return _error;
	}
	public void set_error(Boolean _error) {
		this._error = _error;
	}
	public String get_message() {
		return _message;
	}
	public void set_message(String _message) {
		this._message = _message;
	}
	public int get_count() {
		return _count;
	}
	public void set_count(int _count) {
		this._count = _count;
	}
	
	public AccountStatus getAccountStatus() {
        return accountStatus;
	}

    public void setAccountStatus(AccountStatus accountStatus) {
        this.accountStatus = accountStatus;
    }
	
}
