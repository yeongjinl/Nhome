<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

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
			var navUrl = "manual";
		</script>
		
    </head>
    
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
		<c:import url="../common/top_new.jsp"/>

            
		<main class='mainWrap'>
				<c:import url="../common/sideMenu.jsp"/>
				<!-- quick_wrap -->
               <div class='contentArea' id='contentArea'>
						<div class="sub-visual subv-1">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','상담안내')" onmouseout="fn_mouseOut('24')">상담안내</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
							<div class="sub-depth-1">  
								<ul> 
									<li class='active' tabindex="26" onmouseover="fn_mouseOver('26','상담이용안내')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/consult/manual.do'/>" title="상담이용안내 선택됨">상담이용안내</a></li>
									<li tabindex="27" onmouseover="fn_mouseOver('27','채팅상담')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','문자상담')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','수어상담')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li tabindex="30" onmouseover="fn_mouseOver('30','갑질피해상담')" onmouseout="fn_mouseOut('30')"><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li class='active'><a href="<c:url value='/consult/manual.do'/>" title="상담이용안내 선택">상담이용안내</a></li>
									<li><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>  
						</div> 

				  <div class='menualTop'>

							<div class='limitWrap'>
								<h3 class='mainTitle' tabindex="31" onmouseover="fn_mouseOver('31','상담분야')" onmouseout="fn_mouseOut('31')">상담분야</h3>
								
								<div class='row servicePart'>
									<div class='col-xs-12 col-md-4 ttl1'><div class='inner'>
										<div class='ttl' tabindex="32" onmouseover="fn_mouseOver('32','행정교육문화,')" onmouseout="fn_mouseOut('32')"><i class="fas fa-book"></i> 행정&middot;교육&middot;문화</div>
										<div class='cont' tabindex="33" onmouseover="fn_mouseOver('33','지방세정, 교육정책, 문화, 통계일반, 주민등록, 민방위재난 등')" onmouseout="fn_mouseOut('33')">지방세정, 교육정책, 문화,<br class='pc__itemView'/>통계일반, 주민등록, 민방위재난 등</div>
									</div></div>
									
									<div class='col-xs-12 col-md-4 ttl2'><div class='inner'>
										<div class='ttl' tabindex="34" onmouseover="fn_mouseOver('34','복지노동')" onmouseout="fn_mouseOut('34')"><i class="fas fa-briefcase"></i> 복지&middot;노동</div>
										<div class='cont' tabindex="35" onmouseover="fn_mouseOver('35','사회복지, 의정, 근로기준,고용보험, 직업안정 및 훈련, 식품 등')" onmouseout="fn_mouseOut('35')">사회복지, 의정, 근로기준,<br class='pc__itemView'/>고용보험, 직업안정 및 훈련,<br class='pc__itemView'/>식품 등</div>
									</div></div>
									
									<div class='col-xs-12 col-md-4 ttl3'><div class='inner'>
										<div class='ttl' tabindex="36" onmouseover="fn_mouseOver('36','환경산업,정보통신')" onmouseout="fn_mouseOut('36')"><i class="fas fa-broadcast-tower"></i> 환경산업&middot;정보통신</div>
										<div class='cont' tabindex="37" onmouseover="fn_mouseOver('37','환경오염신고, 특허,도시가스 우편, 전기 등')" onmouseout="fn_mouseOut('37')">환경오염신고, 특허,<br class='pc__itemView'/>도시가스 우편, 전기 등</div>
									</div></div>
								   

									<div class='col-xs-12 col-md-4 ttl4'><div class='inner'>
										<div class='ttl' tabindex="38" onmouseover="fn_mouseOver('38','농림,해양')" onmouseout="fn_mouseOut('38')"><i class="fas fa-tractor"></i> 농림&middot;해양</div>
										<div class='cont' tabindex="39" onmouseover="fn_mouseOver('39','농업/축산/산림행정, 해양수산,수협, 해양경찰 등')" onmouseout="fn_mouseOut('39')">농업/축산/산림행정, 해양수산,<br class='pc__itemView'/>수협, 해양경찰 등</div>
									</div></div>
									
									<div class='col-xs-12 col-md-4 ttl5'><div class='inner'>
										<div class='ttl' tabindex="40" onmouseover="fn_mouseOver('40','재정,세무')" onmouseout="fn_mouseOut('40')"><i class="fas fa-university"></i> 재정&middot;세무</div>
										<div class='cont' tabindex="41" onmouseover="fn_mouseOver('41','공정거래, 금융, 보험, 통관,국세/탈세제보, 근로장려금, 연말정산간소화 등')" onmouseout="fn_mouseOut('41')">공정거래, 금융, 보험, 통관,<br class='pc__itemView'/>국세/탈세제보, 근로장려금,<br class='pc__itemView'/> 연말정산간소화 등</div>
									</div></div>
									
									<div class='col-xs-12 col-md-4 ttl6'><div class='inner'>
										<div class='ttl' tabindex="42" onmouseover="fn_mouseOver('42','건설,교통')" onmouseout="fn_mouseOut('42')"><i class="fas fa-city"></i> 건설&middot;교통</div>
										<div class='cont' tabindex="43" onmouseover="fn_mouseOver('43','주택일반, 도시계획, 도로행정,국토계획, 교통 등')" onmouseout="fn_mouseOut('43')">주택일반, 도시계획, 도로행정,<br class='pc__itemView'/>국토계획, 교통 등</div>
									</div></div>


									
									<div class='col-xs-12 col-md-4 ttl7'><div class='inner'>
										<div class='ttl' tabindex="44" onmouseover="fn_mouseOver('44','외무통일,민형사,국방')" onmouseout="fn_mouseOut('44')"><i class="fas fa-gavel"></i> 외무통일&middot;민형사&middot;국방</div>
										<div class='cont' tabindex="45" onmouseover="fn_mouseOver('45','외무/통일, 수사, 치안,법률구조 등')" onmouseout="fn_mouseOut('45')">외무/통일, 수사, 치안,<br class='pc__itemView'/>법률구조 등</div>
									</div></div>
									
									<div class='col-xs-12 col-md-4 ttl8'><div class='inner'>
										<div class='ttl' tabindex="46" onmouseover="fn_mouseOver('46','비긴급 신고전화')" onmouseout="fn_mouseOut('46')"><i class="fas fa-phone-volume"></i> 비긴급 신고전화</div>
										<div class='cont' tabindex="47" onmouseover="fn_mouseOver('47','실종아동, 청소년, 노인학대,여성긴급 등 20개의 비긴급 신고전화')" onmouseout="fn_mouseOut('47')">실종아동, 청소년, 노인학대,<br class='pc__itemView'/>여성긴급 등 20개의<br class='pc__itemView'/> 비긴급 신고전화</div>
									</div></div>
									
									<div class='col-xs-12 col-md-4 ttl9'><div class='inner'>
										<div class='ttl' tabindex="48" onmouseover="fn_mouseOver('48','갑질피해상담')" onmouseout="fn_mouseOut('48')"><i class="fas fa-frown"></i> 갑질피해상담</div>
										<div class='cont' tabindex="49" onmouseover="fn_mouseOver('49','공공분야의 민간에 대한 갑질,내부의 갑질')" onmouseout="fn_mouseOut('49')">공공분야의 민간에 대한 갑질,<br class='pc__itemView'/>내부의 갑질</div>
									</div></div>

								</div><!-- row servicePart -->
							</div><!-- limitWrap -->

					</div><!-- menualTop -->


				<div class='container'>

                    <div class='limitWrap'>

                        <h3 class='mainTitle' tabindex="50" onmouseover="fn_mouseOver('50','상담이용안내 365일 24시간 수어상담은 평일, 설·추석 09시 에서 18시')" onmouseout="fn_mouseOut('50')">상담이용안내<small class='right'><strong>365일 24시간</strong> (수어상담은 평일, 설·추석 09:00~18:00)</small></h3>
                        
                        <div class='useGuideTableWrap'>
                            <table class='table useGuideTable'>
                                <caption class='blind'>110상담이용안내 목록</caption>
                                <thead>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th tabindex="51" onmouseover="fn_mouseOver('51','전화상담')" onmouseout="fn_mouseOut('51')" scope="col">전화상담</th>
                                        <td class='icon'><div class='call_icon icondiv' tabindex="52" onmouseover="fn_mouseOver('51','전화상담 아이콘')" onmouseout="fn_mouseOut('51')">전화상담 아이콘</div></td>
                                        <td class='cont'>
                                        	<div class='mgb-5' tabindex="53" onmouseover="fn_mouseOver('53','국번없이 110번, 해외:82-2-6196-9110')" onmouseout="fn_mouseOut('53')"><strong class="fontW-600">국번없이 110번</strong> <span class="fontS-0 fontW-400">(해외:82-2-6196-9110)</span></div>
                                        	<div class='mgb-5' tabindex="54" onmouseover="fn_mouseOver('54','씨토크 영상전화 상담 : 070-7451-9012,3,5, 수어상담 운영시간에만 가능')" onmouseout="fn_mouseOut('54')"><strong class="fontW-600">씨토크 영상전화 상담 : 070-7451-9012,3,5</strong> <span class="fontS-0 fontW-400"> (수어상담 운영시간에만 가능)</span></div>
                                        	<span class='tcolor_blue2 fontS-0 fontW-400' tabindex="55" onmouseover="fn_mouseOver('55',' 씨토크 회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됩니다.')" onmouseout="fn_mouseOut('55')">※ 씨토크 회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됩니다.</span><br>
                                       		<span tabindex="56" onmouseover="fn_mouseOver('56','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('56')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은
												<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
													<i class='ti-new-window' "></i>
												</a>
												을 이용해보세요.
											</span>
                                       	</td>
                                    </tr>
                                    <tr>
                                        <th tabindex="57" onmouseover="fn_mouseOver('57','문자상담')" onmouseout="fn_mouseOut('57')" scope="col">문자상담</th>
                                        <td class='icon' tabindex="58" onmouseover="fn_mouseOver('58','문자상담 아이콘')" onmouseout="fn_mouseOut('58')"><div class='sms_icon icondiv'>문자상담 아이콘</div></td>
                                        <td class='cont'>
											<div class='mgb-10'><strong class="fontW-600" tabindex="59" onmouseover="fn_mouseOver('59','문자메세지 작성 후 110으로 문자전송')" onmouseout="fn_mouseOut('59')">문자메세지 작성 후 '110'으로 문자전송</strong></div>
												<ol class='olStyle2'>
													<li  tabindex="60" onmouseover="fn_mouseOver('60','110홈페이지')" onmouseout="fn_mouseOut('60')"><div><span>110홈페이지</span></div></li>
													<li tabindex="61" onmouseover="fn_mouseOver('61','문자상담')" onmouseout="fn_mouseOut('61')"><div><span>문자상담</span></div></li>
													<li tabindex="62" onmouseover="fn_mouseOver('62','상담내용 및 연락처 입력')" onmouseout="fn_mouseOut('62')"><div><span class='ie'>상담내용 및<br>연락처 입력</span></div></li>
													<li tabindex="63" onmouseover="fn_mouseOver('63','상담신청하기')" onmouseout="fn_mouseOut('63')"><div><span><strong>상담신청하기</strong></span></div></li>
												</ol>
												<span tabindex="64" onmouseover="fn_mouseOver('64','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('64')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은
															<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;margin-top:10px;">국민비서 상담챗봇
																<i class='ti-new-window' "></i>
															</a>
															을 이용해보세요.
												</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th tabindex="65" onmouseover="fn_mouseOver('65','채팅상담,카카오톡상담')" onmouseout="fn_mouseOut('65')" scope="col">채팅상담<br>카카오톡상담</th>
                                        <td tabindex="66" onmouseover="fn_mouseOver('66','채팅상담 아이콘')" onmouseout="fn_mouseOut('66')" class='icon'><div class='chat_icon icondiv'>채팅상담 아이콘</div></td>
                                        <td class='cont'>
											<strong class="blind">채팅상담</strong>
												<ol class='olStyle2 mgb-20'>
													<li tabindex="67" onmouseover="fn_mouseOver('67','110홈페이지')" onmouseout="fn_mouseOut('67')"><div><span>110홈페이지</span></div></li>
													<li tabindex="68" onmouseover="fn_mouseOver('68','채팅상담')" onmouseout="fn_mouseOut('68')" class='chat'><div><i class='ti-comments'></i> <span>채팅상담</span></div></li>
													<li tabindex="69" onmouseover="fn_mouseOver('69','전화번호 입력')" onmouseout="fn_mouseOut('69')"><div><span>전화번호 입력</span></div></li>
													<li tabindex="70" onmouseover="fn_mouseOver('70','채팅상담 신청하기')" onmouseout="fn_mouseOut('70')"><div><span class='ie'><strong>채팅상담</strong><br>신청하기</span></div></li>
												</ol>

											<strong class="blind">카카오톡상담</strong>
												<ol class='olStyle2 mgb-10'>
													<li tabindex="71" onmouseover="fn_mouseOver('71','110홈페이지')" onmouseout="fn_mouseOut('71')"><div><span>110홈페이지</span></div></li>
													<li tabindex="72" onmouseover="fn_mouseOver('72','카카오톡상담')" onmouseout="fn_mouseOut('72')" class='kakao'><div><span>카카오톡상담</span></div></li>
													<li tabindex="73" onmouseover="fn_mouseOver('73','카카오톡상담 신청하기')" onmouseout="fn_mouseOut('73')"><div><span class='ie'><strong>카카오톡상담</strong><br>신청하기</span></div></li>
												</ol>
                                        	<span tabindex="74" onmouseover="fn_mouseOver('74','국민톡110 채널 추가 시, 더 편리하게 상담가능합니다. 채널 바로가기')" onmouseout="fn_mouseOut('74')" class='tcolor_blue2 fontS-0 fontW-400'>※ "국민톡110" 채널 추가 시, 더 편리하게 상담가능합니다. 
												<a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림" class='linkbtn'>채널 바로가기  
													<i class='ti-new-window'></i>
												</a><br>
												<span tabindex="75" onmouseover="fn_mouseOver('75','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('75')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은
												<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
													<i class='ti-new-window' "></i>
												</a>
												을 이용해보세요.
												</span>
											</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th tabindex="76" onmouseover="fn_mouseOver('76','갑질피해상담')" onmouseout="fn_mouseOut('76')" scope="col">갑질피해상담</th>
                                        <td tabindex="77" onmouseover="fn_mouseOver('77','갑질피해상담 아이콘')" onmouseout="fn_mouseOut('77')" class='icon icon4'><div class='affect_icon icondiv'>갑질피해상담 아이콘</div></td>
                                        <td class='cont'>
											<ol class='olStyle2 mgb-10'>
												<li tabindex="78" onmouseover="fn_mouseOver('78','110홈페이지')" onmouseout="fn_mouseOut('78')"><div><span>110홈페이지</span></div></li>
												<li tabindex="79" onmouseover="fn_mouseOver('79','갑질피해상담')" onmouseout="fn_mouseOut('79')"><div><span>갑질피해상담</span></div></li>
												<li tabindex="80" onmouseover="fn_mouseOver('80','상담신청하기')" onmouseout="fn_mouseOut('80')"><div><span><strong>상담신청하기</strong></span></div></li>
											</ol>
		
											<span tabindex="81" onmouseover="fn_mouseOver('81','카카오톡(채널:국민톡110)으로도 갑질피해상담가능합니다. 가능 채널 바로가기')" onmouseout="fn_mouseOut('81')" class='tcolor_blue2 fontS-0 fontW-400'>※ 카카오톡(채널:국민톡110)으로도 갑질피해상담 가능합니다.
												<a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림" class='linkbtn'>채널 바로가기  
													<i class='ti-new-window'></i>
												</a>
											</span>
										</td>
                                    </tr>
                                    <tr>
                                        <th tabindex="82" onmouseover="fn_mouseOver('82','수어상담, 기관수어통역')" onmouseout="fn_mouseOut('82')" scope="col">수어상담<br>기관수어통역</th>
                                        <td tabindex="83" onmouseover="fn_mouseOver('83','수어상담 아이콘')" onmouseout="fn_mouseOut('83')" class='icon'><div class='cam_icon icondiv'>수어상담 아이콘</div></td>
                                        <td class='cont'>
											<div tabindex="84" onmouseover="fn_mouseOver('84','상담시간 : 평일, 설·추석 09:00~18:00')" onmouseout="fn_mouseOut('84')" class='mgb-5'><strong class="fontW-600">상담시간 : 평일, 설·추석 09:00~18:00</strong></div>
											<div class='mgb-10'>
												<span tabindex="85" onmouseover="fn_mouseOver('85','평일 18:00 이후 및 주말·공휴일에는 107 손말이음센터 를 이용해주시기 바랍니다')" onmouseout="fn_mouseOut('85')" class='tcolor_gray fontS-0 fontW-400'><i style='color:#2a659c;font-style:normal;'>※ 평일 18:00 이후 및 주말·공휴일에는</i> 
													<a href="https://www.relaycall.or.kr/" target="_blank" title="새창열림" class='linkbtn'>107 손말이음센터  
														<i class='ti-new-window'></i>
													</a><i style='color:#2a659c;font-style:normal;"'>를 이용해주시기 바랍니다.</i><br>
													<span tabindex="86" onmouseover="fn_mouseOver('86','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('86')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은
														<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
															<i class='ti-new-window' "></i>
														</a>
														을 이용해보세요.
													</span>
												</span>
											</div>

                                            <strong tabindex="87" onmouseover="fn_mouseOver('87','상담채널별 수어상담 이용방법')" onmouseout="fn_mouseOut('87')" class="fontW-600">상담채널별 수어상담 이용방법</strong>

												<ul class='mgb-20 mgt-10'>
													<li>① 모바일  <span tabindex="88" onmouseover="fn_mouseOver('88','1모바일 크롬앱 또는 사파리앱 이용, 데이터 이용료 발생됩니ㅏ.')" onmouseout="fn_mouseOut('88')" class='tcolor_blue2 fontS-0 fontW-400'>※ 크롬앱 또는 사파리앱 이용, 데이터 이용료 발생됩니다.</span>
													
															<ol class='olStyle2 mgb-10 mgt-5'>
																<li tabindex="89" onmouseover="fn_mouseOver('89','110홈페이지')" onmouseout="fn_mouseOut('89')"><div><span>110홈페이지</span></div></li>
																<li tabindex="90" onmouseover="fn_mouseOver('90','수어상담')" onmouseout="fn_mouseOut('90')"><div><span>수어상담</span></div></li>
																<li tabindex="91" onmouseover="fn_mouseOver('91','핸드폰번호 입력')" onmouseout="fn_mouseOut('91')"><div><span>핸드폰번호 입력</span></div></li>
																<li tabindex="92" onmouseover="fn_mouseOver('92','상담신청')" onmouseout="fn_mouseOut('92')"><div><span><strong>상담신청</strong></span></div></li>
															</ol>											
													
													</li>
													<li>② PC  <spantabindex="93" onmouseover="fn_mouseOver('93','2피씨 화상카메라 연결 필수')" onmouseout="fn_mouseOut('93')" class='tcolor_blue2 fontS-0 fontW-400'>※ 화상카메라 연결 필수</span>
																										
															<ol class='olStyle2 mgb-10 mgt-5'>
																<li tabindex="94" onmouseover="fn_mouseOver('94','110홈페이지')" onmouseout="fn_mouseOut('94')"><div><span>110홈페이지</span></div></li>
																<li tabindex="95" onmouseover="fn_mouseOver('95','수어상담')" onmouseout="fn_mouseOut('95')"><div><span>수어상담</span></div></li>
																<li tabindex="96" onmouseover="fn_mouseOver('96','핸드폰번호 입력')" onmouseout="fn_mouseOut('96')"><div><span>핸드폰번호 입력</span></div></li>
																<li tabindex="97" onmouseover="fn_mouseOver('97','상담신청')" onmouseout="fn_mouseOut('97')"><div><span><strong>상담신청</strong></span></div></li>
															</ol>			

													</li>
													<li tabindex="98" onmouseover="fn_mouseOver('98','3씨토크 영상전화기 : 070-7451-9012,3,5 로 전화  씨토크 회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됩니다.')" onmouseout="fn_mouseOut('98')">③ 씨토크 영상전화기 : 070-7451-9012,3,5 로 전화<br>
														   <span class='tcolor_blue2 fontS-0 fontW-400'>※ 씨토크 회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됩니다.</span>

													</li>
												</ul>
                                            	
											
											<strong tabindex="99" onmouseover="fn_mouseOver('99','기관수어통역 이용방법')" onmouseout="fn_mouseOut('99')" class="fontW-600 mgb-5">기관수어통역 이용방법</strong>
												<ul class='mgb-20 mgt-10'>

													<li>② PC  <span tabindex="100" onmouseover="fn_mouseOver('100','2피씨화상카메라 및 헤드셋 연결 필수')" onmouseout="fn_mouseOut('100')" class='tcolor_blue2 fontS-0 fontW-400'>※ 화상카메라 및 헤드셋 연결 필수 </span>
																										
															<ol class='olStyle2 mgb-10 mgt-5'>
																<li tabindex="101" onmouseover="fn_mouseOver('101','110홈페이지')" onmouseout="fn_mouseOut('101')"><div><span>110홈페이지</span></div></li>
																<li tabindex="102" onmouseover="fn_mouseOver('102','수어상담')" onmouseout="fn_mouseOut('102')"><div><span>수어상담</span></div></li>
																<li tabindex="103" onmouseover="fn_mouseOver('103','기관담당자')" onmouseout="fn_mouseOut('103')"><div><span class='ie'><strong>기관담당자<br>연락처 기입</strong> </span></div></li>
																<li tabindex="104" onmouseover="fn_mouseOver('104','상담신청')" onmouseout="fn_mouseOut('104')"><div><span>상담신청</span></div></li>
															</ol>			

													</li>

												</ul>
                                         		<p tabindex="105" onmouseover="fn_mouseOver('105','기관수어통역이란 청각장애인이 공공건물 및 공중이용시설을 이용하려는 경우, 시설주는 한국수어 통역 등의 편의를 제공해 민원처리를 진행합니다. 국민콜110은 기관담당자, 청각장애인, 110수어상담사 간의 3자 통역 서비스를 제공합니다')" onmouseout="fn_mouseOut('105')" class='fontW-400 fontS-1'>※기관수어통역이란?<br>
                                           		청각장애인이 공공건물 및 공중이용시설을 이용하려는 경우, 시설주는 한국수어 통역 등의 편의를 제공해 <br class='pc__itemView'/>
												민원처리를 진행합니다. 국민콜110은 기관담당자, 청각장애인, 110수어상담사 간의 3자 통역 서비스를<br class='pc__itemView'/>제공합니다.<br>
												</p>
										</td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                        </div> <!-- useGuideTableWrap -->
                        <p tabindex="106" onmouseover="fn_mouseOver('106','국민콜110은 온라인 상담만 가능합니다. 방문상담은 국민권익위원회 종합민원상담센터를 이용해주시기 바랍니다')" onmouseout="fn_mouseOut('106')" class='txt fontW-400 fontS-1 mgt-10'>※ 국민콜110은 온라인 상담만 가능합니다. 방문상담은 
							<a href="https://www.acrc.go.kr/menu.es?mid=a10204010000" target="_blank" title="새창열림"  class='linkbtn'>
								국민권익위원회 종합민원상담센터  
								<i class='ti-new-window'></i>
							</a>를 이용해주시기 바랍니다.
						</p>
                    </div><!-- limitWrap -->
				</div>
				</div><!-- contentArea -->
            </main>

			
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
                

		</div>
	</body>
</html>
<script>
	function fn_openChatbotPop() {
		console.log("국민챗봇");
		
	    var _oPopup = window.open("", "chatbot_popup", "width=10, height=10");
	    _oPopup.location.href = "https://chatbot.ips.go.kr/chatbotPop.ndo?bnrId=aKjplsjoeU3ZofF#none";
	}
</script>