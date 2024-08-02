<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String urlTest = request.getScheme() + "://" + request.getServerName(); %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>URL 테스트 | 정부민원안내콜센터</title>
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		
		<script>
			$(function() {
				
				// 상담가능시간 체크
				$.ajax({
					type: "POST",
					url: "<c:url value='/consult/camCheck.do'/>",
					data: {},
					dataType: "json",
					success: function(res) {
						
						if(res._error) alert(res._message); 
						else {
							// 수어상담
						}
						
					}, error: function(err) {
						console.log("error : " + JSON.stringify(err));
						alert("[ERROR]" + "\n status : " + err.status + "\n text : " + err.statusText);
					}
				});
			});
		</script>
    </head>
    
	<body>
        <%= urlTest %>
	</body>
</html>