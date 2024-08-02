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
			var navUrl = "greetings";
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


               <div class='contentArea' id='contentArea'>
               <div class='container'>
						<div class="sub-visual subv-1">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','센터소개')" onmouseout="fn_mouseOut('24')">센터소개</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
							<div class="sub-depth-1">  
								<ul> 
									<li tabindex="26" onmouseover="fn_mouseOver('26','국민콜110 소개')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></li>
									<li class="active" tabindex="27" onmouseover="fn_mouseOver('27','인사말')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/intro/greetings.do'/>" title="인사말 선택됨">인사말</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','연혁')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','위치안내')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></li>
									<li class="active"><a href="<c:url value='/intro/greetings.do'/>" title="인사말 선택됨">인사말</a></li>
									<li><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
								</ul>  
						</div> 


                    <div class='limitWrap'>

						<h3 tabindex="30" onmouseover="fn_mouseOver('30','인사말')" onmouseout="fn_mouseOut('30')" class='mainTitle'>인사말</h3>
								<div class='row'>
									<div class='col-xs-12 col-md-5 text-center'>
											<div class='mgt-15'><img tabindex="31" onmouseover="fn_mouseOver('31','국민콜 110 정부민원안내')" onmouseout="fn_mouseOut('31')" src="/images/egovframework/gcall/main_new/intro/intro.jpg"  alt="국민콜 110 정부민원안내"></div>
									</div>
									<div class='col-xs-12 col-md-7'>

											<h4 tabindex="32" onmouseover="fn_mouseOver('32','국민콜110 (정부민원안내) 홈페이지를 방문해 주셔서 감사합니다')" onmouseout="fn_mouseOut('32')" class='introTitle'>국민콜110 (정부민원안내) 홈페이지를<br class='pc__itemView'> 방문해 주셔서 감사합니다. </h4>
											<div tabindex="33" onmouseover="fn_mouseOver('33','국민권익위원회 국민콜110 (정부민원안내)는 정부 관련 문의사항을 상담·안내하는 서비스를 제공하고 112, 119(긴급신고전화)로 접수되는 긴급하지 않은 전화를 처리합니다 국민이 각 행정기관의 콜센터 전화번호를 일일이 기억할 필요 없이 전국 어디서나 110번을 통해서 24시간 상담·안내 받을 수 있습니다 항상 국민 여러분의 생생한 목소리에 귀를 기울이겠습니다 감사합니다')" onmouseout="fn_mouseOut('33')" class='txt text-justify'>
												국민권익위원회 국민콜110 (정부민원안내)는 정부 관련 문의사항을
												상담·안내하는 서비스를 제공하고 112, 119(긴급신고전화)로 접수되는
												긴급하지 않은 전화를 처리합니다.
												국민이 각 행정기관의 콜센터 전화번호를 일일이 기억할 필요 없이
												전국 어디서나 110번을 통해서 24시간 상담·안내 받을 수 있습니다.<br>
												<br>
												항상 국민 여러분의 생생한 목소리에 귀를 기울이겠습니다.<br>
												<br>
												감사합니다.  

												<div tabindex="34" onmouseover="fn_mouseOver('34','국민콜110 일동')" onmouseout="fn_mouseOut('34')" class='text-right mgt-30'><strong>국민콜110 일동</strong></div>
											</div>

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