/*********************************************************
 * 로그인 페이지
*********************************************************/


function fnLogin(){
	if(!$("#loginID").val()){
		alert("아이디를 입력해 주세요.");
		$("#loginID").focus();
		return false;
	}
	
	if(!$("#loginPW").val()){
		alert("비밀번호를 입력해 주세요.");
		$("#loginPW").focus();
		return false;
	}
	
	return true;
	
	
}