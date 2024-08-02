<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>인사말 | 정부민원안내콜센터</title>
		
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
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top.jsp"/>
			
			<!-- 탑 서브메뉴 -->
			<c:import url="./common/subMenu.jsp"/>
            
            <main>
				<div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                        <div class='col-xs-12 col-md-10 col-md-offset-1 text-center intro_01'>
                            국민콜110 (정부민원안내) 홈페이지를 방문해 주셔서 감사합니다. 
                        </div>
                        
                        <div class='col-xs-12 col-md-10 col-md-offset-1 text-center intro_02'>
                            <img src="<c:url value='/images/egovframework/gcall/main/intro/intro01-02.png'/>" class='img-responsive' alt="국민콜 110 정부민원안내">
                        </div>
                        
                        <div class='col-xs-12 col-md-10 col-md-offset-1 intro_03 mcenter'>
                            국민권익위원회 국민콜110 (정부민원안내)는 정부 관련 문의사항을 상담·안내하는 서비스를 제공하고<br>
                            112, 119(긴급신고전화)로 접수되는 긴급하지 않은 전화를 처리합니다.<br>
                            국민이 각 행정기관의 콜센터 전화번호를 일일이 기억할 필요 없이 전국 어디서나 110번을 통해서 24시간<br>
                            상담·안내 받을 수 있습니다.<br>
                            <br>
                            항상 국민 여러분의 생생한 목소리에 귀를 기울이겠습니다.<br>
                            <br>
                            감사합니다.  
                            <div class='mb50 '></div>
                            <div class='text-right'>
                                국민콜110 일동
                                <!-- 센터장 전시현 <img src="<c:url value='/images/egovframework/gcall/main/intro/intro02-01.png'/>" alt="센터장 사인"> -->
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>