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
			var navUrl = "privacy";
		</script>
		
	</head>
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
	<!-- 탑메뉴 -->
		<c:import url="../common/top_new.jsp"/>
            
		<main class='mainWrap'>
				<c:import url="../common/sideMenu.jsp"/>
				<!-- quick_wrap -->

           
                <div class='contentArea' id='contentArea'><div class='container'>
						<div class="sub-visual subv-1 mgb-50">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','개인정보처리방침')" onmouseout="fn_mouseOut('24')">개인정보처리방침</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
						</div><!-- sub-visual -->   
					

                    <div class='limitWrap'>
                    
							<h3 tabindex="26" onmouseover="fn_mouseOver('26','정부민원안내콜센터 개인정보처리방침')" onmouseout="fn_mouseOut('26')" class='mainTitle'>정부민원안내콜센터 개인정보처리방침</h3>


							<div class='text-right'>
								  	<label for="privacyGO">개인정보 처리방침 적용지침:</label>
									<select name="privacyGO" id="privacyGO" onchange="location.href=this.value;">
									<option value="/privacy.do?sd=first">제정 ~ 2016.03.31 적용지침</option>
									<option value="/privacy.do?sd=20160401">2016.04.01 ~ 2016.06.12 적용지침</option>
									<option value="/privacy.do?sd=20160613">2016.06.13 ~ 2016.08.21 적용지침</option>
									<option value="/privacy.do?sd=20160822">2016.08.22 ~ 2016.09.29 적용지침</option>
									<option value="/privacy.do?sd=20160930">2016.09.30 ~ 2017.04.24 적용지침</option>
									<option value="/privacy.do?sd=20170424">2017.04.24 ~ 2018.01.28 적용지침</option>
									<option value="/privacy.do?sd=20180128">2018.01.28 ~ 2018.06.30 적용지침</option>
									<option value="/privacy.do?sd=20180701">2018.07.01 ~ 2019.03.31 적용지침</option>
									<option value="/privacy.do?sd=20190401">2019.04.01 ~ 2019.06.09 적용지침</option>
									<option value="/privacy.do?sd=20190610">2019.06.10 ~ 2019.07.28 적용지침</option>
									<option value="/privacy.do?sd=20190729">2019.07.29 ~ 2019.09.30 적용지침</option>
									<option value="/privacy.do?sd=20191001">2019.10.01 ~ 2020.04.19 적용지침</option>
									<option value="/privacy.do?sd=20200420">2020.04.20 ~ 2021.01.31 적용지침</option>
									<option value="/privacy.do?sd=20210201">2021.02.01 ~ 2021.02.18 적용지침</option>
									<option value="/privacy.do?sd=20210219">2021.02.19 ~ 2021.09.05 적용지침</option>
									<option value="/privacy.do?sd=20210906">2021.09.06 ~ 2022.01.06 적용지침</option>
									<option value="/privacy.do?sd=20220107">2022.01.07 ~ 2022.03.29 적용지침</option>
									<option value="/privacy.do?sd=20220330">2022.03.30 ~ 2022.12.31 적용지침</option>
									<option value="/privacy.do?sd=20230601">2023.01.01 ~ 2023.05.31 적용지침</option>
									<option value="/privacy.do?sd=20230817">2023.06.01 ~ 2023.08.17 적용지침</option>
									<option value="/privacy.do?sd=20240415">2023.08.17 ~ 2024.04.14 적용지침</option>
									<option value="/privacy.do?sd=20240509">2024.04.15 ~ 2024.05.08 적용지침</option>
									<option selected="selected" value="/privacy.do?sd=current">현행 적용지침</option>
									</select>
							</div>
                        
                        <div class='privacyInfo'>
                            <div class="panel panel-default">
                                <div class="panel-body ">
                                    <table>
                                        <caption class='blind'>개인정보처리방침</caption>
                                        <thead class='blind'><tr><th scope='col'>개인정보처리방침</th></tr></thead>
                                        <tbody>
                                            <tr>
                                                <td tabindex="27" onmouseover="fn_mouseOver('27','국민권익위원회 정부합동민원센터 소속 정부민원안내콜센터는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보처리방침은 다음과 같습니다.')" onmouseout="fn_mouseOut('27')" style="padding-left:20px">
													국민권익위원회 정부합동민원센터 소속 정부민원안내콜센터는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보처리방침은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                            	<!-- 2023.01.05 -->
                                            	<td style="margin:auto;text-align:center">
                                        			<a tabindex="1" onmouseover="fn_mouseOver('1','주요 개인정보 처리 표시(라벨링)')" onmouseout="fn_mouseOut('1')" href="#" title="주요 개인정보 처리 표시(라벨링)">
                                                    	<img src="<c:url value='/images/egovframework/gcall/privacy/privacy.png'/>" alt="주요 개인정보 처리 표시(라벨링)">
                                               		</a>
                                                </td>
                                            </tr>
                                            
                                           <tr>
                                           		<td>
                                           			 <table class='table table-bordered'>
                                           				<thead></thead>
                                           				<tbody>
                                           					<tr>	
                                           						<td colspan="2"  style="text-align: center;"><strong>목차</strong></td>
                                           					</tr>
                                           					<tr>	
                												<td tabindex="28" onmouseover="fn_mouseOver('28','제1조(개인정보의 처리목적ㆍ처리항목 및 보유기간)')" onmouseout="fn_mouseOut('28')">
                                           							<a href="#"  class="scrollToSection" data-target="section1" >
	                													<img src="<c:url value='/images/egovframework/gcall/privacy/privacy01.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="개인정보 처리목적">
	                                                    				<img src="<c:url value='/images/egovframework/gcall/privacy/privacy01_1.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="처리항목">
	                                                    				<img src="<c:url value='/images/egovframework/gcall/privacy/privacy01_2.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="보유기간">&nbsp;  
	                													제1조(개인정보의 처리목적ㆍ처리항목 및 보유기간)
                													</a>
                												</td>
                                           						<td tabindex="29" onmouseover="fn_mouseOver('29','제8조(개인정보의 안전성 확보조치)')" onmouseout="fn_mouseOut('29')">
                                           							<a href="#"  class="scrollToSection" data-target="section8" >
                                        								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy07.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="안전성 확보조치">
                                           								제8조(개인정보의 안전성 확보조치)
                                          							</a>
                                           						</td>
                                           					</tr>
                                           					<tr>	
                                           						<td tabindex="30" onmouseover="fn_mouseOver('30','제2조(개인정보처리 및 제3자 제공)')" onmouseout="fn_mouseOut('30')">
                                           							<a href="#"  class="scrollToSection" data-target="section2" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy02.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="제3자 제공">
                                           								제2조(개인정보처리 및 제3자 제공)
                                          							</a>
                                           						</td>
                                           						<td tabindex="31" onmouseover="fn_mouseOver('31','제9조(정보주체의 권익침해 구제방법)')" onmouseout="fn_mouseOut('31')">
                                           							<a href="#"  class="scrollToSection" data-target="section9" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy08.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="권익침해구제">
                                           								제9조(정보주체의 권익침해 구제방법)
                                           							</a>
                                           						</td>
                                           					</tr>
                                           					<tr>	
                                           						<td tabindex="32" onmouseover="fn_mouseOver('32','제3조(개인정보처리의 위탁)')" onmouseout="fn_mouseOut('32')">
                                           							<a href="#"  class="scrollToSection" data-target="section3" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy03.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="처리 위탁">
                                           								제3조(개인정보처리의 위탁)
                                          							</a>
                                           						</td>
                                           						<td tabindex="33" onmouseover="fn_mouseOver('33','제10조(개인정보의 추가적인 이용ㆍ제공의 기준)')" onmouseout="fn_mouseOut('33')">
                                           							<a href="#"  class="scrollToSection" data-target="section10" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy09.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="추가이용제공기준">
                                           								제10조(개인정보의 추가적인 이용ㆍ제공의 기준)
                                           							</a>
                                        						</td>
                                           					</tr>
                                           					<tr>	
                                           						<td tabindex="34" onmouseover="fn_mouseOver('34','제4조(정보주체와 법정 대리인의 권리ㆍ의무 등)')" onmouseout="fn_mouseOut('34')">
                                           							<a href="#"  class="scrollToSection" data-target="section4" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy04.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="정보주체 권리의무">
                                                    					<img src="<c:url value='/images/egovframework/gcall/privacy/privacy04_1.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="열람청구">
                                           								제4조(정보주체와 법정 대리인의 권리ㆍ의무 등)
                                           							</a>
                                           						</td>
                                           						<td tabindex="35" onmouseover="fn_mouseOver('35','제11조(고정형 영상정보처리기기 설치 및 운영)')" onmouseout="fn_mouseOut('35')">
                                           							<a href="#"  class="scrollToSection" data-target="section11" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy09.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="영상정보처리기기">
                                           								제11조(고정형 영상정보처리기기 설치 및 운영)
                                          							</a>
                                          						</td>
                                           					</tr>
                                           					<tr>	
                                           						<td tabindex="36" onmouseover="fn_mouseOver('36','제5조(개인정보의 열람청구를 접수･처리하는 부서)')" onmouseout="fn_mouseOut('36')">
                                           							<a href="#"  class="scrollToSection" data-target="section5" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy04.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="열람청구를 접수･처리하는 부서">
                                                    					<img src="<c:url value='/images/egovframework/gcall/privacy/privacy04_1.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="열람청구">
                                           								제5조(개인정보의 열람청구를 접수･처리하는 부서)
                                           							</a>
                                          						</td>
                                           						<td tabindex="37" onmouseover="fn_mouseOver('37','제12조(개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항)')" onmouseout="fn_mouseOut('37')">
                                           							<a href="#"  class="scrollToSection" data-target="section12" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy10.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="자동수집">
                                           								제12조(개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항)
                                           							</a>
                                          						</td>
                                           					</tr>
                                           					<tr>	
                                           						<td tabindex="38" onmouseover="fn_mouseOver('38','제6조(개인정보보호 책임자)')" onmouseout="fn_mouseOut('38')">
                                           							<a href="#"  class="scrollToSection" data-target="section6" >
                                         								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy05.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="개인정보보호 책임자">
                                           								제6조(개인정보보호 책임자)
                                           							</a>
                                           						</td>
                                           						<td tabindex="39" onmouseover="fn_mouseOver('39','제13조(개인정보 처리방침의 변경)')" onmouseout="fn_mouseOut('39')">
                                           							<a href="#"  class="scrollToSection" data-target="section13" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy11.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="처리방침 변경">
                                           								제13조(개인정보 처리방침의 변경)
                                           							</a>
                                           						</td>
                                           					</tr>
                                           					<tr>	
                                           						<td tabindex="40" onmouseover="fn_mouseOver('40','제7조(개인정보의 파기)')" onmouseout="fn_mouseOut('40')">
                                           							<a href="#"  class="scrollToSection" data-target="section7" >
                                           								<img src="<c:url value='/images/egovframework/gcall/privacy/privacy06.png'/>" style="width:25px;hright:45px; vertical-align:middle;" alt="파기">
                                           								제7조(개인정보의 파기)
																	</a>                                           								
                                           						</td>
                                           						<td></td>
                                           					</tr>
                                           				</tbody>
                                           			</table>
                                           		</td>
                                           </tr>
                                            
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy01.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="개인정보 처리목적">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy01_1.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="처리항목">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy01_2.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="보유기간">&nbsp;  
                                                    <b tabindex="41" onmouseover="fn_mouseOver('41','제1조 개인정보의 처리목적ㆍ처리항목 및 보유기간')" onmouseout="fn_mouseOut('41')" id="section1">제1조(개인정보의 처리목적ㆍ처리항목 및 보유기간)</b><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="42" onmouseover="fn_mouseOver('42','1 정부민원안내콜센터는 전화상담, 문자상담, 예약상담, SNS 상담, 채팅상담, 화상(수어)상담 처리를 위해 아래와 같이 개인정보를 처리합니다.')" onmouseout="fn_mouseOut('42')" style="padding-left:20px">
                                                    ① 정부민원안내콜센터는 전화상담, 문자상담, 예약상담, SNS 상담, 채팅상담, 화상(수어)상담 처리를 위해 아래와 같이 개인정보를 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보의 처리목적ㆍ처리항목 및 보유기간</caption>
                                                        <thead class='blind'>
                                                            <tr>
                                                                <th scope='col'>서비스 항목</th>
                                                                <th scope='col'>서비스 설명</th>
                                                            </tr>
                                                        </thead>
                                                        <tr>
                                                            <td tabindex="43" onmouseover="fn_mouseOver('43','전화상담')" onmouseout="fn_mouseOut('43')" colspan="2">&nbsp;<b>전화상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="44" onmouseover="fn_mouseOver('44','처리목적')" onmouseout="fn_mouseOut('44')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="45" onmouseover="fn_mouseOver('45','전화 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리')" onmouseout="fn_mouseOut('45')">&nbsp;전화 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="46" onmouseover="fn_mouseOver('46','처리근거')" onmouseout="fn_mouseOut('46')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="47" onmouseover="fn_mouseOver('47','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능) 개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('47')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능) <br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="48" onmouseover="fn_mouseOver('48','처리항목')" onmouseout="fn_mouseOut('48')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="49" onmouseover="fn_mouseOver('49','필수 : 연락처, 상담내용, 상담내용 녹취 _ 선택 : 성명, 주소(위치), 신고내용(긴급신고 이관 시), 접수내용(비긴급상담 이관 및 접수 시) _ 선택 : 생년월일, 주소지, 가족성명, 보훈번호(국가보훈부 상담 시) _ 선택 : 성명, 성별, 지역(또는 주소), 연령대(행정안전부 관련상담 시) _ 선택 : 성명, 대리인(또는 법인명), 사건·접수번호, 처분청, 연락처(행정심판 상담 시) _ 선택 : 성명, 영업장명, 영업장주소(식품의약품안전처 상담 시) _ 선택 : 상호, 대표자명, 사업자등록번호(공정거래위원회 상담 시) _ 선택 : 성명, 조사지역(통계청 상담 시) _ 선택 : 성명, 소속기관, 이메일주소, 생년월일(청렴연수원 나라배움터 상담 시) _ 선택 : 문서24 ID, 사업자등록번호, 사업장명, 사업장주소, 이메일주소(문서24 상담 시)')" onmouseout="fn_mouseOut('49')">
                                                            	&nbsp;필수 : 연락처, 상담내용, 상담내용 녹취<br>
                                                                &nbsp;선택 : 성명, 주소(위치), 신고내용(긴급신고 이관 시), 접수내용(비긴급상담 이관 및 접수 시)<br>
                                                                &nbsp;선택 : 성명, 생년월일, 주소지, 가족성명, 보훈번호(국가보훈부 상담 시)<br>
                                                                &nbsp;선택 : 성명, 성별, 지역(또는 주소), 연령대(행정안전부 관련상담 시)<br>
                                                                &nbsp;선택 : 성명, 대리인(또는 법인명), 사건·접수번호, 처분청, 연락처(행정심판 상담 시)<br>
                                                                &nbsp;선택 : 성명, 영업장명, 영업장주소(식품의약품안전처 상담 시)<br>
                                                                &nbsp;선택 : 상호, 대표자명, 사업자등록번호(공정거래위원회 상담 시)<br>
                                                                &nbsp;선택 : 성명, 조사지역(통계청 상담 시)<br>
                                                                &nbsp;선택 : 성명, 소속기관, 이메일주소, 생년월일(청렴연수원 나라배움터 상담 시)<br>
                                                                &nbsp;선택 : 문서24 ID, 사업자등록번호, 사업장명, 사업장주소, 이메일주소(문서24 상담 시)<br>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="50" onmouseover="fn_mouseOver('50','보유기간 5년')" onmouseout="fn_mouseOut('50')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="51" onmouseover="fn_mouseOver('51','5년')" onmouseout="fn_mouseOut('51')">&nbsp;5년</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="52" onmouseover="fn_mouseOver('52','문자상담')" onmouseout="fn_mouseOut('52')" colspan="2">&nbsp;<b>문자상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="53" onmouseover="fn_mouseOver('53','처리목적')" onmouseout="fn_mouseOut('53')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="54" onmouseover="fn_mouseOver('54','휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리')" onmouseout="fn_mouseOut('54')">&nbsp;휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="55" onmouseover="fn_mouseOver('55','처리근거')" onmouseout="fn_mouseOut('55')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="56" onmouseover="fn_mouseOver('56','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)  개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('56')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)<br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="57" onmouseover="fn_mouseOver('57','처리항목')" onmouseout="fn_mouseOut('57')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="58" onmouseover="fn_mouseOver('58','필수 : 연락처, 상담내용')" onmouseout="fn_mouseOut('58')">&nbsp;필수 : 연락처, 상담내용</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="59" onmouseover="fn_mouseOver('59','보유기간')" onmouseout="fn_mouseOut('59')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="60" onmouseover="fn_mouseOver('60','5년')" onmouseout="fn_mouseOut('60')">&nbsp;5년</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="61" onmouseover="fn_mouseOver('61','예약상담')" onmouseout="fn_mouseOut('61')" colspan="2">&nbsp;<b>예약상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="62" onmouseover="fn_mouseOver('62','처리목적')" onmouseout="fn_mouseOut('62')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="63" onmouseover="fn_mouseOver('63','상담 예약을 위한 정보처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리')" onmouseout="fn_mouseOut('63')">&nbsp;상담 예약을 위한 정보처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="64" onmouseover="fn_mouseOver('64','처리근거')" onmouseout="fn_mouseOut('64')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="65" onmouseover="fn_mouseOver('65','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)  개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('65')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)<br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                         <tr>
                                                            <td tabindex="66" onmouseover="fn_mouseOver('66','처리항목')" onmouseout="fn_mouseOut('66')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="67" onmouseover="fn_mouseOver('67','필수 : 연락처')" onmouseout="fn_mouseOut('67')">&nbsp;필수 : 연락처</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="68" onmouseover="fn_mouseOver('68','보유기간')" onmouseout="fn_mouseOut('68')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="69" onmouseover="fn_mouseOver('69','5년')" onmouseout="fn_mouseOut('69')">&nbsp;5년</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="70" onmouseover="fn_mouseOver('70','에스엔에스상담')" onmouseout="fn_mouseOut('70')" colspan="2">&nbsp;<b>SNS상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="71" onmouseover="fn_mouseOver('71','처리목적')" onmouseout="fn_mouseOut('71')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="72" onmouseover="fn_mouseOver('72','에스엔에스 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리')" onmouseout="fn_mouseOut('72')">&nbsp;SNS 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="73" onmouseover="fn_mouseOver('73','처리근거')" onmouseout="fn_mouseOut('73')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="74" onmouseover="fn_mouseOver('74','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)  개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('74')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)<br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="75" onmouseover="fn_mouseOver('75','처리항목')" onmouseout="fn_mouseOut('75')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="76" onmouseover="fn_mouseOver('76','필수 : SNS(페이스북, 트위터, 인스타그램, 티스토리) ID, 상담내용')" onmouseout="fn_mouseOut('76')">&nbsp;필수 : SNS(페이스북, 트위터, 인스타그램, 티스토리) ID, 상담내용</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="77" onmouseover="fn_mouseOver('77','보유기간')" onmouseout="fn_mouseOut('77')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="78" onmouseover="fn_mouseOver('78','5년')" onmouseout="fn_mouseOut('78')">&nbsp;5년</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="79" onmouseover="fn_mouseOver('79','채팅상담')" onmouseout="fn_mouseOut('79')" colspan="2">&nbsp;<b>채팅상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="80" onmouseover="fn_mouseOver('80','처리목적')" onmouseout="fn_mouseOut('80')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="81" onmouseover="fn_mouseOver('81','채팅 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리')" onmouseout="fn_mouseOut('81')">&nbsp;채팅 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="82" onmouseover="fn_mouseOver('82','처리근거')" onmouseout="fn_mouseOut('82')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="83" onmouseover="fn_mouseOver('83','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능) _ 개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('83')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)<br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="84" onmouseover="fn_mouseOver('84','처리항목')" onmouseout="fn_mouseOut('84')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="85" onmouseover="fn_mouseOver('85','필수 : 연락처, 상담내용, IP주소, 카카오톡ID')" onmouseout="fn_mouseOut('85')">
                                                            	&nbsp;필수 : 연락처, 상담내용, IP주소, 카카오톡ID<br>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="86" onmouseover="fn_mouseOver('86','보유기간')" onmouseout="fn_mouseOut('86')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="87" onmouseover="fn_mouseOver('87','5년')" onmouseout="fn_mouseOut('87')">&nbsp;5년</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="88" onmouseover="fn_mouseOver('88','화상(수어)상담')" onmouseout="fn_mouseOut('88')" colspan="2">&nbsp;<b>화상(수어)상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="89" onmouseover="fn_mouseOver('89','처리목적')" onmouseout="fn_mouseOut('89')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="90" onmouseover="fn_mouseOver('90','화상(수어) 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리')" onmouseout="fn_mouseOut('90')">&nbsp;화상(수어) 상담업무 처리 및 분석ㆍ관리, 대국민 만족도 조사ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="91" onmouseover="fn_mouseOver('91','처리근거')" onmouseout="fn_mouseOut('91')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="92" onmouseover="fn_mouseOver('92','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)_ 개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('92')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)<br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="93" onmouseover="fn_mouseOver('93','처리항목')" onmouseout="fn_mouseOut('93')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="94" onmouseover="fn_mouseOver('94','필수 : 연락처, 상담내용, 상담영상, IP주소')" onmouseout="fn_mouseOut('94')">
                                                            	&nbsp;필수 : 연락처, 상담내용, 상담영상, IP주소<br>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="95" onmouseover="fn_mouseOver('95','보유기간')" onmouseout="fn_mouseOut('95')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="96" onmouseover="fn_mouseOver('96','5년')" onmouseout="fn_mouseOut('96')">&nbsp;5년</td>
                                                        </tr>                                                        
                                                    	<!-- 신규 추가1 -->
                                                    	<tr>
                                                            <td tabindex="97" onmouseover="fn_mouseOver('97','사용자 관리')" onmouseout="fn_mouseOut('97')" colspan="2">&nbsp;<b>사용자 관리</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="98" onmouseover="fn_mouseOver('98','처리목적')" onmouseout="fn_mouseOut('98')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="99" onmouseover="fn_mouseOver('99','정부민원안내콜센터 소관업무 수행')" onmouseout="fn_mouseOut('99')">&nbsp;정부민원안내콜센터 소관업무 수행</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="100" onmouseover="fn_mouseOver('100','처리근거')" onmouseout="fn_mouseOut('100')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="101" onmouseover="fn_mouseOver('101','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능) _ 개인정보보호법 제15조(개인정보의 수집ㆍ이용)')" onmouseout="fn_mouseOut('101')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 제12조(기능)<br>&nbsp;개인정보보호법 제15조(개인정보의 수집ㆍ이용)</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="102" onmouseover="fn_mouseOver('102','처리항목')" onmouseout="fn_mouseOut('102')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="103" onmouseover="fn_mouseOver('103','필수 : 이름,  사용자 ID _선택 : CTI시스템 ID')" onmouseout="fn_mouseOut('103')">
                                                            	&nbsp;필수 : 이름,  사용자 ID<br>&nbsp;선택 : CTI시스템 ID<br>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="104" onmouseover="fn_mouseOver('104','보유기간')" onmouseout="fn_mouseOut('104')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="105" onmouseover="fn_mouseOver('105','5년')" onmouseout="fn_mouseOut('105')">&nbsp;5년</td>
                                                        </tr>
                                                        <!-- 신규 추가2 -->
                                                    	<tr>
                                                            <td tabindex="106" onmouseover="fn_mouseOver('106','상담사 인사ㆍ급여 정보')" onmouseout="fn_mouseOut('106')" colspan="2">&nbsp;<b>상담사 인사ㆍ급여 정보</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="107" onmouseover="fn_mouseOver('107','처리목적')" onmouseout="fn_mouseOut('107')" style="text-align: center;">처리목적</td>
                                                            <td tabindex="108" onmouseover="fn_mouseOver('108','상담사 인사 및 복무관리, 급여지급, 연말정산 업무 수행')" onmouseout="fn_mouseOut('108')">&nbsp;상담사 인사 및 복무관리, 급여지급, 연말정산 업무 수행</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="109" onmouseover="fn_mouseOver('109','처리근거')" onmouseout="fn_mouseOut('109')" style="text-align: center;">처리근거</td>
                                                            <td tabindex="110" onmouseover="fn_mouseOver('110','정부민원안내콜센터 공무직 등 근로자 인사관리규정 제3절 채용결정 후 조치사항')" onmouseout="fn_mouseOut('110')">&nbsp;정부민원안내콜센터 공무직 등 근로자 인사관리규정 제3절 채용결정 후 조치사항</td>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="111" onmouseover="fn_mouseOver('111','처리항목')" onmouseout="fn_mouseOut('111')" style="text-align: center;">처리항목</td>
                                                            <td tabindex="112" onmouseover="fn_mouseOver('112','필수 : 이름, 생년월일, 집연락처, 집주소, 핸드폰, E-Mail, 직장연락처, 직장주소, 입사일자, 퇴사일자, 복무사항, 계좌정보, 소득정보 _선택 : 가족사항(관계, 성명, 주민등록번호)')" onmouseout="fn_mouseOut('112')">
                                                            	&nbsp;필수 : 이름, 생년월일, 집연락처, 집주소, 핸드폰, E-Mail, 직장연락처, 직장주소, 입사일자, 퇴사일자, 복무사항, 계좌정보, 소득정보<br>&nbsp;선택 : 가족사항(관계, 성명, 주민등록번호)<br>
                                                        </tr>
                                                        <tr>
                                                            <td tabindex="113" onmouseover="fn_mouseOver('113','보유기간')" onmouseout="fn_mouseOut('113')" style="text-align: center;">보유기간</td>
                                                            <td tabindex="114" onmouseover="fn_mouseOver('114','준영구')" onmouseout="fn_mouseOut('114')">&nbsp;준영구</td>
                                                        </tr>
                                                        
                                                    	
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="115" onmouseover="fn_mouseOver('115','2 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다')" onmouseout="fn_mouseOut('115')" style="padding-left:20px">
                                                    ② 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="116" onmouseover="fn_mouseOver('116','3 정부민원안내콜센터는 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다')" onmouseout="fn_mouseOut('116')" style="padding-left:20px">
                                                    ③ 정부민원안내콜센터는 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="117" onmouseover="fn_mouseOver('117','4 서비스 이용 과정에서 IP주소, 접속일시, 이용기록 등의 서비스 이용기록, 기기정보가 생성되어 수집될 수 있습니다')" onmouseout="fn_mouseOut('117')" style="padding-left:20px">
                                                    ④ 서비스 이용 과정에서 IP주소, 접속일시, 이용기록 등의 서비스 이용기록, 기기정보가 생성되어 수집될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy02.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="제3자 제공">
                                                    <b tabindex="118" onmouseover="fn_mouseOver('118','제2조 개인정보처리 및 제3자 제공')" onmouseout="fn_mouseOut('118')" id="section2">제2조(개인정보처리 및 제3자 제공)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="119" onmouseover="fn_mouseOver('119','1 정부민원안내콜센터는 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다')" onmouseout="fn_mouseOut('119')" style="padding-left:20px">
                                                    ① 정부민원안내콜센터는 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="120" onmouseover="fn_mouseOver('120','2 다만, 정보주체의 동의, 법률의 특별한 규정 등 「개인정보 보호법」 제17조 및 제18조에 해당하는 경우에만 제3자에게 개인정보를 제공합니다')" onmouseout="fn_mouseOut('120')" style="padding-left:20px">
                                                    ② 다만, 정보주체의 동의, 법률의 특별한 규정 등 「개인정보 보호법」 제17조 및 제18조에 해당하는 경우에만 제3자에게 개인정보를 제공합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                               <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy03.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="처리 위탁">
                                                    <b tabindex="121" onmouseover="fn_mouseOver('121','제3조. 개인정보 처리의 위탁')" onmouseout="fn_mouseOut('121')" id="section3">제3조(개인정보처리의 위탁)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="122" onmouseover="fn_mouseOver('122','1 정부민원안내콜센터는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다')" onmouseout="fn_mouseOut('122')" style="padding-left:20px">
                                                    ① 정부민원안내콜센터는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>위탁받는자</caption>
                                                        <strong tabindex="123" onmouseover="fn_mouseOver('123','1. 위탁받는자')" onmouseout="fn_mouseOut('123')">1. 위탁받는자</strong>
                                                        <thead>
                                                            <tr>
                                                                <th tabindex="124" onmouseover="fn_mouseOver('124','업체명')" onmouseout="fn_mouseOut('124')" scope="col">
																	업체명
                                                                </th>
                                                                <th tabindex="125" onmouseover="fn_mouseOver('125','주소')" onmouseout="fn_mouseOut('125')" scope="col">
                                                                   	 주소
                                                                </th>
                                                                <th tabindex="126" onmouseover="fn_mouseOver('126','전화')" onmouseout="fn_mouseOut('126')" scope="col">
																	전화
                                                                </th>
                                                                <th tabindex="127" onmouseover="fn_mouseOver('127','근무시간')" onmouseout="fn_mouseOut('127')" scope="col">
                                                                   	 근무시간
                                                                </th>
                                                                <th tabindex="128" onmouseover="fn_mouseOver('128','위탁업무')" onmouseout="fn_mouseOut('128')" scope="col">
																	위탁업무
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody
                                                            <tr>
                                                                <td tabindex="129" onmouseover="fn_mouseOver('129','㈜아리시스')" onmouseout="fn_mouseOut('129')" style="text-align: center;vertical-align: middle;">
                                                                    	㈜아리시스
                                                                </td>
                                                                <td tabindex="130" onmouseover="fn_mouseOver('130','서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 _1102호')" onmouseout="fn_mouseOut('130')" style="text-align: center;vertical-align: middle;">
                                                                    &nbsp;서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호
                                                                </td>
                                                                <td tabindex="131" onmouseover="fn_mouseOver('131','02-2177-8100')" onmouseout="fn_mouseOut('131')" style="text-align: center;vertical-align: middle;">
                                                                    02-2177-8100
                                                                </td>
                                                                <td tabindex="132" onmouseover="fn_mouseOver('132','평일<br>09:00~18:00')" onmouseout="fn_mouseOut('132')" scope="col" style="text-align: center;vertical-align: middle;">
                                                                   	 평일<br>09:00~18:00
                                                                </td>
                                                                <td tabindex="133" onmouseover="fn_mouseOver('133','시스템 유지관리 및 위탁운영')" onmouseout="fn_mouseOut('133')" scope="col" style="text-align: center;vertical-align: middle;">
																	시스템<br>유지관리<br>및<br>위탁운영
                                                                </td>
                                                            </tr>                                                                                                                   
                                                        </tbody>
                                                    </table>
                                                     <table class='table table-bordered'>
                                                        <caption class='blind'>재위탁받는자</caption>
                                                        <strong tabindex="134" onmouseover="fn_mouseOver('134','2. 재위탁받는자')" onmouseout="fn_mouseOut('134')">2. 재위탁받는자</strong>
                                                         <thead>
                                                            <tr>
                                                                <th tabindex="135" onmouseover="fn_mouseOver('135','업체명')" onmouseout="fn_mouseOut('135')" scope="col">
																	업체명
                                                                </th>
                                                                <th tabindex="136" onmouseover="fn_mouseOver('136','주소')" onmouseout="fn_mouseOut('136')" scope="col">
                                                                   	 주소
                                                                </th>
                                                                <th tabindex="137" onmouseover="fn_mouseOver('137','전화')" onmouseout="fn_mouseOut('137')" scope="col">
																	전화
                                                                </th>
                                                                <th tabindex="138" onmouseover="fn_mouseOver('138','근무시간')" onmouseout="fn_mouseOut('138')" scope="col">
                                                                   	 근무시간
                                                                </th>
                                                                <th tabindex="139" onmouseover="fn_mouseOver('139','재위탁업무')" onmouseout="fn_mouseOut('139')" scope="col">
																	재위탁업무
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody
                                                            <tr>
                                                                <td tabindex="140" onmouseover="fn_mouseOver('140','㈜치우아이티')" onmouseout="fn_mouseOut('140')" style="text-align: center;vertical-align: middle;">
                                                                    	㈜치우아이티
                                                                </td>
                                                                <td tabindex="141" onmouseover="fn_mouseOver('141','서울특별시 용산구 새장로 213-12, 404호(한강로2가, 한강현대하이엘)')" onmouseout="fn_mouseOut('141')" style="text-align: center;vertical-align: middle;">
                                                                    &nbsp;서울특별시 용산구 새장로 213-12, 404호(한강로2가, 한강현대하이엘)
                                                                </td>
                                                                <td tabindex="142" onmouseover="fn_mouseOver('142','070-4007-5432')" onmouseout="fn_mouseOut('142')" style="text-align: center;vertical-align: middle;">
                                                                    070-4007-5432
                                                                </td>
                                                                <td tabindex="143" onmouseover="fn_mouseOver('143','평일<br>09:00~18:00')" onmouseout="fn_mouseOut('143')" style="text-align: center;vertical-align: middle;">
                                                                   	 평일<br>09:00~18:00
                                                                </td>
                                                                <td tabindex="144" onmouseover="fn_mouseOver('144','시스템 유지관리 및 위탁운영')" onmouseout="fn_mouseOut('144')" style="text-align: center;vertical-align: middle;">
																	시스템<br>유지관리<br>및<br>위탁운영
                                                                </td>
                                                            </tr>                                                                                                                   
                                                        </tbody>
                                                    	</table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="145" onmouseover="fn_mouseOver('145','2 정부민원안내콜센터는 위탁계약 체결 시 개인정보보호법 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다')" onmouseout="fn_mouseOut('145')" style="padding-left:20px">
                                                    ② 정부민원안내콜센터는 위탁계약 체결 시 개인정보보호법 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 <br class='pc__itemView'>
													관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="146" onmouseover="fn_mouseOver('146','3 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다')" onmouseout="fn_mouseOut('146')" style="padding-left:20px">
                                                    ③ 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy04.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="정보주체 권리의무">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy04_1.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="열람청구">
                                                    <b tabindex="147" onmouseover="fn_mouseOver('147','제4조(정보주체와 법정 대리인의 권리ㆍ의무 등)')" onmouseout="fn_mouseOut('147')" id="section4">제4조(정보주체와 법정 대리인의 권리ㆍ의무 등)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="148" onmouseover="fn_mouseOver('148','1 정보주체(만 14세 미만인 경우에는 법정대리인)는 언제든지 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다')" onmouseout="fn_mouseOut('148')" style="padding-left:20px">
                                                    ① 정보주체(만 14세 미만인 경우에는 법정대리인)는 언제든지 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="149" onmouseover="fn_mouseOver('149','1. 개인정보 열람요구')" onmouseout="fn_mouseOut('149')" style="padding-left:25px">1. 개인정보 열람요구 </span><br>
                                                    <span tabindex="150" onmouseover="fn_mouseOver('150','2. 개인정보 오류 등의 정정요구')" onmouseout="fn_mouseOut('150')" style="padding-left:25px">2. 개인정보 오류 등의 정정요구</span><br>
                                                    <span tabindex="151" onmouseover="fn_mouseOver('151','3. 개인정보 삭제요구')" onmouseout="fn_mouseOut('151')" style="padding-left:25px">3. 개인정보 삭제요구 </span><br>
                                                    <span tabindex="152" onmouseover="fn_mouseOver('152','4. 개인정보 처리 정지요구')" onmouseout="fn_mouseOut('152')" style="padding-left:25px">4. 개인정보 처리 정지요구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="153" onmouseover="fn_mouseOver('153','2 제1항에 따른 권리 행사는 [개인정보처리방법에 관한 고시 별지 제8호] 개인정보 열람(정정ㆍ삭제ㆍ처리정지) 요구서를 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 정부민원안내콜센터에서는 이에 대해 지체없이 조치하겠습니다.')" onmouseout="fn_mouseOut('153')" style="padding-left:20px">
                                                    ② 제①항에 따른 권리 행사는 <a href="https://www.110.go.kr/consult/fileDown.do?filePath=/files/news/&fileName=11_20240509184756_8cfbd218-fde2-4b73-a901-41d6150ebb34.hwp&originalFileName=[별지 8] 개인정보 열람 요구서(개인정보 처리 방법에 관한 고시).hwp" style="color:blue;text-decoration:underline;" download>[개인정보처리방법에 관한 고시 별지 제8호]</a> 개인정보 열람(정정ㆍ삭제ㆍ처리정지) 요구서를 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 정부민원안내콜센터에서는 이에 대해 지체없이 조치하겠습니다.<br class='pc__itemView'>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="154" onmouseover="fn_mouseOver('154','3 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.')" onmouseout="fn_mouseOut('154')" style="padding-left:20px">
                                                    ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="155" onmouseover="fn_mouseOver('155','4 개인정보보호법 제35조제4항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.')" onmouseout="fn_mouseOut('155')" style="padding-left:20px">
                                                    ④ 개인정보보호법 제35조제4항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="156" onmouseover="fn_mouseOver('156','5 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다.')" onmouseout="fn_mouseOut('156')" style="padding-left:20px">
                                                    ⑤ 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="157" onmouseover="fn_mouseOver('157','6 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 개인정보처리 방법에 관한 고시 별지 제11호 위임장을 제출하여야 합니다.')" onmouseout="fn_mouseOut('157')" style="padding-left:20px">
                                                    ⑥ 제①항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. <br class='pc__itemView'>
													이 경우, <a href="https://www.110.go.kr/consult/fileDown.do?filePath=/files/news/&fileName=11_20240509183522_e573782a-0435-4dbe-99c2-e37380ec9082.hwp&originalFileName=[별지 11] 위임장(개인정보 처리 방법에 관한 고시).hwp" style="color:blue;text-decoration:underline;" download>[개인정보처리 방법에 관한 고시 별지 제11호]</a> 위임장을 제출하여야 합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="158" onmouseover="fn_mouseOver('158','7 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.')" onmouseout="fn_mouseOut('158')" style="padding-left:20px">
                                                    ⑦ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy04.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="열람청구를 접수･처리하는 부서">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy04_1.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="열람청구">
                                                    <b tabindex="159" onmouseover="fn_mouseOver('159','제5조 개인정보의 열람청구를 접수ㆍ처리하는 부서')" onmouseout="fn_mouseOut('159')" id="section5">제5조(개인정보의 열람청구를 접수ㆍ처리하는 부서)</b><br> 
                                                </td>
                                                <tr>
                                                	<td tabindex="160" onmouseover="fn_mouseOver('160','1 정보주체는 제4조제①항에 따른 열람 등 요구를 아래의 부서에 할 수 있습니다. 정부민원안내콜센터는 정보주체의 개인정보 열람 청구가 신속하게 처리되도록 하겠습니다.')" onmouseout="fn_mouseOut('160')" style="padding-left:20px">
                                                    ① 정보주체는 제4조제①항에 따른 열람 등 요구를 아래의 부서에 할 수 있습니다. 정부민원안내콜센터는 정보주체의 개인정보 열람 청구가 신속하게 처리되도록 하겠습니다.
                                                	</td>
                                            	</tr>
                                            	
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보의 열람청구를 접수 처리하는 부서</caption>
                                                        <thead>
                                                            <tr>
                                                                <th tabindex="161" onmouseover="fn_mouseOver('161','부서명')" onmouseout="fn_mouseOut('161')" scope="col"> 부서명 </th>
                                                                <th tabindex="162" onmouseover="fn_mouseOver('162','개인정보파일')" onmouseout="fn_mouseOut('162')" scope="col"> 개인정보파일 </th>
                                                                <th tabindex="163" onmouseover="fn_mouseOver('163','담당자')" onmouseout="fn_mouseOut('163')" scope="col"> 담당자 </th>
                                                                <th tabindex="164" onmouseover="fn_mouseOver('164','연락처')" onmouseout="fn_mouseOut('164')" scope="col"> 연락처 </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        	<tr>
                                                                <td tabindex="165" onmouseover="fn_mouseOver('165','고충상담 기획과')" onmouseout="fn_mouseOut('165')" style="text-align:center;vertical-align:middle;" rowspan="2"> 고충상담 기획과 </td>
                                                                <td tabindex="166" onmouseover="fn_mouseOver('166','전화상담, 문자상담, 예약상담, SNS상담, 채팅상담, 화상상담, 사용자 관리')" onmouseout="fn_mouseOut('166')" scope="col" style="text-align:center;vertical-align:middle;"> 전화상담, 문자상담, 예약상담, SNS상담, 채팅상담, 화상상담, 사용자 관리 </td>
                                                                 <td tabindex="167" onmouseover="fn_mouseOver('167','이영규')" onmouseout="fn_mouseOut('167')" scope="col" style="text-align:center;vertical-align:middle;"> 이영규 </td>
                                                                 <td tabindex="168" onmouseover="fn_mouseOver('168','(전화) 02-2110-6502 _(팩스) 044-200-7957 _(이메일) anarki007 골뱅이 korea.kr')" onmouseout="fn_mouseOut('168')" scope="col" style="text-align:center;vertical-align:middle;"> (전화) 02-2110-6502<br>(팩스) 044-200-7957 <br>(이메일) anarki007@korea.kr </td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="169" onmouseover="fn_mouseOver('169','상담사 인사ㆍ급여 정보')" onmouseout="fn_mouseOut('169')" scope="col" style="text-align:center;vertical-align:middle;"> 상담사 인사ㆍ급여 정보 </td>
                                                                 <td tabindex="170" onmouseover="fn_mouseOver('170','정영애')" onmouseout="fn_mouseOut('170')" scope="col" style="text-align:center;vertical-align:middle;"> 정영애 </td>
                                                                 <td tabindex="171" onmouseover="fn_mouseOver('171','(전화) 02-2110-6512 _(팩스) 044-200-7957 _(이메일) haru7x 골뱅이 korea.kr')" onmouseout="fn_mouseOut('171')" scope="col" style="text-align:center;vertical-align:middle;"> (전화) 02-2110-6512<br>(팩스) 044-200-7957 <br>(이메일) haru7x@korea.kr </td>
                                                            </tr>
                                                        </tbody>
                                                        
                                                    </table>
                                                </td>
                                                <tr>
                                                	<td tabindex="172" onmouseover="fn_mouseOver('172','2 정보주체는 제1 항의 열람청구 접수ㆍ처리부서 이외에, 개인정보보호위원회 개인정보 포털(더블더블더블점프라이버시점지오점케이알)을 통해서도 개인정보 열람 청구를 하실 수 있습니다. ※ 청구절차 : 개인정보ㅇ 포털 → 민원마당 → 개인정보 열람 등 요구')" onmouseout="fn_mouseOut('172')" style="padding-left:20px">
                                                    ② 정보주체는 제①항의 열람청구 접수ㆍ처리부서 이외에, 개인정보보호위원회 <a href="https://www.privacy.go.kr/front/wcp/dcl/per/personalInfoFileSrhList.do?searchInsttCode=1140206&searchInsttNm=정부합동민원센터" style="color:blue;text-decoration:underline;" target="_blank">'개인정보 포털(www.privacy.go.kr)'</a>을 통해서도 개인정보 열람 청구를 하실 수 있습니다.<br>
                                                      &nbsp;※ 청구절차 : 개인정보 포털 → 민원마당 → 개인정보 열람 등 요구<br>
                                                      <img alt="" src="./images/egovframework/gcall/privacy/p5_image.png" style="display:block;margin: 0 auto;">
                                                	</td>
                                            	</tr>
                                            </tr>
                                            
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy05.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="개인정보보호 책임자">
                                                    <b tabindex="173" onmouseover="fn_mouseOver('173','제6조 개인정보보호 책임자')" onmouseout="fn_mouseOut('173')" id="section6">제6조(개인정보보호 책임자)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="174" onmouseover="fn_mouseOver('174','정부민원안내콜센터는 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.')" onmouseout="fn_mouseOut('174')" style="padding-left:20px">
												정부민원안내콜센터는 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보보호책임자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th tabindex="175" onmouseover="fn_mouseOver('175','구분')" onmouseout="fn_mouseOut('175')" scope="col">구분</th>
                                                                <th tabindex="176" onmouseover="fn_mouseOver('176','개인정보보호 책임자')" onmouseout="fn_mouseOut('176')" scope="col">개인정보보호 책임자</th>
                                                                <th tabindex="177" onmouseover="fn_mouseOver('177','개인정보보호 분야별 책임자')" onmouseout="fn_mouseOut('177')" scope="col">개인정보보호 <br>분야별 책임자</th>
                                                                <th tabindex="178" onmouseover="fn_mouseOver('178','개인정보보호 담당자')" onmouseout="fn_mouseOut('178')" scope="col">개인정보보호 담당자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td tabindex="179" onmouseover="fn_mouseOver('179','성명')" onmouseout="fn_mouseOut('179')" style="text-align: center;">성명</td>
                                                                <td tabindex="180" onmouseover="fn_mouseOver('180','심재구')" onmouseout="fn_mouseOut('180')">&nbsp;심재구</td>
                                                                <td tabindex="181" onmouseover="fn_mouseOver('181','김용호')" onmouseout="fn_mouseOut('181')">&nbsp;김용호</td>
                                                                <td tabindex="182" onmouseover="fn_mouseOver('182','이영규')" onmouseout="fn_mouseOut('182')">&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="183" onmouseover="fn_mouseOver('183','부서')" onmouseout="fn_mouseOut('183')" style="text-align: center;">부서</td>
                                                                <td tabindex="184" onmouseover="fn_mouseOver('184','고충상담기획과')" onmouseout="fn_mouseOut('184')">&nbsp;고충상담기획과</td>
                                                                <td tabindex="185" onmouseover="fn_mouseOver('185','고충상담기획과')" onmouseout="fn_mouseOut('185')">&nbsp;고충상담기획과</td>
                                                                <td tabindex="186" onmouseover="fn_mouseOver('186','고충상담기획과')" onmouseout="fn_mouseOut('186')">&nbsp;고충상담기획과</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="187" onmouseover="fn_mouseOver('187','직위')" onmouseout="fn_mouseOut('187')" style="text-align: center;">직위</td>
                                                                <td tabindex="188" onmouseover="fn_mouseOver('188','고충상담기획과장')" onmouseout="fn_mouseOut('188')">&nbsp;고충상담기획과장</td>
                                                                <td tabindex="189" onmouseover="fn_mouseOver('189','정부민원안내콜센터장')" onmouseout="fn_mouseOut('189')">&nbsp;정부민원안내콜센터장</td>
                                                                <td tabindex="190" onmouseover="fn_mouseOver('190','전산사무관')" onmouseout="fn_mouseOut('190')">&nbsp;전산사무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="191" onmouseover="fn_mouseOver('191','연락처')" onmouseout="fn_mouseOut('191')" rowspan="3" style="text-align: center;">연락처</td>
                                                                <td tabindex="192" onmouseover="fn_mouseOver('192','02다시2110다시6502 개인정보보호 담당자로 연결')" onmouseout="fn_mouseOut('192')" rowspan="3" colspan="2">02-2110-6502<br>※ 개인정보보호 담당자로 연결</td>
                                                                <td tabindex="193" onmouseover="fn_mouseOver('193','02다시2110다시6502')" onmouseout="fn_mouseOut('193')">&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="194" onmouseover="fn_mouseOver('194','044다시200다시7957')" onmouseout="fn_mouseOut('194')">&nbsp;044-200-7957</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="195" onmouseover="fn_mouseOver('195','에이엔에이케이아이007골뱅이코리아점케이알')" onmouseout="fn_mouseOut('195')">&nbsp;anarki007@korea.kr</td>                                                                
                                                            </tr>
                                                        </tbody>
                                                        
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                               <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy06.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="파기">
                                                    <b tabindex="196" onmouseover="fn_mouseOver('196','제7조 개인정보의 파기')" onmouseout="fn_mouseOut('196')" id="section7">제7조(개인정보의 파기)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="197" onmouseover="fn_mouseOver('197','정부민원안내콜센터는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다 다만, 다만, 다른 법률에 따라 보존하여야 하는 경우에는 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.')" onmouseout="fn_mouseOut('197')" style="padding-left:20px">
                                                     ① 정부민원안내콜센터는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. <br class='pc__itemView'>
													다만, 다른 법률에 따라 보존하여야 하는 경우에는 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="198" onmouseover="fn_mouseOver('198','2 파기의 절차 및 방법은 다음과 같습니다')" onmouseout="fn_mouseOut('198')" style="padding-left:20px">
                                                    ② 파기의 절차 및 방법은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
													<div style="padding-left:27px">
														<strong tabindex="199" onmouseover="fn_mouseOver('199','1. 파기절차')" onmouseout="fn_mouseOut('199')">1. 파기절차 </strong><br>
														<p tabindex="200" onmouseover="fn_mouseOver('200','정부민원안내콜센터는 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다.')" onmouseout="fn_mouseOut('200')"> 
														정부민원안내콜센터는 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. <br class='pc__itemView'>
														파기사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다.</p>
														<strong tabindex="201" onmouseover="fn_mouseOver('201','2. 파기방법')" onmouseout="fn_mouseOut('201')">2. 파기방법 </strong><br>
														<p tabindex="202" onmouseover="fn_mouseOver('202','정부민원안내콜센터는 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.')" onmouseout="fn_mouseOut('202')"> 
														정부민원안내콜센터는 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.</p>
                                                	 </div>
												</td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy07.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="안전성 확보조치">
                                                    <b tabindex="203" onmouseover="fn_mouseOver('203','제8조 개인정보의 안전성 확보조치')" onmouseout="fn_mouseOut('203')" id="section8">제8조(개인정보의 안전성 확보조치)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="204" onmouseover="fn_mouseOver('204','정부민원안내콜센터는 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다.')" onmouseout="fn_mouseOut('204')" style="padding-left:20px">
                                                    	<p id="">정부민원안내콜센터는 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="205" onmouseover="fn_mouseOver('205','1. 개인정보 취급직원의 최소화 및 교육')" onmouseout="fn_mouseOut('205')" style="padding-left:25px">1. 개인정보 취급직원의 최소화 및 교육</span><br>
                                                    <span tabindex="206" onmouseover="fn_mouseOver('206','개인정보취급자의 지정을 최소화하고 정기적인 교육을 시행하고 있습니다.')" onmouseout="fn_mouseOut('206')" style="padding-left:27px"> 개인정보취급자의 지정을 최소화하고 정기적인 교육을 시행하고 있습니다.</span><br>
                                                    <span tabindex="207" onmouseover="fn_mouseOver('207','2. 개인정보에 대한 접근 제한')" onmouseout="fn_mouseOut('207')" style="padding-left:25px">2. 개인정보에 대한 접근 제한 </span><br>
                                                    <span tabindex="208" onmouseover="fn_mouseOver('208','개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며, 침입차단시스템과 침입방지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.')" onmouseout="fn_mouseOut('208')" style="padding-left:25px">개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며, 침입차단시스템과 침입방지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</span><br>
                                                    <span tabindex="209" onmouseover="fn_mouseOver('209','3. 접속기록의 보관 ')" onmouseout="fn_mouseOut('209')" style="padding-left:25px">3. 접속기록의 보관 </span><br>
                                                    <span tabindex="210" onmouseover="fn_mouseOver('210','개인정보처리시스템에 접속한 기록을 최소 1년 이상(다만, 5만명 이상의 정보주체에 관하여 개인정보를 처리하거나 고유식별정보 또는 민감정보를 처리하는 개인정보처리시스템의 경우에는 2년 이상) 보관ㆍ관리하고 있습니다.')" onmouseout="fn_mouseOut('210')" style="padding-left:25px"> 개인정보처리시스템에 접속한 기록을 최소 1년 이상(다만, 5만명 이상의 정보주체에 관하여 개인정보를 처리하거나 고유식별정보 또는 민감정보를 처리하는 개인정보처리시스템의 경우에는 2년 이상) 보관ㆍ관리하고 있습니다.</span><br>
                                                    <span tabindex="211" onmouseover="fn_mouseOver('211','4. 개인정보의 암호화')" onmouseout="fn_mouseOut('211')" style="padding-left:25px">4. 개인정보의 암호화</span><br>
                                                    <span tabindex="212" onmouseover="fn_mouseOver('212','개인정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.')" onmouseout="fn_mouseOut('212')" style="padding-left:25px"> 개인정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.</span><br>
                                                    <span tabindex="213" onmouseover="fn_mouseOver('213','5. 보안프로그램 설치 및 주기적 점검ㆍ갱신')" onmouseout="fn_mouseOut('213')" style="padding-left:25px">5. 보안프로그램 설치 및 주기적 점검ㆍ갱신</span><br>
                                                    <span tabindex="214" onmouseover="fn_mouseOver('214','해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신ㆍ점검하고 있습니다.')" onmouseout="fn_mouseOut('214')" style="padding-left:25px"> 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신ㆍ점검하고 있습니다.</span><br>
                                                    <span tabindex="215" onmouseover="fn_mouseOver('215','6. 비인가자에 대한 출입 통제')" onmouseout="fn_mouseOut('215')" style="padding-left:25px">6. 비인가자에 대한 출입 통제</span><br>
                                                    <span tabindex="216" onmouseover="fn_mouseOver('216','개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.')" onmouseout="fn_mouseOut('216')" style="padding-left:25px"> 개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</span><br>
                                                    <span tabindex="217" onmouseover="fn_mouseOver('217','7. 정기적인 자체 점검 실시')" onmouseout="fn_mouseOut('217')" style="padding-left:25px">7. 정기적인 자체 점검 실시</span><br>
                                                    <span tabindex="218" onmouseover="fn_mouseOver('218','개인정보 취급 관련 안정성 확보를 위해 정기적으로 개인정보 보호관리 점검을 실시하고 있습니다.')" onmouseout="fn_mouseOut('218')" style="padding-left:25px"> 개인정보 취급 관련 안정성 확보를 위해 정기적으로 개인정보 보호관리 점검을 실시하고 있습니다.</span><br>
                                                    <span tabindex="219" onmouseover="fn_mouseOver('219','8. 내부관리계획의 수립 및 시행')" onmouseout="fn_mouseOut('219')" style="padding-left:25px">8. 내부관리계획의 수립 및 시행</span><br>
                                                    <span tabindex="220" onmouseover="fn_mouseOver('220','개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다')" onmouseout="fn_mouseOut('220')" style="padding-left:25px"> 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                               <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy08.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="권익침해구제">
                                                    <b tabindex="221" onmouseover="fn_mouseOver('221','제9조 정보주체의 권익침해 구제방법')" onmouseout="fn_mouseOut('221')" id="section9">제9조(정보주체의 권익침해 구제방법)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="222" onmouseover="fn_mouseOver('222','1 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다')" onmouseout="fn_mouseOut('222')" style="padding-left:20px">
                                                    ① 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="223" onmouseover="fn_mouseOver('223','1. 개인정보침해신고센터 : 국번없이 118(프라이버시점케이아이에스에이점오알점케이알)')" onmouseout="fn_mouseOut('223')" style="padding-left:25px">1. 개인정보침해신고센터 : 국번없이 118(privacy.kisa.or.kr) </span><br>
                                                    <span tabindex="224" onmouseover="fn_mouseOver('224','2. 개인정보 분쟁조정위원회 : 1833-6972(더블유더블유점케이오피아이씨오점지오점케이알) ')" onmouseout="fn_mouseOut('224')" style="padding-left:25px">2. 개인정보 분쟁조정위원회 : 1833-6972(www.kopico.go.kr) </span><br>
                                                    <span tabindex="225" onmouseover="fn_mouseOver('225','3. 경찰청 사이버수사국 : 국번없이 182(이씨엠점피오엘아이씨이점지오점케이알)')" onmouseout="fn_mouseOut('225')" style="padding-left:25px">3. 경찰청 사이버수사국 : 국번없이 182(ecm.police.go.kr) </span><br>
                                                    <span tabindex="226" onmouseover="fn_mouseOver('226','4. 대검찰청 사이버범죄수사과 : 국번없이 1301(더블유더블유더블유점에스피오점지오점케이알)')" onmouseout="fn_mouseOut('226')" style="padding-left:25px">4. 대검찰청 사이버범죄수사과 : 국번없이 1301(www.spo.go.kr) </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="227" onmouseover="fn_mouseOver('227','2 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(더블유더블유더블유점에스아이엠피메이엔점지오점케이알)을 청구할 수 있습니다')" onmouseout="fn_mouseOut('227')" style="padding-left:20px">
                                                    ② 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(www.simpan.go.kr)을 청구할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy09.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="추가이용제공기준">
                                                    <b tabindex="228" onmouseover="fn_mouseOver('228','제10조 개인정보의 추가적인 이용ㆍ제공의 기준')" onmouseout="fn_mouseOut('228')" id="section10">제10조(개인정보의 추가적인 이용ㆍ제공의 기준)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="229" onmouseover="fn_mouseOver('229',' 정부민원안내콜센터는「개인정보 보호법」제15조제3항 및 제17조제4항에 따라 정보주체의 동의 없이 추가적인 이용 또는 제공할 때 다음과 같은 판단기준을 고려하고 있습니다.')" onmouseout="fn_mouseOut('229')" style="padding-left:20px">
                                                     정부민원안내콜센터는「개인정보 보호법」제15조제3항 및 제17조제4항에 따라 정보주체의 동의 없이 추가적인 이용 또는 제공할 때 다음과 같은 판단기준을 고려하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="230" onmouseover="fn_mouseOver('230','1. 당초 수집 목적과 관련성이 있는지 여부')" onmouseout="fn_mouseOut('230')" style="padding-left:25px">1. 당초 수집 목적과 관련성이 있는지 여부</span><br>
                                                    <span tabindex="231" onmouseover="fn_mouseOver('231','2. 개인정보를 수집한 정황 또는 처리 관행에 비추어 볼 때 개인정보의 추가적인 이용 또는 제공에 대한 예측 가능성이 있는지 여부')" onmouseout="fn_mouseOut('231')" style="padding-left:27px">2. 개인정보를 수집한 정황 또는 처리 관행에 비추어 볼 때 개인정보의 추가적인 이용 또는 제공에 대한 예측 가능성이 있는지 여부</span><br>
                                                    <span tabindex="232" onmouseover="fn_mouseOver('232','3. 정보주체의 이익을 부당하게 침해하는지 여부')" onmouseout="fn_mouseOut('232')" style="padding-left:27px">3. 정보주체의 이익을 부당하게 침해하는지 여부</span><br>
                                                    <span tabindex="233" onmouseover="fn_mouseOver('233','4. 가명처리 또는 암호화 등 안전성 확보에 필요한 조치를 하였는지 여부')" onmouseout="fn_mouseOut('233')" style="padding-left:27px">4. 가명처리 또는 암호화 등 안전성 확보에 필요한 조치를 하였는지 여부</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy09.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="영상정보처리기기">
                                                    <b tabindex="234" onmouseover="fn_mouseOver('234','제11조 고정형 영상정보처리기기 설치 및 운영')" onmouseout="fn_mouseOut('234')" id="section11">제11조(고정형 영상정보처리기기 설치 및 운영)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="235" onmouseover="fn_mouseOver('235','1 정부민원안내콜센터는 다음과 같이 고정형 영상정보처리기기를 설치ㆍ운영하고 있습니다.')" onmouseout="fn_mouseOut('235')" style="padding-left:20px">
                                                    ① 정부민원안내콜센터는 다음과 같이 고정형 영상정보처리기기를 설치ㆍ운영하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="236" onmouseover="fn_mouseOver('236','1. 설치목적 : 전산실 안전 및 화재예방 등')" onmouseout="fn_mouseOut('236')" style="padding-left:25px">1. 설치목적 : 전산실 안전 및 화재예방 등 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>		
                                                    <span tabindex="237" onmouseover="fn_mouseOver('237','2. 설치대수 : 3대')" onmouseout="fn_mouseOut('237')" style="padding-left:25px">2. 설치대수 : 3대 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span tabindex="238" onmouseover="fn_mouseOver('238','3. 설치위치 : 전산실')" onmouseout="fn_mouseOut('238')" style="padding-left:25px">3. 설치위치 : 전산실</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span tabindex="239" onmouseover="fn_mouseOver('239','4. 촬영범위 : 전산실 입구')" onmouseout="fn_mouseOut('239')" style="padding-left:25px">4. 촬영범위 : 전산실 입구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span tabindex="240" onmouseover="fn_mouseOver('240','5. 촬영시간 : 24시간')" onmouseout="fn_mouseOut('240')" style="padding-left:25px">5. 촬영시간 : 24시간 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span tabindex="241" onmouseover="fn_mouseOver('241','6. 보관기간 : 촬영일부터 22일')" onmouseout="fn_mouseOut('241')" style="padding-left:25px">6. 보관기간 : 촬영일부터 22일</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span tabindex="242" onmouseover="fn_mouseOver('242','7. 보관장소 :  전산실')" onmouseout="fn_mouseOut('242')" style="padding-left:25px">7. 보관장소 : 전산실</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span tabindex="243" onmouseover="fn_mouseOver('243','8. 관리책임자 및 접근권한자')" onmouseout="fn_mouseOut('243')" style="padding-left:25px">8. 관리책임자 및 접근권한자 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>관리책임자 및 접근권한자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th tabindex="244" onmouseover="fn_mouseOver('244','관리책임자')" onmouseout="fn_mouseOut('244')" scope="col" colspan="2">관리책임자</th>
                                                                <th tabindex="245" onmouseover="fn_mouseOver('245','접근권한자')" onmouseout="fn_mouseOut('245')" scope="col" colspan="2">접근권한자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td tabindex="246" onmouseover="fn_mouseOver('246','성명')" onmouseout="fn_mouseOut('246')" style="text-align: center;">성명</td>
                                                                <td tabindex="247" onmouseover="fn_mouseOver('247','김용호')" onmouseout="fn_mouseOut('247')">&nbsp;김용호</td>
                                                                <td tabindex="248" onmouseover="fn_mouseOver('248','성명')" onmouseout="fn_mouseOut('248')" style="text-align: center;">성명</td>
                                                                <td tabindex="249" onmouseover="fn_mouseOver('249','이영규')" onmouseout="fn_mouseOut('249')">&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="250" onmouseover="fn_mouseOver('250','부서')" onmouseout="fn_mouseOut('250')" style="text-align: center;">부서</td>
                                                                <td tabindex="251" onmouseover="fn_mouseOver('251','고충상담기획과')" onmouseout="fn_mouseOut('251')">&nbsp;고충상담기획과</td>
                                                                <td tabindex="252" onmouseover="fn_mouseOver('252','부서')" onmouseout="fn_mouseOut('252')" style="text-align: center;">부서</td>
                                                                <td tabindex="253" onmouseover="fn_mouseOver('253','고충상담기획과')" onmouseout="fn_mouseOut('253')">&nbsp;고충상담기획과</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="254" onmouseover="fn_mouseOver('254','직위')" onmouseout="fn_mouseOut('254')" style="text-align: center;">직위</td>
                                                                <td tabindex="255" onmouseover="fn_mouseOver('255','정부민원안내콜센터장')" onmouseout="fn_mouseOut('255')">&nbsp;정부민원안내콜센터장</td>
                                                                <td tabindex="256" onmouseover="fn_mouseOver('256','직위')" onmouseout="fn_mouseOut('256')" style="text-align: center;">직위</td>
                                                                <td tabindex="257" onmouseover="fn_mouseOver('257','전산사무관')" onmouseout="fn_mouseOut('257')">&nbsp;전산사무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="258" onmouseover="fn_mouseOver('258','연락처')" onmouseout="fn_mouseOut('258')" rowspan="3" style="text-align: center;">연락처</td>
                                                                <td tabindex="259" onmouseover="fn_mouseOver('259','02다시2110다시6502 접근권한자로 연결')" onmouseout="fn_mouseOut('259')" rowspan="3">&nbsp;02-2110-6502<br>※ 접근권한자로 연결</td>
                                                                <td tabindex="260" onmouseover="fn_mouseOver('260','연락처')" onmouseout="fn_mouseOut('260')" style="text-align: center;">연락처</td>
                                                                <td tabindex="261" onmouseover="fn_mouseOver('261','02다시2110다시6502')" onmouseout="fn_mouseOut('261')">&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="262" onmouseover="fn_mouseOver('262','팩스')" onmouseout="fn_mouseOut('262')" style="text-align: center;">FAX</td>
                                                                <td tabindex="263" onmouseover="fn_mouseOver('263','044다시200다시7957')" onmouseout="fn_mouseOut('263')">&nbsp;044-200-7957</td>
                                                            </tr>
                                                            <tr>
                                                                <td tabindex="264" onmouseover="fn_mouseOver('264','이메일')" onmouseout="fn_mouseOut('264')" style="text-align: center;">e-Mail</td>
                                                                <td tabindex="265" onmouseover="fn_mouseOver('265','에이엔에이케이아이007골뱅이코리아점케이알')" onmouseout="fn_mouseOut('265')">&nbsp;anarki007@korea.kr</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                             	<td>	
                                                    <span tabindex="266" onmouseover="fn_mouseOver('266','9. 영상정보 확인방법 및 장소 : 관리책임자에게 요구')" onmouseout="fn_mouseOut('266')" style="padding-left:25px">9. 영상정보 확인방법 및 장소 : 관리책임자에게 요구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="267" onmouseover="fn_mouseOver('267','2 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다')" onmouseout="fn_mouseOut('267')" style="padding-left:20px">
                                                    ② 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="268" onmouseover="fn_mouseOver('268','3 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다')" onmouseout="fn_mouseOut('268')" style="padding-left:20px">
                                                    ③ 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="269" onmouseover="fn_mouseOver('269','4 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다')" onmouseout="fn_mouseOut('269')" style="padding-left:20px">
                                                    ④ 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                 <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy10.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="자동수집">
                                                    <b tabindex="270" onmouseover="fn_mouseOver('270','제12조 개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항 ')" onmouseout="fn_mouseOut('270')" id="section12">제12조(개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="271" onmouseover="fn_mouseOver('271','1 정부민원안내콜센터는 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 쿠키(Cookie)를 사용합니다.')" onmouseout="fn_mouseOut('271')" style="padding-left:20px">
                                                    ① 정부민원안내콜센터는 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는‘쿠키(Cookie)'를 사용합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="272" onmouseover="fn_mouseOver('272','2 쿠키는 정부민원안내콜센터 서비스를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에 보내는 소량의 정보이며, 이용자의 컴퓨터 내 하드디스크에 저장되기도 합니다.')" onmouseout="fn_mouseOut('272')" style="padding-left:20px">
                                                    ② 쿠키는 정부민원안내콜센터 서비스를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에 보내는 소량의 정보이며, 이용자의 컴퓨터 내 하드디스크에 저장되기도 합니다.
                                                </td>
                                            </tr>
                                             <tr>
                                                <td>
                                                    <span tabindex="273" onmouseover="fn_mouseOver('273','1. 쿠키의 사용목적 : 이용자가 방문한 각 서비스와 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.')" onmouseout="fn_mouseOut('273')" style="padding-left:25px">1. 쿠키의 사용목적 : 이용자가 방문한 각 서비스와 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.</span><br>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td>
                                                    <span tabindex="274" onmouseover="fn_mouseOver('274','2. 쿠키의 허용 및 차단 방법')" onmouseout="fn_mouseOut('274')" style="padding-left:25px">2. 쿠키의 허용 및 차단 방법</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="275" onmouseover="fn_mouseOver('275',' Internet Explorer : 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 > 고급 ')" onmouseout="fn_mouseOut('275')" style="padding-left:25px"> - Internet Explorer : 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 > 고급</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="276" onmouseover="fn_mouseOver('276',' Edge : 웹브라우저 상단의 설정 > 쿠키 및 사이트 권한 > 쿠키 및 기타 사이트 데이터 관리 및 삭제')" onmouseout="fn_mouseOut('276')" style="padding-left:25px"> - Edge : 웹브라우저 상단의 설정 > 쿠키 및 사이트 권한 > 쿠키 및 기타 사이트 데이터 관리 및 삭제</span><br>
                                                </td>
                                            </tr>   
                                            <tr>
                                                <td>
                                                    <span tabindex="277" onmouseover="fn_mouseOver('277',' Chrome : 웹브라우저 상단의 설정 > 보안 및 개인정보 > 쿠키 및 기타 사이트 데이터')" onmouseout="fn_mouseOut('277')" style="padding-left:25px"> - Chrome : 웹브라우저 상단의 설정 > 보안 및 개인정보 > 쿠키 및 기타 사이트 데이터</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span tabindex="278" onmouseover="fn_mouseOver('278','3. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.')" onmouseout="fn_mouseOut('278')" style="padding-left:25px">3. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="279" onmouseover="fn_mouseOver('279','3 채팅상담 및 화상상담 이용 시 아이피주소 등이 자동 생성되어 수집됩니다')" onmouseout="fn_mouseOut('279')" style="padding-left:20px">
                                                    ③ 채팅상담 및 화상상담 이용 시 IP주소 등이 자동 생성되어 수집됩니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;text-algin:center;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy11.png'/>" style="width:45px;hright:50px; vertical-align:middle;" alt="처리방침 변경">
                                                    <b tabindex="280" onmouseover="fn_mouseOver('280','제13조. 개인정보 처리방침의 변경')" onmouseout="fn_mouseOut('280')" id="section13">제13조(개인정보 처리방침의 변경)</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td tabindex="281" onmouseover="fn_mouseOver('281','1  이 개인정보 처리방침은 2024.4.15(월)부터 적용됩니다. 직전 개인정보처리방침에서 다음 내용이 변경되었습니다.')" onmouseout="fn_mouseOut('281')" style="padding-left:20px">
                                                    ①  이 개인정보 처리방침은 2024.5.9(목)부터 적용됩니다. 직전 개인정보처리방침에서 다음 내용이 변경되었습니다.
                                                </td>
                                            <tr>
                                            <td style="padding-left:20px;">
                                                 <table class='table table-bordered' style="font-size:14px;">
                                                        <caption class='blind'>개인정보처리방침의 변경</caption>
                                                        <thead>
                                                            <tr>
                                                                <th tabindex="282" onmouseover="fn_mouseOver('282','주요 변경내역')" onmouseout="fn_mouseOut('282')" scope="col">주요 변경내역</th>
                                                                <th tabindex="283" onmouseover="fn_mouseOver('283','변경 사유')" onmouseout="fn_mouseOut('283')" scope="col">변경사유</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td tabindex="284" onmouseover="fn_mouseOver('284','제1조(개인정보의 처리목적ㆍ처리항목 및 보유기간) 수정')" onmouseout="fn_mouseOut('284')" style="text-align: center;" id="">제1조(개인정보의 처리목적ㆍ처리항목 및 보유기간) 수정</td>
                                                                <td tabindex="285" onmouseover="fn_mouseOver('285','개인정보 처리항목 현행화 등')" onmouseout="fn_mouseOut('285')" style="text-align: center;">개인정보 처리항목 현행화 등</td>
                                                            </tr>
                                                             <tr>
                                                                <td tabindex="286" onmouseover="fn_mouseOver('286','제3조(개인정보처리의 위탁) 수정')" onmouseout="fn_mouseOut('286')" style="text-align: center;">제3조(개인정보처리의 위탁) 수정</td>
                                                                <td tabindex="287" onmouseover="fn_mouseOver('287','재위탁자 및 위탁내용 추가 등')" onmouseout="fn_mouseOut('287')" style="text-align: center;">재위탁자 및 위탁내용 추가 등</td>
                                                            </tr>
                                                             <tr>
                                                                <td tabindex="288" onmouseover="fn_mouseOver('288','제4조(정보주체와 법정대리인의 권리ㆍ의무 등) 수정')" onmouseout="fn_mouseOut('288')" style="text-align: center;">제4조(정보주체와 법정대리인의 권리ㆍ의무 등) 수정</td>
                                                                <td tabindex="289" onmouseover="fn_mouseOver('289','서식 다운로드 기능 추가 등')" onmouseout="fn_mouseOut('289')" style="text-align: center;">서식 다운로드 기능 추가 등</td>
                                                            </tr>
                                                             <tr>
                                                                <td tabindex="290" onmouseover="fn_mouseOver('290','제5조(개인정보의 열람청구를 접수ㆍ처리하는 부서) 수정')" onmouseout="fn_mouseOut('290')" style="text-align: center;">제5조(개인정보의 열람청구를 접수ㆍ처리하는 부서) 수정</td>
                                                                <td tabindex="291" onmouseover="fn_mouseOver('291','개인정보파일 현행화 및 절차 추가 등')" onmouseout="fn_mouseOut('291')" style="text-align: center;">개인정보파일 현행화 및 절차 추가 등</td>
                                                            </tr>
                                                             <tr>
                                                                <td tabindex="292" onmouseover="fn_mouseOver('292','제7조(개인정보의 파기) 수정')" onmouseout="fn_mouseOut('292')" style="text-align: center;">제7조(개인정보의 파기) 수정</td>
                                                                <td tabindex="293" onmouseover="fn_mouseOver('293','미파기시 분리보관 방법 추가 등')" onmouseout="fn_mouseOut('293')" style="text-align: center;">미파기시 분리보관 방법 추가 등</td>
                                                            </tr>
                                                             <tr>
                                                                <td tabindex="294" onmouseover="fn_mouseOver('294','제11조(영상정보처리기기 설치 및 운영) 수정')" onmouseout="fn_mouseOut('294')" style="text-align: center;">제11조(영상정보처리기기 설치 및 운영) 수정</td>
                                                                <td tabindex="295" onmouseover="fn_mouseOver('295','고정형 영상정보처리기로 수정 등')" onmouseout="fn_mouseOut('295')" style="text-align: center;">고정형 영상정보처리기로 수정 등</td>
                                                            </tr>
                                                         </tbody>
                                                  </table>
                                                  </td>
                                               	</tr>
                                                <tr>
	                                                <td tabindex="296" onmouseover="fn_mouseOver('296','2 이전의 개인정보 처리방침은 개정내역에서 확인하실 수 있습니다')" onmouseout="fn_mouseOut('296')" style="padding-left:20px;">
	                                                    ② 이전의 개인정보 처리방침은 개정내역에서 확인하실 수 있습니다.
	                                                </td>
                                                </tr>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                        </tbody>
                                        
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
		</div>
	</body>
</html>

<script>
document.querySelectorAll('.scrollToSection').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();

        const targetId = this.getAttribute('data-target');
        const targetElement = document.getElementById(targetId);
        const fixedHeight = 200;
        
        if (targetElement) {
            const scrollPosition = targetElement.getBoundingClientRect().top;
            window.scrollBy({ top: scrollPosition - fixedHeight, behavior: 'smooth' });
        }
    });
});
</script>