<%-- <%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=utf-8" %>
<% Map<String, Object> sessionUI = (Map<String, Object>)session.getAttribute("ss_user_info");
	String sUserId		= "";
	if(sessionUI != null) {
		sUserId		= (String) sessionUI.get("USER_ID");
	}
%>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈페이지관리</title>
<!-- 외부 라이브러리 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/main/font.css">
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/bootstrap.min.js"></script>

<!-- 자체 라이브러리 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/css.css">
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/script.js"></script>
<script type="text/javascript">
	alert("최초 로그인 시 비밀번호를 수정합니다.");
</script>
</head>
<body>
	<div class='loginPage'>
		<div class='loginWrap'>
			<div class='logo'><img src='<%=request.getContextPath()%>/images/egovframework/gcall/sjsimage/login/logo.png' alt=""></div>
			<div class='box'>

				<div class='title'>로그인 정보변경</div>
				<div class='subtitle'>최초 로그인 시 비밀번호를 수정합니다.</div>

				<div class='label'><label for="now_pw">현재 비밀번호</label></div>
				<input type='password' name='pw' id='now_pw' class='form-control input-lg'>

				<div class='label'><label for="pw">비밀번호</label></div>
				<input type='password' name='pw' id='pw' class='form-control input-lg'>

				<div class='label clear'><label for="pwChk">비밀번호 확인</label></div>
				<input type='password' name='pwChk' id='pwChk' class='form-control input-lg'>

				<div class='btnWrap'>
					<button id="loginButton" class='btn btn-lg btn-success'>변경</button>
				</div>
			</div>
			<div class='comment'>홈페이지 개선 사항은 6196-9091으로 연락바랍니다.</div>
		</div>
	</div>
	<script>
	$('#loginButton').click(function(){
		if($('#now_pw').val()==""){
			alert("현재 비밀번호를 입력해주세요");
			return false;
		}else if($('#pw').val()==""){
			alert("새 비밀번호를 입력해주세요");
			return false;
		}else if($('#pwChk').val()==""){
			alert("새 비밀번호를 입력해주세요");
			return false;
		}else if($('#pw').val()!=$('#pwChk').val()){
			alert("비밀번호가 일치하지 않습니다.");
			$('#pwChk').val()=="";
		}
 		$.ajax({
			type: "POST",
			url: "<%=request.getContextPath()%>/g110/adminLoginProc.do",
			data: {
				id:'<%=sUserId%>',
				now_pw:$('#now_pw').val(),
				pw:$('#pw').val(),
				pwChk:$('#pwChk').val()
			},
			success: function(res) {
				res = JSON.parse(res);
				if(res._error == true) {
					alert('실패하였습니다. 다시 확인하세요!');
				}
				if(res._error == false){
					location.href = "<%=request.getContextPath()%>/g110/adm.do";
				}
			}, error: function(err) {
				alert('실패하였습니다. 다시 확인하세요!');
			}
		});
	})
</script>
</body>
</html> --%>