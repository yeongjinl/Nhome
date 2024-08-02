<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		
		<title>사이트맵 | 정부민원안내콜센터</title>
		
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
			
			<div class='topImage topImage9'>
				<div class='limitWrap'>
					<img src="<c:url value='/images/egovframework/gcall/main/sitemap/topImg.png'/>" class='img-responsive' alt="SITEMAP 국민의 행복을 함께 만들어 갑니다.">
				</div>
			</div>
			
			<main>
                <div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                    
                        <div class='subContentWrap sitemap'>
                                <div class='col-xs-6 col-md-3 block'>
                                    <div class='ttl ttl1'>상담안내</div>
                                    <div class='item'></div>
                                    <div class='item'><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></div>
                                    <div class='item'><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></div>
                                    <div class='item'><a href="<c:url value='/consult/sms.do'/>">문자상담</a></div>
                                    <div class='item'><a href="<c:url value='/consult/cam.do'/>">수어상담</a></div>
                                    <%-- <div class='item'><a href="<c:url value='/consult/reserve.do'/>">예약상담</a></div> --%>
                                    <div class='item'><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></div>
                                </div>
                                
                                <div class='col-xs-6 col-md-3 block'>
                                    <div class='ttl ttl2'>알림마당</div>
                                    <div class='item'></div>
                                    <div class='item'><a href="<c:url value='/board/notice.do'/>">공지사항</a></div>
                                    <div class='item'><a href="<c:url value='/board/news.do'/>">보도자료</a></div>
                                    <div class='item'><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></div>
                                </div>
                            
                            <div class='row visible-xs visible-sm'></div>
                                <div class='col-xs-6 col-md-3 block'>
                                    <div class='ttl ttl3'>자료마당</div>
                                    <div class='item'></div>
                                    <div class='item'><a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></div>
                                    <div class='item'><a href="<c:url value='/data/story.do'/>">상담사연</a></div>
                                    <div class='item'><a href="<c:url value='/data/law.do'/>">법령정보</a></div>
                                    <div class='item'></div>
                                </div>
                                
                                <div class='col-xs-6 col-md-3 block'>
                                    <div class='ttl ttl4'>센터소개</div>
                                    <div class='item'></div>
                                    <div class='item'><a href="<c:url value='/intro/center.do'/>">국민콜110소개</a></div>
                                    <div class='item'><a href="<c:url value='/intro/greetings.do'/>">인사말</a></div>
                                    <div class='item'><a href="<c:url value='/intro/history.do'/>">연혁</a></div>
                                    <div class='item'><a href="<c:url value='/intro/location.do'/>">위치안내</a></div>
                                </div>
                            
                            
                        </div>
                            
                    </div>
                </div>
            </main>
            
			<c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>