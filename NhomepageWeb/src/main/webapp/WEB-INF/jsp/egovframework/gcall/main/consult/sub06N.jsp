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
			var navUrl = "affect";
		</script>
		<script>
			$(function() {
				$("#affectBtn").on("click", function(e) {
					// 값 체크
					if(!checkValue()) return false;
					
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/businessChk.do'/>",
						data: {
							ch:'갑질피해상담'
							,codeType:'URGN_YN'
						},
						success: function(res) {
							res = JSON.parse(res);
							if(res._error == true) {
								alert(res._message);
							}
							if(res._error == false){
								window.open("https://handspeak.110.go.kr/ch/main", "chat", "resizable=no, width=396, height=587, top=100, left=100 titlebar=no, status=no");
							}
						}
					});
				});
			});
			
			function checkValue() {
				
				// 동의 여부 체크
				if(!$("#agree_yn").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 갑질피해상담 신청이 가능합니다.");
					return false;
				}
				
				
				return true;
			}
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
									<li tabindex="26" onmouseover="fn_mouseOver('26','상담이용안내')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>
									<li tabindex="27" onmouseover="fn_mouseOver('27','채팅상담')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','문자상담')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','수어상담')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li class='active' tabindex="30" onmouseover="fn_mouseOver('30','갑질피해상담')" onmouseout="fn_mouseOut('30')"><a href="<c:url value='/consult/affect.do'/>" title="갑질피해상담 선택됨">갑질피해상담</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>
									<li><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li class='active'><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>  
						</div> 


                    <div class='consultTop bg04'>
						
						<div class='limitWrap'>
                    	<div tabindex="31" onmouseover="fn_mouseOver('31','국민콜110 국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('31')" class='visual-text'><strong>국민콜110</strong> 국민의 행복을 <br class='mobile__itemView'>함께 만들어 갑니다.</div>
                    	<div class='row'> 
								<div class='col-xs-12 col-md-4 text-center'><img src="../images/egovframework/gcall/main_new/consult/illi_04.png" alt="갑질피해상담 일러스트"></div>
								<div class='col-xs-12 col-md-8'>


										<div class='title-area'>
											<h3 tabindex="32" onmouseover="fn_mouseOver('32','갑질피해상담')" onmouseout="fn_mouseOut('32')" class='mainTitle'>갑질피해상담 </h3>
											<div tabindex="33" onmouseover="fn_mouseOver('33','이용문의 : 국번없이 110 청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5)')" onmouseout="fn_mouseOut('33')" class='info pl'>
											<strong>이용문의 : 국번없이 110	</strong><br>
											청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5)
											</div>
										</div><!-- title-area -->

										<div class='text-area'>

															<h4 tabindex="34" onmouseover="fn_mouseOver('34','갑질피해상담')" onmouseout="fn_mouseOut('34')" class='fontS-3'>갑질피해상담</h4>

															<div tabindex="35" onmouseover="fn_mouseOver('35','상담시간: 365일 24시간')" onmouseout="fn_mouseOut('35')" class='fontS-2 fontW-500'>상담시간: 365일 24시간</div>
															<div tabindex="36" onmouseover="fn_mouseOver('36','카카오톡(채널:국민톡110)으로도 갑질피해상담 가능')" onmouseout="fn_mouseOut('36')" class='fontS-2'>카카오톡(채널:국민톡110)으로도 갑질피해상담 가능 <a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림" class='btn btn-small-xs btn-gray kakao'>카카오톡 채널 바로가기</a></div>
															

															<div tabindex="37" onmouseover="fn_mouseOver('37','피해자 보호를 위해 익명으로 채팅상담 합니다')" onmouseout="fn_mouseOut('37')" class='tcolor_orange mgt-10'>
																피해자 보호를 위해 익명으로 채팅상담 합니다.
															</div>
															<br>
															<div tabindex="38" onmouseover="fn_mouseOver('38','갑질피해 신고방법 및 피해구제 방법에 대한 안내')" onmouseout="fn_mouseOut('38')">
																<span style="font-weight:bold;">※ 갑질피해 신고방법 및 피해구제 방법에 대한 안내</span>
															</div>

										</div><!-- text-area -->

                               
								</div><!-- col -->
                        </div><!-- row -->
						</div>
				
                    </div><!-- consultTop -->


				<div class='container'>

                    <div class='limitWrap'>

							<h3 tabindex="39" onmouseover="fn_mouseOver('39','갑질 유형 및 사례')" onmouseout="fn_mouseOut('39')" class='mainTitle'>갑질 유형 및 사례</h3>
                       
                            <h4 tabindex="40" onmouseover="fn_mouseOver('40','공공분야의 민간에 대한 갑질')" onmouseout="fn_mouseOut('40')" class='subTitle'>공공분야의 민간에 대한 갑질 </h4>

								<div class='useGuideTableWrap'>
									<table class='table useGuideTable'>
										<caption class='blind'>공공분야의 민간에 대한 갑질의 유형 및 대표 사례</caption>
										<thead>
		                                </thead>
										<tbody>
											<tr>
												<th tabindex="41" onmouseover="fn_mouseOver('41','이익 추구')" onmouseout="fn_mouseOut('41')" rowspan='2' scope='col'><span class="tcolor_blue">이익 추구</span></th>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_07.png" alt="공공분야"/></td>
												<td class='cont'><strong tabindex="42" onmouseover="fn_mouseOver('42','공공분야')" onmouseout="fn_mouseOut('42')">공공분야</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="43" onmouseover="fn_mouseOver('43','상위법 배치, 위임범위 일탈 자치법규 및 임의지침 운영')" onmouseout="fn_mouseOut('43')">상위법 배치, 위임범위 일탈 자치법규 및 임의지침 운영</li>
														<li tabindex="44" onmouseover="fn_mouseOver('44','계약법규 상 기준보다 하자담보책임기간을 과도하게 설정')" onmouseout="fn_mouseOut('44')">계약법규 상 기준보다 하자담보책임기간을 과도하게 설정</li>
														<li tabindex="45" onmouseover="fn_mouseOver('45','발주기관 귀책사유로 공사기간 연장 시에도 실비 미지급')" onmouseout="fn_mouseOut('45')">발주기관 귀책사유로 공사기간 연장 시에도 실비 미지급</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td class='icon' scope='col'><img src="../images/egovframework/gcall/main_new/consult/icon_08.png" alt="개인"/></td>
												<td class='cont'><strong tabindex="46" onmouseover="fn_mouseOver('46','개인')" onmouseout="fn_mouseOut('46')">개인</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="47" onmouseover="fn_mouseOver('47','인허가 승인, 낙찰자 선정 등을 조건으로 금품·향응 수수')" onmouseout="fn_mouseOut('47')">인허가 승인, 낙찰자 선정 등을 조건으로 금품·향응 수수</li>
														<li tabindex="48" onmouseover="fn_mouseOver('48','발주기관 감독이 특정업체와의 하도급 계약을 강요')" onmouseout="fn_mouseOut('48')">발주기관 감독이 특정업체와의 하도급 계약을 강요</li>
														<li tabindex="49" onmouseover="fn_mouseOver('49','자녀 영어숙제, 하이패스 충전 및 세차 등 사적 심부름')" onmouseout="fn_mouseOut('49')">자녀 영어숙제, 하이패스 충전 및 세차 등 사적 심부름</li>
													</ul>
												</td>
											</tr>
											<tr>
												<th tabindex="50" onmouseover="fn_mouseOver('50','불이익 처우')" onmouseout="fn_mouseOut('50')" rowspan='2'  class='bb' scope='col'><span class="tcolor_blue">불이익 처우</span></th>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_09.png" alt="업무적"/></td>
												<td class='cont'><strong tabindex="51" onmouseover="fn_mouseOver('51','업무적')" onmouseout="fn_mouseOut('51')">업무적</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="52" onmouseover="fn_mouseOver('52','인·허가 시 부당한 조건부여 또는 불허, 처리 지연')" onmouseout="fn_mouseOut('52')">인·허가 시 부당한 조건부여 또는 불허, 처리 지연</li>
														<li tabindex="53" onmouseover="fn_mouseOver('53','법령상 근거 없는 계약 관련 자체벌점제도 운영 및 행정지도')" onmouseout="fn_mouseOut('53')">법령상 근거 없는 계약 관련 자체벌점제도 운영 및 행정지도</li>
														<li tabindex="54" onmouseover="fn_mouseOver('54','발주기관에 대한 공사 민원을 시공사가 해결하도록 전가')" onmouseout="fn_mouseOut('54')">발주기관에 대한 공사 민원을 시공사가 해결하도록 전가</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_10.png" alt="인격적"/></td>
												<td class='cont'><strong tabindex="55" onmouseover="fn_mouseOver('55','인격적')" onmouseout="fn_mouseOut('55')">인격적</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="56" onmouseover="fn_mouseOver('56','유관단체 여직원에게 술자리 배석 강요, 성폭행')" onmouseout="fn_mouseOut('56')">유관단체 여직원에게 술자리 배석 강요, 성폭행</li>
														<li tabindex="57" onmouseover="fn_mouseOver('57','가해자가 갑질 피해 신고인에게 신고 철회 종용 등 협박')" onmouseout="fn_mouseOut('57')">가해자가 갑질 피해 신고인에게 신고 철회 종용 등 협박</li>
														<li tabindex="58" onmouseover="fn_mouseOver('58','인허가 담당 공무원이 설계사무소 직원에게 반말·협박')" onmouseout="fn_mouseOut('58')">인허가 담당 공무원이 설계사무소 직원에게 반말·협박</li>
													</ul>
												</td>
											</tr>
										</tbody>
										<tfoot></tfoot>
									</table></div>

                            <h4 tabindex="59" onmouseover="fn_mouseOver('59','공공분야 내부의 갑질')" onmouseout="fn_mouseOut('59')" class='subTitle'>공공분야 내부의 갑질</h4>
                            
								<div class='useGuideTableWrap'>
									<table class='table useGuideTable'>
										<caption class='blind'>공공분야 내부의 갑질의 유형 및 대표 사례</caption>
		                                <thead>
		                                </thead>
										<tbody>
											<tr>
												<th tabindex="60" onmouseover="fn_mouseOver('60','이익 추구')" onmouseout="fn_mouseOut('60')" rowspan='2' scope='col'><span class="tcolor_blue">이익 추구</span></th>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_07.png" alt="공공분야"/></td>
												<td class='cont'><strong tabindex="61" onmouseover="fn_mouseOver('61','공공분야')" onmouseout="fn_mouseOut('61')">공공분야</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="62" onmouseover="fn_mouseOver('62','비공식 인력파견, 인사적체 해소에 산하기관 활용')" onmouseout="fn_mouseOut('62')">비공식 인력파견, 인사적체 해소에 산하기관 활용</li>
														<li tabindex="63" onmouseover="fn_mouseOver('63','인허가 조건으로 주민편익시설 과다요구 및 비용부담 전가')" onmouseout="fn_mouseOut('63')">인허가 조건으로 주민편익시설 과다요구 및 비용부담 전가</li>
														<li tabindex="64" onmouseover="fn_mouseOver('64','산하기관 시설 무상사용 또는 과소비용 지급')" onmouseout="fn_mouseOut('64')">산하기관 시설 무상사용 또는 과소비용 지급</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_08.png" alt="개인"/></td>
												<td class='cont'><strong tabindex="65" onmouseover="fn_mouseOver('65','개인')" onmouseout="fn_mouseOut('65')">개인</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="66" onmouseover="fn_mouseOver('66','승진·인사를 빌미로 하급자로부터 금품·향응 수수')" onmouseout="fn_mouseOut('66')">승진·인사를 빌미로 하급자로부터 금품·향응 수수</li>
														<li tabindex="67" onmouseover="fn_mouseOver('67','기관장이 인사팀장에게 특정 응시자 합격 지시 및 채용공고 변경')" onmouseout="fn_mouseOut('67')">기관장이 인사팀장에게 특정 응시자 합격 지시 및 채용공고 변경</li>
														<li tabindex="68" onmouseover="fn_mouseOver('68','기관장 부인 생일행사 등에 공공시설 이용 및 공무원 동원')" onmouseout="fn_mouseOut('68')">기관장 부인 생일행사 등에 공공시설 이용 및 공무원 동원 </li>
													</ul>
												</td>
											</tr>
											<tr>
												<th tabindex="69" onmouseover="fn_mouseOver('69','불이익 처우')" onmouseout="fn_mouseOut('69')" rowspan='2' class='bb' scope='col'><span class="tcolor_blue">불이익 처우</span></th>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_09.png" alt="업무적"/></td>
												<td class='cont'><strong tabindex="70" onmouseover="fn_mouseOver('70','업무적')" onmouseout="fn_mouseOut('70')">업무적</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="71" onmouseover="fn_mouseOver('71','승진 누락, 부당 전보·평정 등 인사권한 남용')" onmouseout="fn_mouseOut('71')">승진 누락, 부당 전보·평정 등 인사권한 남용</li>
														<li tabindex="72" onmouseover="fn_mouseOver('72','야근 및 휴일 근무 강요, 업무지시 후 책임 전가')" onmouseout="fn_mouseOut('72')">야근 및 휴일 근무 강요, 업무지시 후 책임 전가</li>
														<li tabindex="73" onmouseover="fn_mouseOver('73','0년치 감사자료, 3천장의 대형도면 출력 등 과다한 자료요구')" onmouseout="fn_mouseOut('73')">0년치 감사자료, 3천장의 대형도면 출력 등 과다한 자료요구</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td class='icon'><img src="../images/egovframework/gcall/main_new/consult/icon_10.png" alt="인격적"/></td>
												<td class='cont'><strong tabindex="74" onmouseover="fn_mouseOver('74','인격적')" onmouseout="fn_mouseOut('74')">인격적</strong>
													<ul class='ulStyle mgt-10'>
														<li tabindex="75" onmouseover="fn_mouseOver('75','상급기관에서 산하기관 직원에게 폭언·폭행')" onmouseout="fn_mouseOut('75')">상급기관에서 산하기관 직원에게 폭언·폭행</li>
														<li tabindex="76" onmouseover="fn_mouseOver('76','인턴에게 카톡으로 사적만남 요구, 회식자리에서 성추행')" onmouseout="fn_mouseOut('76')">인턴에게 카톡으로 사적만남 요구, 회식자리에서 성추행</li>
														<li tabindex="77" onmouseover="fn_mouseOver('77','특수교육 실무원 인사명령 시 반납이라는 표현 사용')" onmouseout="fn_mouseOut('77')">특수교육 실무원 인사명령 시 ‘반납’이라는 표현 사용</li>
													</ul>
												</td>
											</tr>
										</tbody>
										<tfoot></tfoot>
									</table></div>
									<p tabindex="78" onmouseover="fn_mouseOver('78','민간분야 내부의 갑질피해 제보 및 상담은 직장갑질119를 이용해주시기 바랍니다')" onmouseout="fn_mouseOut('78')" class='txt fontW-400 fontS-1 mgt-10'>
										※ 민간분야 내부의 갑질피해 제보 및 상담은 <a href="https://ko-kr.facebook.com/gabjil119" target="_blank" title="새창열림"  class='linkbtn'>직장갑질119  <i class='ti-new-window'></i></a>를 이용해주시기 바랍니다.
									</p>

					</div><!-- limitWrap -->

<hr/>

                    <div class='limitWrap'>
                    
                        <h3 tabindex="79" onmouseover="fn_mouseOver('79','갑질피해상담 신청하기')" onmouseout="fn_mouseOut('79')" class='mainTitle'>갑질피해상담</h3>
                        <h4 tabindex="80" onmouseover="fn_mouseOver('80','개인정보 수집 및 이용안내 확인 후 동의')" onmouseout="fn_mouseOut('80')" class='subTitle'>개인정보 수집 및 이용안내 확인 후 동의</h4>
                        
                            <div class='agreeText'>
                                <h5 tabindex="81" onmouseover="fn_mouseOver('81','1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)')" onmouseout="fn_mouseOut('81')">1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</h5>
                                <p tabindex="82" onmouseover="fn_mouseOver('82','국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진 목적(갑질피해 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다')" onmouseout="fn_mouseOut('82')" class='txt fontS-1'>
								국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진<br class='pc__itemView'> 
								목적(갑질피해 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.
								</p>
                               

                                <h5 tabindex="83" onmouseover="fn_mouseOver('83','2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)')" onmouseout="fn_mouseOut('83')">2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</h5>
                                <ul>
									<li tabindex="84" onmouseover="fn_mouseOver('84','필수항목 : 상담내용')" onmouseout="fn_mouseOut('84')">O 필수항목 : 상담내용</li>
									<li tabindex="85" onmouseover="fn_mouseOver('85','※ 익명 채팅상담으로 개인정보는 채팅상담 파일로 관리됩니다.')" onmouseout="fn_mouseOut('85')" style="font-size:13px;">※ 익명 채팅상담으로 개인정보는 채팅상담 파일로 관리됩니다.</li>
                               	</ul>


                                <h5 tabindex="86" onmouseover="fn_mouseOver('86','3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)')" onmouseout="fn_mouseOut('86')">3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</h5>
                                <p tabindex="87" onmouseover="fn_mouseOver('87','국민콜110은 원칙적으로 개인정보 보존기간(5년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다')" onmouseout="fn_mouseOut('87')" class='txt fontS-1'>
								국민콜110은 원칙적으로 개인정보 보 <span style="text-decoration-line: underline;font-weight:bold;">보존기간(5년)</span>이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다.<br class='pc__itemView'> 
								다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다.
								</p>
                                


                                <h5 tabindex="88" onmouseover="fn_mouseOver('88','4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)')" onmouseout="fn_mouseOut('88')">4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</h5>
                                <p tabindex="89" onmouseover="fn_mouseOver('89','상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다')" onmouseout="fn_mouseOut('89')" class='txt fontS-1'>
								상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나<br class='pc__itemView'> 
								최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.
								</p>
								
								<br>
								<div tabindex="90" onmouseover="fn_mouseOver('90','갑질피해 신고방법 및 피해구제 절차에 대한 안내')" onmouseout="fn_mouseOut('90')">
									<span style="font-weight:bold;font-size:1.1rem;color:#f3763a;">※ 갑질피해 신고방법 및 피해구제 절차에 대한 안내</span>
								</div> 								
                            </div>

							<form action="#" name="##">
								<fieldset>
								
									
									<legend>갑질피해상담신청</legend>
										
											<div tabindex="91" onmouseover="fn_mouseOver('91','(필수) 위 내용을 이해하였으며, 개인정보 수집 이용에 동의합니다.')" onmouseout="fn_mouseOut('91')" class='agreeCheckWrap'>
												<input type='checkbox' id="agree_yn"><label for="agree_yn">(필수) 위 내용을 이해하였으며, 개인정보 수집&middot;이용에 동의합니다.</label>
											</div>

											<div tabindex="92" onmouseover="fn_mouseOver('92','상담신청하기')" onmouseout="fn_mouseOut('92')" class='btnWrap'>
												<button class='btn btn-big btn-blue' type='button' id="affectBtn" title="새창 열림">상담신청하기</button>
											</div>

     								</fieldset>
							</form>
							<!-- //갑질피해상담신청 -->

                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>

			
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
                

		</div>
	</body>
</html>