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
			var navUrl = "location";
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
									<li tabindex="27" onmouseover="fn_mouseOver('27','인사말')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','연혁')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li class="active" tabindex="29" onmouseover="fn_mouseOver('29','위치안내')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/intro/location.do'/>" title="위치안내 선택됨">위치안내</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></li>
									<li><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>
									<li><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li class="active"><a href="<c:url value='/intro/location.do'/>" title="위치안내 선택됨">위치안내</a></li>
								</ul>  
						</div> 


                    <div class='limitWrap'>

                        <h3 tabindex="30" onmouseover="fn_mouseOver('30','위치안내')" onmouseout="fn_mouseOut('30')" class='mainTitle'>위치안내</h3>
						<p tabindex="31" onmouseover="fn_mouseOver('31','주소 : 경기도 과천시 관문로47 정부과천청사 2동')" onmouseout="fn_mouseOut('31')" class='txt'>주소 : 경기도 과천시 관문로47 정부과천청사 2동</p> 
                        <p tabindex="32" onmouseover="fn_mouseOver('32','국민콜110은 온라인 상담만 가능합니다. 방문상담은 국민권익위원회 종합민원상담센터를 이용해주시기 바랍니다')" onmouseout="fn_mouseOut('32')" class='txt fontW-400 fontS-1 mgt-10'>※ 국민콜110은 온라인 상담만 가능합니다. 방문상담은 <a href="https://www.acrc.go.kr/menu.es?mid=a10204010000" target="_blank" title="새창열림"  class='linkbtn'>국민권익위원회 종합민원상담센터  <i class='ti-new-window'></i></a>를 이용해주시기 바랍니다.</p>

                        <div class='mgt-20'><img src="../images/egovframework/gcall/main_new/intro/map.png" alt="국민콜110 과천센터 오시는길 4호선 정부과천청사역 하차 (7번 또는 8번출구로 나와 150m 직진)"></div>
						
						       
						<div class='row mgt-30'>

							 <div class='col-xs-12 col-md-6'>

							 		<div class='carBox'>
										<div class='icon-area'><i class='fas fa-car fa-fw'></i></div>
										<h4 tabindex="33" onmouseover="fn_mouseOver('33','승용차')" onmouseout="fn_mouseOut('33')">승용차</h4>
										<p tabindex="34" onmouseover="fn_mouseOver('34','네비게이션에 정부과천청사로 검색')" onmouseout="fn_mouseOut('34')">네비게이션에 <a href="https://map.naver.com/local/siteview.nhn?code=19063169" target="_blank" title="새창열림" class='linkbtn fontS-0'>정부과천청사 <i class='ti-new-window'></i></a>로 검색</p>
									 </div>

							 		<div class='trainBox'>
										<div class='icon-area'><i class='fas fa-subway fa-fw'></i></div>
										<h4 tabindex="35" onmouseover="fn_mouseOver('35','지하철')" onmouseout="fn_mouseOut('35')">지하철</h4>
										<p tabindex="36" onmouseover="fn_mouseOver('36','4호선 정부과천청사역 하차 7번 또는 8번 출구로 나와 150m 직진')" onmouseout="fn_mouseOut('36')">4호선 정부과천청사역 하차<br><span class="tcolor_gray fontS-0">(7번 또는 8번 출구로 나와 150m 직진)</span></p>
									 </div>


							 </div>
							 <div class='col-xs-12 col-md-6'>
							 		<div class='busBox'>
										<div class='icon-area'><i class='fas fa-bus-alt fa-fw'></i></div>
										<h4 tabindex="37" onmouseover="fn_mouseOver('37','버스')" onmouseout="fn_mouseOut('37')">버스</h4>
										<p tabindex="38" onmouseover="fn_mouseOver('38','정부과천청사 정류장 하차')" onmouseout="fn_mouseOut('38')">정부과천청사 정류장 하차</p>
											<ul>
                                            <li tabindex="39" onmouseover="fn_mouseOver('39','간선 441, 502, 540, 541, 542')" onmouseout="fn_mouseOut('39')"><span class="label label_blue">간선</span> 441, 502, 540, 541, 542 </li>
                                            <li tabindex="40" onmouseover="fn_mouseOver('40','일반 1다시1, 103, 11다시2, 11다시3, 11다시5, 6, 777, 9-3, 917')" onmouseout="fn_mouseOut('40')"><span class="label label_sky">일반</span> 1-1, 103, 11-2, 11-3, 11-5, 6, 777, 9-3, 917</li>
                                            <li tabindex="41" onmouseover="fn_mouseOver('41','마을 1, 마을3')" onmouseout="fn_mouseOut('41')"><span class="label label_green">마을</span> 1, 3 </li>
                                            <li tabindex="42" onmouseover="fn_mouseOver('42','직행 3030, 7007다시1')" onmouseout="fn_mouseOut('42')"><span class="label label_rad">직행</span> 3030, 7007-1 </li>
                                            <li tabindex="43" onmouseover="fn_mouseOver('43','공항 8842, N8842')" onmouseout="fn_mouseOut('43')"><span class="label label_purple">공항</span> 8842, N8842 </li>
											</ul>
									 </div>
							 </div>

						</div> <!-- row -->

                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>

			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
                

		</div>
	</body>
</html>