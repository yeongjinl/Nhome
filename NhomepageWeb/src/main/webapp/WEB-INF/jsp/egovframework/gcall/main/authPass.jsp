<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		
		<title>성공 | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		
		<script type="text/javascript">
			$(function() {
				// 본인인증 팝업 실행
				var frm = createFrm("popupFrm", 'POST', "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb", "popupChk")
			    frm = createInput(frm, "m", "checkplusSerivce");
				frm = createInput(frm, "EncodeData", "${sEncData}");
				document.body.insertBefore(frm, null);
				
				/* var popchk = window.open("", "popupChk", "width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
				if(popchk == null) {
					alert("팝업이 차단되어있습니다.");
					return false;
				} */
				
				frm.submit();
			});
		</script>
	</head>
	
	<body>
	</body>
</html>