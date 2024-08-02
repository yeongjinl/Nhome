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
			var navUrl = "history";
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
									<li class="active" tabindex="28" onmouseover="fn_mouseOver('28','연혁')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/intro/history.do'/>" title="연혁 선택됨">연혁</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','위치안내')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></li>
									<li><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>
									<li class="active"><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
								</ul>  
						</div> 


                    <div class='limitWrap'>

						<h3 tabindex="30" onmouseover="fn_mouseOver('30','연혁')" onmouseout="fn_mouseOut('30')" class='mainTitle'>연혁</h3>

						 <div class='historyBox'>
							<div class="history">
								  <h4 tabindex="31" onmouseover="fn_mouseOver('31','2010')" onmouseout="fn_mouseOut('31')" class="year">2010'</h4>
								  <ul class="list">
									<li class="right">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="32" onmouseover="fn_mouseOver('32','2019년')" onmouseout="fn_mouseOut('32')" class="date">2019년</div>
										<div class="title">
												<ul>
													<li tabindex="33" onmouseover="fn_mouseOver('33','카카오톡 상담서비스 개시')" onmouseout="fn_mouseOut('33')">카카오톡 상담서비스 개시</li>
													<li tabindex="34" onmouseover="fn_mouseOver('34','문화체육관광부 연계 상담서비스 개시')" onmouseout="fn_mouseOut('34')">문화체육관광부 연계 상담서비스 개시</li>
													<li tabindex="35" onmouseover="fn_mouseOver('35','국민콜 110 무료통화 서비스 개시')" onmouseout="fn_mouseOut('35')">국민콜 110 무료통화 서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="36" onmouseover="fn_mouseOver('36','2018년')" onmouseout="fn_mouseOut('36')" class="date">2018년</div>
										<div class="title">
												<ul>
													<li tabindex="37" onmouseover="fn_mouseOver('37','공정거래위원회 연계 상담서비스 개시')" onmouseout="fn_mouseOut('37')">공정거래위원회 연계 상담서비스 개시	</li>
													<li tabindex="38" onmouseover="fn_mouseOver('38','정부민원안내콜센터 상담사 보호에 관한 업무 운영지침(예규) 시행')" onmouseout="fn_mouseOut('38')">정부민원안내콜센터 상담사 보호에 관한 업무 운영지침(예규) 시행  </li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="39" onmouseover="fn_mouseOver('39','2017년')" onmouseout="fn_mouseOut('39')" class="date">2017년</div>
										<div class="title">
												<ul>
													<li tabindex="40" onmouseover="fn_mouseOver('40','경찰(112), 소방(119), 권익위(110) 간 신고전화 연계체계 구축')" onmouseout="fn_mouseOut('40')">경찰(112), 소방(119), 권익위(110) 간 신고전화 연계체계 구축 </li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="41" onmouseover="fn_mouseOver('41','2016년')" onmouseout="fn_mouseOut('41')" class="date">2016년</div>
										<div class="title">
												<ul>
													<li tabindex="42" onmouseover="fn_mouseOver('42','보건복지부, 법무부, 관세청 연계 상담서비스 개시')" onmouseout="fn_mouseOut('42')">보건복지부, 법무부, 관세청 연계 상담서비스 개시</li>
													<li tabindex="43" onmouseover="fn_mouseOver('43','비긴급 신고전화 상담센터 개소')" onmouseout="fn_mouseOut('43')">비긴급 신고전화 상담센터 개소	</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="44" onmouseover="fn_mouseOver('44','2015년')" onmouseout="fn_mouseOut('44')" class="date">2015년</div>
										<div class="title">
												<ul>
													<li tabindex="45" onmouseover="fn_mouseOver('45','과학기술정보통신부, 외교부, 국토교통부,기상청 연계 상담서비스 개시')" onmouseout="fn_mouseOut('45')">과학기술정보통신부, 외교부, 국토교통부,<br class='pc__itemView'> 기상청 연계 상담서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="46" onmouseover="fn_mouseOver('46','2014년')" onmouseout="fn_mouseOut('46')" class="date">2014년</div>
										<div class="title">
												<ul>
													<li tabindex="47" onmouseover="fn_mouseOver('47','해양수산부, 농림축산식품부, 교육부 연계 상담서비스 개시')" onmouseout="fn_mouseOut('47')">해양수산부, 농림축산식품부, 교육부 연계 상담서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="48" onmouseover="fn_mouseOver('48','2013년')" onmouseout="fn_mouseOut('48')" class="date">2013년</div>
										<div class="title">
												<ul>
													<li tabindex="49" onmouseover="fn_mouseOver('49','11개 부처 정부콜센터 정부과천청사 이전')" onmouseout="fn_mouseOut('49')">11개 부처 정부콜센터 정부과천청사 이전</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="50" onmouseover="fn_mouseOver('50','2012년')" onmouseout="fn_mouseOut('50')" class="date">2012년</div>
										<div class="title">
												<ul>
													<li tabindex="51" onmouseover="fn_mouseOver('51','공공행정기관 화상수화통역 상담서비스 개시')" onmouseout="fn_mouseOut('51')">공공행정기관 화상수화통역 상담서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="52" onmouseover="fn_mouseOver('52','2011년')" onmouseout="fn_mouseOut('52')" class="date">2011년</div>
										<div class="title">
												<ul>
													<li tabindex="53" onmouseover="fn_mouseOver('53','온라인(화상수화, 채팅, SNS) 상담서비스 개시')" onmouseout="fn_mouseOut('53')">온라인(화상수화, 채팅, SNS) 상담서비스 개시	</li>
													<li tabindex="54" onmouseover="fn_mouseOver('54','행정안전부 민원24 상담서비스 개시')" onmouseout="fn_mouseOut('54')">행정안전부 민원24 상담서비스 개시</li>
													<li tabindex="55" onmouseover="fn_mouseOver('55','여성가족부 성범죄자 우편 고지제도 상담서비스 개시')" onmouseout="fn_mouseOut('55')">여성가족부 성범죄자 우편 고지제도 상담서비스 개시 </li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="56" onmouseover="fn_mouseOver('56','2010년')" onmouseout="fn_mouseOut('56')" class="date">2010년</div>
										<div class="title">
												<ul>
													<li tabindex="57" onmouseover="fn_mouseOver('57','스마트폰 모바일 앱 서비스 개시')" onmouseout="fn_mouseOut('57')">스마트폰 모바일 앱 서비스 개시</li>
													<li tabindex="58" onmouseover="fn_mouseOver('58','국가보훈처 및 식품의약품안전처 상담서비스 개시')" onmouseout="fn_mouseOut('58')">국가보훈처 및 식품의약품안전처 상담서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right last">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
									  </div>
									</li>
								  </ul>
							</div><!-- history -->	

							<div class="history mgt-50">
								  <h4 tabindex="59" onmouseover="fn_mouseOver('59','2000')" onmouseout="fn_mouseOut('59')" class="year">2000'</h4>
								  <ul class="list">
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="60" onmouseover="fn_mouseOver('60','2009년')" onmouseout="fn_mouseOut('60')" class="date">2009년</div>
										<div class="title">
												<ul>
													<li tabindex="61" onmouseover="fn_mouseOver('61','영상전화기를 이용한 수화상담서비스 시행')" onmouseout="fn_mouseOut('61')">영상전화기를 이용한 수화상담서비스 시행</li>
													<li tabindex="62" onmouseover="fn_mouseOver('62','홈페이지 예약 상담서비스 시행')" onmouseout="fn_mouseOut('62')">홈페이지 예약 상담서비스 시행</li>
													<li tabindex="63" onmouseover="fn_mouseOver('63','휴대폰 문자 상담 서비스 시행')" onmouseout="fn_mouseOut('63')">휴대폰 문자 상담 서비스 시행</li>
													<li tabindex="64" onmouseover="fn_mouseOver('64','1379 생계침해 신고센터 통합 및 상담서비스 개시')" onmouseout="fn_mouseOut('64')">1379 생계침해 신고센터 통합 및 상담서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="65" onmouseover="fn_mouseOver('65','2008년')" onmouseout="fn_mouseOut('65')" class="date">2008년</div>
										<div class="title">
												<ul>
													<li tabindex="66" onmouseover="fn_mouseOver('66','통계청 상담서비스 개시')" onmouseout="fn_mouseOut('66')">통계청 상담서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="left">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
										<div tabindex="67" onmouseover="fn_mouseOver('67','2007년')" onmouseout="fn_mouseOut('67')" class="date">2007년</div>
										<div class="title">
												<ul>
													<li tabindex="68" onmouseover="fn_mouseOver('68','행정안전부 위택스 전자납부 상담서비스 개시')" onmouseout="fn_mouseOut('68')">행정안전부 위택스 전자납부 상담서비스 개시</li>
													<li tabindex="69" onmouseover="fn_mouseOver('69','110 정부민원안내콜센터 개소 및 전국 서비스 개시')" onmouseout="fn_mouseOut('69')">110 정부민원안내콜센터 개소 및 전국 서비스 개시</li>
												</ul>
										</div>
									  </div>
									</li>
									<li class="right last">
									  <div class="inner">
										<span class="dot-area"><em class="dot"></em></span>
									  </div>
									</li>

								  </ul>
							</div><!-- history -->	
						</div><!-- historyBox -->


                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>

			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
                

		</div>
	</body>
</html>