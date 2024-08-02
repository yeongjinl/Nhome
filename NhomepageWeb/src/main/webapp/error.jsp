<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, user-scalable=no"> 
		
		<title>정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
	</head>
	
	<body>
		<div class='errorPage'>
			<div class='box'>
				<span class='error_code'>404</span><br>
				HTTP ERROR<br>
				<img src="<c:url value='/images/egovframework/gcall/main/error.png'/>">
				<br>
				찾을 수 없는 페이지입니다.<br>요청하신 페이지가 사라졌거나 잘못된 경로로 이용하셨습니다.
			</div>
			
			<button class='btn btn-primary btn-lg' onclick='history.back(-2)'>이전페이지</button>
		</div>
	</body>
</html>