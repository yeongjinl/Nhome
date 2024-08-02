<%@ page contentType="text/html; charset=utf-8" %>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>홈페이지관리</title>
<!-- 외부 라이브러리 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/main/font.css">
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/bootstrap.min.js"></script>

<!-- 자체 라이브러리 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/css.css">
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/script.js"></script>
</head>
<body>
	<div class='loginPage'>
		<div class='loginWrap'>
			<div class='logo'><img src='<%=request.getContextPath()%>/images/egovframework/gcall/sjsimage/login/logo.png' alt="g110Logo"></div>
			<div class='box'>

				<div class='title'>시스템 로그인</div>
				<div class='subtitle'>110정부민원안내 콜센터 관리자는 현재의<br>콜센터 상담 아이디로 로그인 가능합니다.</div>

				<label for="loginID"  style="width:100%">사용자 ID</label>
				<input type='text' name='loginID' id='loginID'  class='form-control input-lg' >
				<label for="loginPW" style="width:100%">비밀번호</label>
				<input type='password' name='loginPW' id='loginPW' class='form-control input-lg' onkeydown="login_keydown()">
				<div class='btnWrap'>
					<button id="loginButton" class='btn btn-lg btn-success' onclick='fnGetLogin()'>로그인</button>
				</div>
			</div>
			<div class='comment'>홈페이지 개선 사항은 6196-9091으로 연락바랍니다.</div>
		</div>
	</div>
<script>
	function fnGetLogin() {
		if($('#loginID').val()==""){
			alert("아이디를 입력해주세요");
			return false;
		}else if($('#loginPW').val()==""){
			alert("비밀번호를를 입력해주세요");
			return false;
		}
		$.ajax({
			type: "POST",
			url: "<%=request.getContextPath()%>/g110/loginRetrieve.do",
			data: {
				loginID:$('#loginID').val(),
				loginPW:$('#loginPW').val()
			},
			success: function(res) {
				res = JSON.parse(res);
 				if(res._error == true) {
 					if(res.accountStatus === 'ACCOUNT_CHECK'){
 						alert('아이디 또는 패스워드를 확인하세요!');
 					}else if(res.accountStatus === 'ACCOUNT_LOCKED_ON_FAILED') {
 						alert("패스워드 5회 이상 오류입니다. 관리자에게 문의 해주세요.");	
 					} else {
 						alert('아이디 또는 패스워드를 확인하세요!');	
 					}
				}
				if(res._error == false){
					if(res._message =="first login") {
						location.href = "<%=request.getContextPath()%>/g110/adminFirstLogin.do";
					} else if(res._message =="pw update") {
						location.href = "<%=request.getContextPath()%>/g110/adminPwUpdate.do";
					} else {
						location.href = "<%=request.getContextPath()%>/g110/adm.do";
					}
				}
			}
		});
	}
	/* 비밀번호 입력 후 엔터키 누름 이벤트 */
	function login_keydown() {
		if(window.event.keyCode == 13) {
			fnGetLogin();
		}
	}
</script>
</body>
</html>