<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">

		<!-- 검색 수집용 -->
		<meta name='keywords' content='정부민원안내콜센터, 국민콜110, 국민권익위원회, 카카오톡상담, 채팅상담, 전화상담, 수어상담, 갑질피해상담'>
		<meta name='description' content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.' />
		<meta name='copyright' content='© Copyright 2006-2022 국민콜110(정부민원안내) All Rights Reserved.' />
		<meta name='robots' content='index,follow' />
		<meta name='viewport' content='width=480, maximum-scale=1.0, user-scalable=no' />
		<meta property='og:url'                content='https://www.110.go.kr/' />
		<meta property='og:type'               content='website' />
		<meta property='og:title'              content='정부민원안내콜센터' />
		<meta property='og:description'        content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.' />
		<meta property='og:image'              content='/images/egovframework/gcall/main_new/kakao.jpg' />
		<meta name='twitter:card' content='summary'>
		<meta name='twitter:title' content='정부민원안내콜센터'>
		<meta name='twitter:url' content='https://www.110.go.kr/'>
		<meta name='twitter:image' content='/images/egovframework/gcall/main_new/kakao.jpg'>
		<meta name='twitter:description' content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.'/>
		
		<!-- favicon-->
		<link rel = "shortcut icon" href = "/images/egovframework/gcall/main_new/favicon.jpg">
				
		<title>정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="/plugin/font/font.css">
		<link rel="stylesheet" href="/plugin/fontawesome/css/all.css">
		<link rel="stylesheet" href="/plugin/themify/themify-icons.css" >

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/base.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/grid.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/common.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/jquery-ui.css">

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/css.css">
		
		<!-- js 라이브러리 -->
		<script src="/js/egovframework/gcall/main/jquery-3.4.1.min.js"></script>
		<script src="/js/egovframework/gcall/main/jquery-ui.js"></script>
		<script src="/js/egovframework/gcall/main/scriptN.js"></script>
		<script type="text/javascript">
			var navUrl = "sitemap";
		</script>
	</head>
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
	<!-- 탑메뉴 -->
	<!-- sec-header -->
			<c:import url="../common/top_new.jsp"/>
            
			<main class='mainWrap'>
				<c:import url="../common/sideMenu.jsp"/>
				<!-- quick_wrap -->


                <div class='contentArea' id='contentArea'><div class='container'>
						<div class="sub-visual subv-1 mgb-50">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','사이트맵')" onmouseout="fn_mouseOut('24')">사이트맵</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
						</div><!-- sub-visual -->   


                    <div class='limitWrap'>
                    
                        <div class='row sitemap'>
                                <div class='col-xs-6 col-md-3 block'>
                                    <div tabindex="26" onmouseover="fn_mouseOver('26','상담안내')" onmouseout="fn_mouseOut('26')" class='ttl ttl1'>상담안내</div>

                                    <div class='item'><a tabindex="27" onmouseover="fn_mouseOver('27','상담이용안내')" onmouseout="fn_mouseOut('27')" href="<c:url value='/consult/manual.do'/>">상담이용안내</a></div>
                                    <div class='item'><a tabindex="28" onmouseover="fn_mouseOver('28','채팅상담')" onmouseout="fn_mouseOut('28')" href="<c:url value='/consult/chat.do'/>">채팅상담</a></div>
                                    <div class='item'><a tabindex="29" onmouseover="fn_mouseOver('29','문자상담')" onmouseout="fn_mouseOut('29')" href="<c:url value='/consult/sms.do'/>">문자상담</a></div>
                                    <div class='item'><a tabindex="30" onmouseover="fn_mouseOver('30','수어상담')" onmouseout="fn_mouseOut('30')" href="<c:url value='/consult/cam.do'/>">수어상담</a></div>
                                    <div class='item'><a tabindex="31" onmouseover="fn_mouseOver('31','갑질피해상담')" onmouseout="fn_mouseOut('31')" href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></div>
                                </div>
                                
                                <div class='col-xs-6 col-md-3 block'>
                                    <div tabindex="32" onmouseover="fn_mouseOver('32','알림마당')" onmouseout="fn_mouseOut('32')" class='ttl ttl2'>알림마당</div>
                                    
                                    <div class='item'><a tabindex="33" onmouseover="fn_mouseOver('33','공지사항')" onmouseout="fn_mouseOut('33')" href="<c:url value='/board/notice.do'/>">공지사항</a></div>
                                    <div class='item'><a tabindex="34" onmouseover="fn_mouseOver('34','보도자료')" onmouseout="fn_mouseOut('34')" href="<c:url value='/board/news.do'/>">보도자료</a></div>
                                    <div class='item'><a tabindex="35" onmouseover="fn_mouseOver('35','홍보자료')" onmouseout="fn_mouseOut('35')" href="<c:url value='/board/promotion.do'/>">홍보자료</a></div>
                                </div>
                            
                                <div class='col-xs-6 col-md-3 block'>
                                    <div tabindex="36" onmouseover="fn_mouseOver('36','자료마당')" onmouseout="fn_mouseOut('36')" class='ttl ttl3'>자료마당</div>
                                    
                                    <div class='item'><a tabindex="37" onmouseover="fn_mouseOver('37','자주묻는 질문에프에이큐')" onmouseout="fn_mouseOut('37')" href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></div>
                                    <div class='item'><a tabindex="38" onmouseover="fn_mouseOver('38','상담사연')" onmouseout="fn_mouseOut('38')" href="<c:url value='/data/story.do'/>">상담사연</a></div>
                                    <div class='item'><a tabindex="39" onmouseover="fn_mouseOver('39','법령정보')" onmouseout="fn_mouseOut('39')" href="<c:url value='/data/law.do'/>">법령정보</a></div>
                                    
                                </div>
                                
                                <div class='col-xs-6 col-md-3 block'>
                                    <div tabindex="40" onmouseover="fn_mouseOver('40','센터소개')" onmouseout="fn_mouseOut('40')" class='ttl ttl4'>센터소개</div>
                                    
                                    <div class='item'><a tabindex="41" onmouseover="fn_mouseOver('41','국민콜110소개')" onmouseout="fn_mouseOut('41')" href="<c:url value='/intro/center.do'/>">국민콜110소개</a></div>
                                    <div class='item'><a tabindex="42" onmouseover="fn_mouseOver('42','인사말')" onmouseout="fn_mouseOut('42')" href="<c:url value='/intro/greetings.do'/>">인사말</a></div>
                                    <div class='item'><a tabindex="43" onmouseover="fn_mouseOver('43','연혁')" onmouseout="fn_mouseOut('43')" href="<c:url value='/intro/history.do'/>">연혁</a></div>
                                    <div class='item'><a tabindex="44" onmouseover="fn_mouseOver('44','위치안내')" onmouseout="fn_mouseOut('44')" href="<c:url value='/intro/location.do'/>">위치안내</a></div>
                                </div>
                            
                            
                        </div><!-- row -->
                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
		</div>
	</body>
</html>