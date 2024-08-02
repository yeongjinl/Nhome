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
			var navUrl = "law";
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
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','자료마당')" onmouseout="fn_mouseOut('24')">자료마당</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
							<div class="sub-depth-1">  
								<ul> 
									<li tabindex="26" onmouseover="fn_mouseOver('26','자주묻는 질문에프에이큐')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></li>
									<li tabindex="27" onmouseover="fn_mouseOver('27','상담사연')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/data/story.do'/>">상담사연</a></li>
									<li class="active" tabindex="28" onmouseover="fn_mouseOver('28','법령정보')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/data/law.do'/>" title="법령정보 선택됨">법령정보</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/data/faq.do'/>" title="자주묻는 질문(FAQ) 선택됨">자주묻는 질문(FAQ)</a></li>
									<li><a href="<c:url value='/data/story.do'/>" title="상담사연 선택됨">상담사연</a></li>
									<li class="active"><a href="<c:url value='/data/law.do'/>" title="법령정보 선택됨" title="법령정보 선택됨">법령정보</a></li>
								</ul>  
						</div> 

                    <div class='limitWrap'>
                        <h3 tabindex="43" onmouseover="fn_mouseOver('43','법령정보')" onmouseout="fn_mouseOut('43')" class='mainTitle'>법령정보</h3>
                        
                        <div class='row lawInfoTable'>
                            <div class=' col-xs-12 col-md-6'><div class='inner mgb-30'>
                                <img tabindex="29" onmouseover="fn_mouseOver('29','찾기쉬운 생활법령 정보')" onmouseout="fn_mouseOut('29')" src="../images/egovframework/gcall/main_new/data/img01.png" class='img-responsive' alt="찾기쉬운 생활법령 정보">
                                
                                <h4 tabindex="30" onmouseover="fn_mouseOver('30','생활법령정보안내')" onmouseout="fn_mouseOut('30')" class='fontS-2 fontW-600'>생활법령정보안내</h4>
                                
                                <p tabindex="31" onmouseover="fn_mouseOver('31','국민이 실생활에 필요한 법령을 쉽게 찾아보고 이해할 수 있도록 정부 각 기관의 업무 중심으로 복잡하게 얽힌 법령간의 관계를 국민의 생활 중심으로 재분류하고 전문가의 시각에서 씌여진 어려운 법령의 내용을 국민의 눈높이에서 쉽게 해설하여 제공하는 새로운 법령정보 서비스 제공 시스템입니다')" onmouseout="fn_mouseOut('31')" class='txt mgb-20'>
								국민이 실생활에 필요한 법령을 쉽게 찾아보고 이해할 수<br class='pc__itemView'>
								있도록 정부 각 기관의 업무 중심으로 복잡하게 얽힌<br class='pc__itemView'>
								법령간의 관계를 국민의 생활 중심으로 재분류하고,<br class='pc__itemView'>
								전문가의 시각에서 씌여진 어려운 법령의 내용을 국민의<br class='pc__itemView'>
								눈높이에서 쉽게 해설하여 제공하는 새로운 법령정보<br class='pc__itemView'>
								서비스 제공 시스템입니다.  
                                </p>		   

                                <div tabindex="32" onmouseover="fn_mouseOver('32','바로가기')" onmouseout="fn_mouseOut('32')" class='btn-wrap'><a href="http://www.easylaw.go.kr/CSP/Main.laf" target="_blank" title="새창열림" class='btn btn-blue-hover' > 바로가기 <i class='ti-arrow-right'></i></a></div>
                            </div></div>
                            
                            <div class='col-xs-12 col-md-6'><div class='inner mgb-30'>
                                <img tabindex="33" onmouseover="fn_mouseOver('33','국가법령정보센터')" onmouseout="fn_mouseOut('33')" src="../images/egovframework/gcall/main_new/data/img03.png" class='img-responsive' alt="국가법령정보센터">
                                
                                <h4 tabindex="34" onmouseover="fn_mouseOver('34','국가법령정보센터')" onmouseout="fn_mouseOut('34')" class='fontS-2 fontW-600'>국가법령정보센터</h4>
                                    
                                     <p tabindex="35" onmouseover="fn_mouseOver('35','종합법령정보센터는 법령정보와 관련된 법제처에서 생산된 법령정보와 정보기관의 법 관련정보를 종합하여 대국민 서비스하는 사이트입니다')" onmouseout="fn_mouseOut('35')" class='txt mgb-20'>
										종합법령정보센터는 법령정보와 관련된 법제처에서<br class='pc__itemView'>
									 	생산된 법령정보와 정보기관의 법 관련정보를 종합하여<br class='pc__itemView'>
									 	대국민 서비스하는 사이트입니다.
									 </p>		   
									 
									 <div tabindex="36" onmouseover="fn_mouseOver('36','제공되는 법령관련 정보에는')" onmouseout="fn_mouseOut('36')" class='txt mgb-20'>
										<ol class='olStyle mgt-15'>
											<li tabindex="37" onmouseover="fn_mouseOver('37','1 현행법령, 연혁법령(1948),근대법령(1948, 1894: 단계적 추진 중)')" onmouseout="fn_mouseOut('37')">현행법령, 연혁법령(1948), <br class='pc__itemView'>근대법령(1948, 1894: 단계적 추진 중)</li>
											<li tabindex="38" onmouseover="fn_mouseOver('38','2 최근개정법령[현행화 되지 않은 최근에 개정된 법령], 입법예고')" onmouseout="fn_mouseOut('38')">최근개정법령[현행화 되지 않은 최근에 개정된 법령], 입법예고</li>
											<li tabindex="39" onmouseover="fn_mouseOver('39','3 월간법제, 법률교육자료, 법령해석질의응답, 대한민국법제50년사')" onmouseout="fn_mouseOut('39')">월간법제, 법률교육자료, 법령해석질의응답, 대한민국법제50년사</li>
											<li tabindex="40" onmouseover="fn_mouseOver('40','4 판례정보(대법원), 조약정보(외교통상부)')" onmouseout="fn_mouseOut('40')">판례정보(대법원), 조약정보(외교통상부)</li>
											<li tabindex="41" onmouseover="fn_mouseOver('41','5 기타 법 관련기관 연계정보')" onmouseout="fn_mouseOut('41')">기타 법 관련기관 연계정보</li> 
										</ol>
                                    </div>		

                                   <div tabindex="42" onmouseover="fn_mouseOver('42','바로가기')" onmouseout="fn_mouseOut('42')" class='btn-wrap'><a href="http://www.law.go.kr/main.html" target="_blank" title="새창열림" class='btn  btn-blue-hover' > 바로가기 <i class='ti-arrow-right'></i></a></div>
                                        
                             </div></div>
                        </div><!-- row -->
                        
                            
                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
		</div>
	</body>
</html>