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
			var navUrl = "center";
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
									<li class="active" tabindex="26" onmouseover="fn_mouseOver('26','국민콜110 소개')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/intro/center.do'/>" title="국민콜110소개 선택됨">국민콜110 소개</a></li>
									<li tabindex="27" onmouseover="fn_mouseOver('27','인사말')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','연혁')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','위치안내')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li class="active"><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></li>
									<li><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>
									<li><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
									<li><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
								</ul>  
						</div> 


                    <div class='limitWrap'>
                    
                        <h3 tabindex="30" onmouseover="fn_mouseOver('30','국민콜110 소개')" onmouseout="fn_mouseOut('30')" class='mainTitle'>국민콜110 소개</h3>
       
										 <div class='row'>
											 <div class='col-xs-12 col-md-12'>
													<p tabindex="31" onmouseover="fn_mouseOver('31','국민권익위원회가 운영하는 국민콜110은 중앙정부, 지방자치단체, 공공기관 등 모든 행정기관의 업무에 대한 디비(데이터베이스)를 구축하여 실시간으로 전화 민원을 상담 안내하고 있습니다.국민콜110은 여러 단계의 자동응답(에이알에스)을 거치지 않고 전문교육을 이수한 110상담사가 직접 상담하고 있습니다.')" onmouseout="fn_mouseOut('31')" class='txt text-justify'>
														국민권익위원회가 운영하는 국민콜110은 중앙정부, 지방자치단체, 공공기관 등 모든 행정기관의 업무에 대한
														DB(데이터베이스)를 구축하여 실시간으로 전화 민원을 상담 안내하고 있습니다.
													   
														국민콜110은 여러 단계의 자동응답(ARS)을 거치지 않고 <span class='tcolor_red'>전문교육을 이수한 110상담사가 직접 상담</span>하고 있습니다.                          
													</p>
											</div><!-- col -->
										</div><!-- row -->
							

										<div class='row mgt-30 video-Box'>
											<div class='col-xs-12 col-md-4'>
													<div class='inner'>
														<img src='/images/egovframework/gcall/main_new/intro/video01.png' alt='동영상 썸네일'/>
														<h5 tabindex="32" onmouseover="fn_mouseOver('32','국민권익위원회 정책홍보영상')" onmouseout="fn_mouseOut('32')">국민권익위원회 정책홍보영상</h5>
														<div tabindex="33" onmouseover="fn_mouseOver('33','유투브 바로가기')" onmouseout="fn_mouseOut('33')" class='text-right'><a href="https://www.youtube.com/watch?v=3GfPOpnaXWM" class='btn btn-small btn-wauto btn-blue-hover' title='새창열기' target="_blank">유투브 바로가기 <i class='ti-arrow-right'></i></a></div>
													</div>
												</div>
											<div class='col-xs-12 col-md-4'>
												<div class='inner'>
														<img src='/images/egovframework/gcall/main_new/intro/video02.png' alt='동영상 썸네일'/>
														<h5 tabindex="34" onmouseover="fn_mouseOver('34','국민콜 110 무료로 통화하세요')" onmouseout="fn_mouseOut('34')">국민콜 110 무료로 통화하세요!</h5>
														<div tabindex="35" onmouseover="fn_mouseOver('35','유투브 바로가기')" onmouseout="fn_mouseOut('35')" class='text-right'><a href="https://www.youtube.com/watch?v=MUpYIiN6Kv4" class='btn btn-small btn-wauto btn-blue-hover' title='새창열기' target="_blank" >유투브 바로가기 <i class='ti-arrow-right'></i></a></div>
												</div>
											</div>
											<div class='col-xs-12 col-md-4'>
												<div class='inner'>
														<img src='/images/egovframework/gcall/main_new/intro/video03.png' alt='동영상 썸네일'/>
														<h5 tabindex="36" onmouseover="fn_mouseOver('36','궁금한거 다 물어보세요 국민콜 110')" onmouseout="fn_mouseOut('36')">궁금한거 다 물어보세요. 국민콜 110</h5>
														<div tabindex="37" onmouseover="fn_mouseOver('37','유투브 바로가기')" onmouseout="fn_mouseOut('37')" class='text-right'><a href="https://www.youtube.com/watch?v=bICG5oRlEPE&t=8s" class='btn btn-small btn-wauto btn-blue-hover' title='새창열기' target="_blank" >유투브 바로가기 <i class='ti-arrow-right'></i></a></div>
												</div>
											</div>

										</div>	
							


                    </div><!-- limitWrap -->
  <hr/>
                    <div class='limitWrap'>

                        <h3 tabindex="38" onmouseover="fn_mouseOver('38','110 정부민원안내콜센터 비아이소개 국민과 함께하는 정부대표전화')" onmouseout="fn_mouseOut('38')" class='mainTitle'>110 정부민원안내콜센터 BI소개 <small>국민과 함께하는 정부대표전화</small></h3>
						

										 <div class='row'>
											 <div class='col-xs-12 col-md-12'>
													<p tabindex="39" onmouseover="fn_mouseOver('39','여러 개의 원이 겹쳐지는 모양으로 하나의 원을 만들어 통합안내센터의 의미를 표현하였습니다 신뢰를 바탕으로 한 두 가지컬러의 조합은 국민과 정부의 하나 됨을 의미합니다 모던한 느낌의 로고로 미래지향적인 이미지를 부여하여 앞서가는 안내센터의 이미지를 부각하였습니다 또한 섬세한 이미지에서 전문적인 이미지를 표현하였고, 투명한 컬러의 겹침 효과로 신뢰감을 전달하고 있습니다')" onmouseout="fn_mouseOut('39')" class='txt text-justify'>
													<strong class='fontS-3 fontW-500'> 여러 개의 원이 겹쳐지는 모양으로 하나의 원을 만들어 통합안내센터의 의미를 표현하였습니다.</strong>
													신뢰를 바탕으로 한 두 가지컬러의 조합은 국민과 정부의 하나 됨을 의미합니다.
													모던한 느낌의 로고로 미래지향적인 이미지를 부여하여 앞서가는 안내센터의 이미지를 부각하였습니다.
													또한 섬세한 이미지에서 전문적인 이미지를 표현하였고, 투명한 컬러의 겹침 효과로 신뢰감을 전달하고 있습니다.	  
													</p>
													<div class='CIbg'>
													<img tabindex="40" onmouseover="fn_mouseOver('40','국민콜 110 정부민원안내')" onmouseout="fn_mouseOut('40')" src="/images/egovframework/gcall/main_new/intro/intro01-02.png" class='img-responsive' alt="국민콜 110 정부민원안내">
													</div>
													<p tabindex="41" onmouseover="fn_mouseOver('41','심벌마크와 로고타입의 조합인 시그니처는 사용 시 정해진 조합 간격을 유지해야 하며, 비례나 크기. 형태를 임의로 변경할 수 없습니다')" onmouseout="fn_mouseOut('41')" class='tcolor_red fontS-0'>※ 심벌마크와 로고타입의 조합인 시그니처는 사용 시 정해진 조합 간격을 유지해야 하며, 비례나 크기. 형태를 임의로 변경할 수 없습니다.</p>
											</div><!-- col -->
										</div><!-- row -->
										<h4 tabindex="42" onmouseover="fn_mouseOver('42','110 정부민원안내콜센터 비아이 전용색상안내')" onmouseout="fn_mouseOut('42')" class='subTitle mgt-30'>110 정부민원안내콜센터 BI 전용색상안내</h4>
										<div class='row color-Box'>
											<div class='col-xs-6 col-md-3'><div class='inner'><span class='logocolor c1'></span><p tabindex="43" onmouseover="fn_mouseOver('43','#0071에이이')" onmouseout="fn_mouseOut('43')">#0071AE</p></div></div>
											<div class='col-xs-6 col-md-3'><div class='inner'><span class='logocolor c2'></span><p tabindex="44" onmouseover="fn_mouseOver('44','#8디디8에프8')" onmouseout="fn_mouseOut('44')">#8DD8F8</p></div></div>
											<div class='col-xs-6 col-md-3'><div class='inner'><span class='logocolor c3'></span><p tabindex="45" onmouseover="fn_mouseOver('45','#74비이이메이')" onmouseout="fn_mouseOut('45')">#74BEEA</p></div></div>
											<div class='col-xs-6 col-md-3'><div class='inner'><span class='logocolor c4'></span><p tabindex="46" onmouseover="fn_mouseOver('46','#73비에프46')" onmouseout="fn_mouseOut('46')">#73BF46</p></div></div>
										</div>


                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>

			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
                

		</div>
	</body>
</html>