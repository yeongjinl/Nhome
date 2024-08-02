<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>법령정보 | 정부민원안내콜센터</title>
		
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
                        <div class='mainTitle'>법령정보</div>
                        
                        <div class='row lawInfoTable'>
                            <div class=' col-xs-12 col-md-6'>
                                <img src="<c:url value='/images/egovframework/gcall/main/data/img01.png'/>" class='img-responsive' alt="찾기쉬운 생활법령 정보">
                                
                                <span class='ttl'>생활법령정보안내</span>
                                
                                국민이 실생활에 필요한 법령을 쉽게 찾아보고 이해할 수 있도록 정부 각 기관의 업무 중심으로 복잡하게
                                얽힌 법령간의 관계를 국민의 생활 중심으로 재분류하고, 전문가의 시각에서 씌여진 어려운 법령의 내용을
                                국민의 눈높이에서 쉽게 해설하여 제공하는 새로운 법령정보 서비스 제공 시스템입니다.  
                                <br>
                                <div class='btn-wrap'>
                                <a href="http://www.easylaw.go.kr/CSP/Main.laf" target="_blank" title="새창열림">바로가기 <i class='fa fa-long-arrow-alt-right'></i></a>
                                </div>
                            </div>
                            
                            <div class=' col-xs-12 col-md-6'>
                                <img src="<c:url value='/images/egovframework/gcall/main/data/img02.png'/>" class='img-responsive' alt="국가법령정보센터">
                                
                                <span class='ttl'>국가법령정보센터</span>
                                    
                                    종합법령정보센터는 법령정보와 관련된 법제처에서 생산된 법령정보와 정보기관의 법 관련정보를 종합하여 대국민 서비스하는 사이트입니다.<br>
                                    <br>
                                    제공되는 법령관련 정보에는<br>
                                    1. 현행법령, 연혁법령(1948), 근대법령(1948, 1894: 단계적 추진 중)<br>
                                    2. 최근개정법령[현행화 되지 않은 최근에 개정된 법령], 입법예고<br>
                                    3. 월간법제, 법률교육자료, 법령해석질의응답, 대한민국법제50년사<br>
                                    4. 판례정보(대법원), 조약정보(외교통상부)<br>
                                    5. 기타 법 관련기관 연계정보 
                                    <br>
                                    <div class='btn-wrap'>
                                    <a href="http://www.law.go.kr/main.html" target="_blank" title="새창열림">바로가기 <i class='fa fa-long-arrow-alt-right'></i></a>
                                    </div>
                                        
                            </div>
                        </div>
                        
                            
                    </div>
                </div>
            </main>

            <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>