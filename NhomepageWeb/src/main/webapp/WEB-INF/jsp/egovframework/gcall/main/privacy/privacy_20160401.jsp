<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>개인정보 처리방침 | 정부민원안내콜센터</title>
		
		<link rel="stylesheet" href="/plugin/font/font.css">
		<link rel="stylesheet" href="/plugin/fontawesome/css/all.css">
		<link rel="stylesheet" href="/plugin/themify/themify-icons.css" >
		
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/base.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/grid.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/common.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/jquery-ui.css">
		
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/css.css">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		<script src="/js/egovframework/gcall/main/jquery-ui.js"></script>
		<script src="/js/egovframework/gcall/main/scriptN.js"></script>
		<script type="text/javascript">
			var navUrl = "privacy20160401";
		</script>
		
		<style>
            th, td {
                vertical-align: middle !important;
            }
        </style>
	</head>
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top_new.jsp"/>
            
            <main class='mainWrap'>
            	<c:import url="../common/sideMenu.jsp"/>
            	<!-- quick_wrap -->
            	
            	
                <div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                    	<div class="sub-visual subv-1 mgb-50">
							<h2 onmouseover="fn_mouseOver('24','개인정보처리방침')" onmouseout="fn_mouseOut('24')">개인정보처리방침</h2>  
							<p onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
						</div><!-- sub-visual -->   
                    
                        <h3 onmouseover="fn_mouseOver('26','국민콜110(정부민원안내) 개인정보처리방침')" onmouseout="fn_mouseOut('26')" class='mainTitle'>국민콜110(정부민원안내) 개인정보처리방침</h3>


							<div class='text-right'>
								  	<label for="privacyGO">개인정보 처리방침 적용지침:</label>
									<select name="privacyGO" id="privacyGO" onchange="location.href=this.value;">
									<option value="/privacy.do?sd=first">제정 ~ 2016.03.31 적용지침</option>
									<option selected="selected" value="/privacy.do?sd=20160401">2016.04.01 ~ 2016.06.12 적용지침</option>
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
									<option value="/privacy.do?sd=current">현행 적용지침</option>
									</select>
							</div>
                        
                        <div class='col-xs-12 privacyInfo'>
                            <div class="panel panel-default">
                                <div class="panel-body ">
                                    <table>
                                        <caption class='blind'>개인정보처리방침</caption>
                                        <thead class='blind'><tr><th scope='col'>개인정보처리방침</th></tr></thead>
                                        <tbody>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('27','국민권익위원회 서울종합민원사무소 소속 110정부민원안내콜센터(이하 110정부민원안내콜센터)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다')" onmouseout="fn_mouseOut('27')" style="padding-left:20px">
                                                    	국민권익위원회 서울종합민원사무소 소속 110정부민원안내콜센터(이하 110정부민원안내콜센터)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b onmouseover="fn_mouseOver('28','1. 개인정보의 처리목적ㆍ처리항목 및 보유기간')" onmouseout="fn_mouseOut('28')">1. 개인정보의 처리목적ㆍ처리항목 및 보유기간</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('29','1 110정부민원안내콜센터는 전화상담, 문자상담, 예약상담, SNS, 채팅 및 화상(수화)상담 처리를 위해 아래와 같이 개인정보를 처리합니다')" onmouseout="fn_mouseOut('29')" style="padding-left:20px">
                                                    ① 110정부민원안내콜센터는 전화상담, 문자상담, 예약상담, SNS, 채팅 및 화상(수화)상담 처리를 위해 아래와 같이 개인정보를 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보의 처리목적ㆍ처리항목 및 보유기간</caption>
                                                        <thead class='blind'>
                                                            <tr>
                                                                <th scope='col'>이용항목</th>
                                                                <th scope='col'>처리목적 및 보유기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody><tr>
                                                            <td onmouseover="fn_mouseOver('30','전화상담')" onmouseout="fn_mouseOut('30')" colspan="2">&nbsp;<b>전화상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('31','처리목적')" onmouseout="fn_mouseOut('31')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('32','전화 상담업무 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('32')">&nbsp;전화 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('33','처리항목')" onmouseout="fn_mouseOut('33')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('34','연락처(전화번호), 상담내용 등')" onmouseout="fn_mouseOut('34')">&nbsp;연락처(전화번호), 상담내용 등</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('35','처리근거')" onmouseout="fn_mouseOut('35')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('36','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('36')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('37','보유기간')" onmouseout="fn_mouseOut('37')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('38','1년')" onmouseout="fn_mouseOut('38')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('39','기타')" onmouseout="fn_mouseOut('39')" style="text-align: center;">기타</td>
                                                            <td onmouseover="fn_mouseOver('40','보훈관련 상담 시에는 보훈번호를 추가수집하고, 통계관련 상담 시에는 성별, 지역, 연령대를 추가수집')" onmouseout="fn_mouseOut('40')">&nbsp;보훈관련 상담 시에는 보훈번호를 추가수집하고, 통계관련 상담 시에는 성별, 지역, 연령대를 추가수집</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('41','문자상담')" onmouseout="fn_mouseOut('41')" colspan="2">&nbsp;<b>문자상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('42','처리목적')" onmouseout="fn_mouseOut('42')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('43','휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('43')">&nbsp;휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('44','처리항목')" onmouseout="fn_mouseOut('44')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('45','연락처(전화번호), 문의내용 등')" onmouseout="fn_mouseOut('45')">&nbsp;연락처(전화번호), 문의내용 등</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('46','처리근거')" onmouseout="fn_mouseOut('46')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('47','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('47')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('48','보유기간')" onmouseout="fn_mouseOut('48')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('49','1년')" onmouseout="fn_mouseOut('49')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('50','예약상담')" onmouseout="fn_mouseOut('50')" colspan="2">&nbsp;<b>예약상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('51','처리목적')" onmouseout="fn_mouseOut('51')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('52','상담 예약을 위한 정보처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('52')">&nbsp;상담 예약을 위한 정보처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('53','처리항목')" onmouseout="fn_mouseOut('53')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('54','연락처(전화번호), 문의내용, 성명 등')" onmouseout="fn_mouseOut('54')">&nbsp;연락처(전화번호), 문의내용, 성명 등</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('55','처리근거')" onmouseout="fn_mouseOut('55')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('56','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('56')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('57','보유기간')" onmouseout="fn_mouseOut('57')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('58','1년')" onmouseout="fn_mouseOut('58')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('59','에스엔에스, 채팅, 화상(수화)상담')" onmouseout="fn_mouseOut('59')" colspan="2">&nbsp;<b>SNS, 채팅, 화상(수화)상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('60','처리목적')" onmouseout="fn_mouseOut('60')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('61','SNS, 채팅, 화상(수화)상담을 위한 정보처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('61')">&nbsp;SNS, 채팅, 화상(수화)상담을 위한 정보처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('62','처리항목')" onmouseout="fn_mouseOut('62')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('63','연락처(전화번호), 문의내용, 성명, 화상(수화)상담 영상화면 등')" onmouseout="fn_mouseOut('63')">&nbsp;연락처(전화번호), 문의내용, 성명, 화상(수화)상담 영상화면 등</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('64','처리근거')" onmouseout="fn_mouseOut('64')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('65','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('65')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('66','보유기간')" onmouseout="fn_mouseOut('66')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('67','1년')" onmouseout="fn_mouseOut('67')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('68','기타')" onmouseout="fn_mouseOut('68')" style="text-align: center;">기타</td>
                                                            <td onmouseover="fn_mouseOver('69','채팅 및 화상(수화)상담 이용 시, 아이피주소가 자동 수집')" onmouseout="fn_mouseOut('69')">&nbsp;채팅 및 화상(수화)상담 이용 시, IP주소가 자동 수집</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot></tfoot>
                                                </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('70','2. 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다')" onmouseout="fn_mouseOut('70')" style="padding-left:20px">
                                                    ② 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('71','3. 110정부민원안내콜센터는 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다')" onmouseout="fn_mouseOut('71')" style="padding-left:20px">
                                                    ③ 110정부민원안내콜센터는 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('72','2. 개인정보처리 및 제3자 제공')" onmouseout="fn_mouseOut('72')">
                                                    <b>2. 개인정보처리 및 제3자 제공</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('73','1. 110정부민원안내콜센터는 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.')" onmouseout="fn_mouseOut('73')" style="padding-left:20px">
                                                    ① 110정부민원안내콜센터는 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('74','2. 다만, 다른 법률에 특별한 규정이 있는 경우 또는 개인정보보호법 제18조제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다')" onmouseout="fn_mouseOut('74')" style="padding-left:20px">
                                                    ② 다만, 다른 법률에 특별한 규정이 있는 경우 또는 개인정보보호법 제18조제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('75','3. 개인정보 처리의 위탁')" onmouseout="fn_mouseOut('75')">
                                                    <b>3. 개인정보 처리의 위탁</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('76','1. 110정부민원안내콜센터는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다')" onmouseout="fn_mouseOut('76')" style="padding-left:20px">
                                                    ① 110정부민원안내콜센터는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>처리위탁안내</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('77','위탁내용')" onmouseout="fn_mouseOut('77')" scope='col'>
                                                                   	 위탁내용
                                                                </th>
                                                                <th onmouseover="fn_mouseOver('78','위탁기간')" onmouseout="fn_mouseOut('78')" scope='col'>
                                                                    	위탁기간
                                                                </th>
                                                                <th onmouseover="fn_mouseOver('79','수탁업체')" onmouseout="fn_mouseOut('79')" scope='col'>
                                                                    	수탁업체
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('80','전산자원 유지관리 및 운영')" onmouseout="fn_mouseOut('80')" style="text-align: center;">
                                                                   	 전산자원<br>유지관리 및 <br>운영
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('81','2016년3월1일에서 2016년12월31일')" onmouseout="fn_mouseOut('81')" style="text-align: center;">
                                                                    &nbsp;2016.3.1<br>~2016.12.31
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('82','업체 : 주식회사 아리시스 주소 : 서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호 전화 : 02-2177-8100 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('82')">
                                                                    &nbsp;업체 : 주식회사 아리시스<br>
                                                                    &nbsp;주소 : 서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호<br>
                                                                    &nbsp;전화 : 02-2177-8100<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일)<br>
                     												 ※ 토ㆍ일요일 및 공휴일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('83','비긴급 신고전화 상담센터 시설임차')" onmouseout="fn_mouseOut('83')" style="text-align: center;">
                                                 					비긴급 신고전화<br>상담센터<br>시설임차
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('84','2016년6월1일에서 2018년12월31일')" onmouseout="fn_mouseOut('84')" style="text-align: center;">
                                                                    &nbsp;2016.6.1.<br>~2018.12.31
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('85','기관명 : ㈜엠.피.씨 주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동) 전화 : 02-3401-4114 근무시간 : 09:00~18:00(평일), 09:00~13:00(토요일) 일요일 휴무')" onmouseout="fn_mouseOut('85')">
                                                                    &nbsp;기관명 : ㈜엠.피.씨<br>
                                                                    &nbsp;주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동)<br>
                                                                    &nbsp;전화 : 02-3401-4114<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일), 09:00~13:00(토요일)<br>
                                    								※ 일요일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('86','110정부민원안내 콜센터(상담) 운영')" onmouseout="fn_mouseOut('86')" rowspan="2" style="text-align: center;">
                                                                    110정부민원안내<br>콜센터(상담)<br>운영
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('87','2015년2월1일에서 2016년12월31일')" onmouseout="fn_mouseOut('87')" rowspan="2" style="text-align: center;">
                                                                    &nbsp;2015.2.1<br>~2016.12.31

                                                                </td>
                                                                <td onmouseover="fn_mouseOver('88','기관명 : 주식회사 케이티스 주소 : 서울특별시 영등포구 여의대로 14, KT빌딩 10층     (여의도동) 전화 : 02-3215-2140 근무시간 : 09:00~18:00(평일), 09:00~13:00(토요일) 일요일 휴무')" onmouseout="fn_mouseOut('88')">
                                                                    &nbsp;기관명 : 주식회사 케이티스<br>
                                                                    &nbsp;주소 : 서울특별시 영등포구 여의대로 14, KT빌딩 10층     (여의도동)<br>
                                                                    &nbsp;전화 : 02-3215-2140<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일), 09:00~13:00(토요일)<br>
                            										※ 일요일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('89','기관명 : ㈜엠.피.씨 주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동) 전화 : 02-3401-4114 근무시간 : 09:00~18:00(평일), 09:00~13:00(토요일) 일요일 휴무')" onmouseout="fn_mouseOut('89')">
                                                                    &nbsp;기관명 : ㈜엠.피.씨<br>
                                                                    &nbsp;주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동)<br>
                                                                    &nbsp;전화 : 02-3401-4114<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일), 09:00~13:00(토요일)<br>
                                      								 ※ 일요일 휴무<br>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot></tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('90','2. 110정부민원안내콜센터는 위탁계약 체결 시 개인정보보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.')" onmouseout="fn_mouseOut('90')" style="padding-left:20px">
                                                    ② 110정부민원안내콜센터는 위탁계약 체결 시 개인정보보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('91','3. 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다')" onmouseout="fn_mouseOut('91')" style="padding-left:20px">
                                                    ③ 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('92','4. 정보주체의 권리ㆍ의무 및 행사방법')" onmouseout="fn_mouseOut('92')">
                                                    <b>4. 정보주체의 권리ㆍ의무 및 행사방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('93','1. 정보주체(만 14세 미만인 경우에는 법정대리인)는 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다')" onmouseout="fn_mouseOut('93')" style="padding-left:20px">
                                                    ① 정보주체(만 14세 미만인 경우에는 법정대리인)는 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('94','1. 개인정보 열람요구')" onmouseout="fn_mouseOut('94')" style="padding-left:25px">1. 개인정보 열람요구 </span><br>
                                                    <span onmouseover="fn_mouseOver('95','2. 개인정보 오류 등의 정정요구')" onmouseout="fn_mouseOut('95')" style="padding-left:25px">2. 개인정보 오류 등의 정정요구</span><br>
                                                    <span onmouseover="fn_mouseOver('96','3. 개인정보 삭제요구')" onmouseout="fn_mouseOut('96')" style="padding-left:25px">3. 개인정보 삭제요구 </span><br>
                                                    <span onmouseover="fn_mouseOver('97','4. 개인정보 처리 정지요구')" onmouseout="fn_mouseOut('97')" style="padding-left:25px">4. 개인정보 처리 정지요구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('98','2. 제1에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 및 제11호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 110정부민원안내콜센터에서는 요구를 한 자가 본인이거나 정당한 대리인인지 확인합니다.')" onmouseout="fn_mouseOut('98')" style="padding-left:20px">
                                                    ② 제①에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 및 제11호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 110정부민원안내콜센터에서는 요구를 한 자가 본인이거나 정당한 대리인인지 확인합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('99','3. 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.')" onmouseout="fn_mouseOut('99')" style="padding-left:20px">
                                                    ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('100','4. 개인정보보호법 제35조제5항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.')" onmouseout="fn_mouseOut('100')" style="padding-left:20px">
                                                    ④ 개인정보보호법 제35조제5항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('101','5. 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다. ')" onmouseout="fn_mouseOut('101')" style="padding-left:20px">
                                                    ⑤ 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다. 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('102','5. 개인정보보호 책임자')" onmouseout="fn_mouseOut('102')">
                                                    <b>5. 개인정보보호 책임자</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('103','110정부민원안내콜센터는 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.')" onmouseout="fn_mouseOut('103')" style="padding-left:20px">
                                                    110정부민원안내콜센터는 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보보호책임자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('104','개인정보보호 책임자')" onmouseout="fn_mouseOut('104')" colspan="2"  scope='col'>개인정보보호 책임자</th>
                                                                <th onmouseover="fn_mouseOver('105','개인정보보호 담당자')" onmouseout="fn_mouseOut('105')" colspan="2"  scope='col'>개인정보보호 담당자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('106','성명')" onmouseout="fn_mouseOut('106')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('107','윤남기')" onmouseout="fn_mouseOut('107')">&nbsp;윤남기</td>
                                                                <td onmouseover="fn_mouseOver('108','성명')" onmouseout="fn_mouseOut('108')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('109','이영규')" onmouseout="fn_mouseOut('109')">&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('110','부서')" onmouseout="fn_mouseOut('110')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('120','상담안내과(110콜센터 티에프)')" onmouseout="fn_mouseOut('120')">&nbsp;상담안내과(110콜센터T/F)</td>
                                                                <td onmouseover="fn_mouseOver('121','부서')" onmouseout="fn_mouseOut('121')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('123','상담안내과(110콜센터 티에프)')" onmouseout="fn_mouseOut('123')">&nbsp;상담안내과(110콜센터T/F)</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('124','직위')" onmouseout="fn_mouseOut('124')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('125','110정부민원안내콜센터장')" onmouseout="fn_mouseOut('125')">&nbsp;110정부민원안내콜센터장</td>
                                                                <td onmouseover="fn_mouseOver('126','직위')" onmouseout="fn_mouseOut('126')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('127','주무관')" onmouseout="fn_mouseOut('127')">&nbsp;주무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('128','연락처')" onmouseout="fn_mouseOut('128')" rowspan="3" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('129','02-2110-6502 개인정보보호 담당자로 연결')" onmouseout="fn_mouseOut('129')" rowspan="3">&nbsp;02-2110-6502<br>※ 개인정보보호 담당자로 연결</td>
                                                                <td onmouseover="fn_mouseOver('130','연락처')" onmouseout="fn_mouseOut('130')" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('131','02-2110-6502')" onmouseout="fn_mouseOut('131')">&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('133','팩스')" onmouseout="fn_mouseOut('133')" style="text-align: center;">FAX</td>
                                                                <td onmouseover="fn_mouseOver('134','02-2110-0679')" onmouseout="fn_mouseOut('134')">&nbsp;02-2110-0679</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('135','이메일')" onmouseout="fn_mouseOut('135')" style="text-align: center;">e-Mail</td>
                                                                <td onmouseover="fn_mouseOver('136','에이엔에알케이아이007@케이오알이에이점케이알')" onmouseout="fn_mouseOut('136')">&nbsp;anarki007@korea.kr</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot></tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('137','6. 개인정보의 파기')" onmouseout="fn_mouseOut('137')">
                                                    <b>6. 개인정보의 파기</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('138','1. 110정부민원안내콜센터는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다.')" onmouseout="fn_mouseOut('138')" style="padding-left:20px">
                                                    ① 110정부민원안내콜센터는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('139','2. 파기의 절차 및 방법은 다음과 같습니다.')" onmouseout="fn_mouseOut('139')" style="padding-left:20px">
                                                    ② 파기의 절차 및 방법은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('140','1. 파기절차')" onmouseout="fn_mouseOut('140')" style="padding-left:25px">1. 파기절차 </span><br>
                                                    <span onmouseover="fn_mouseOver('141','110정부민원안내콜센터에서는 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다')" onmouseout="fn_mouseOut('141')" style="padding-left:27px"> 110정부민원안내콜센터에서는 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('142','2. 파기절차')" onmouseout="fn_mouseOut('142')" style="padding-left:25px">2. 파기절차 </span><br>
                                                    <span onmouseover="fn_mouseOver('143','110정부민원안내콜센터에서는 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다')" onmouseout="fn_mouseOut('143')" style="padding-left:27px"> 110정부민원안내콜센터에서는 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다. </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('144','7. 개인정보의 안전성 확보조치')" onmouseout="fn_mouseOut('144')">
                                                    <b>7. 개인정보의 안전성 확보조치</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('145','110정부민원안내콜센터는 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다')" onmouseout="fn_mouseOut('145')" style="padding-left:20px">
                                                    110정부민원안내콜센터는 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('146','1. 관리적 조치 : 내부관리계획 수립ㆍ시행, 정기적 직원 교육 등')" onmouseout="fn_mouseOut('146')" style="padding-left:25px">1. 관리적 조치 : 내부관리계획 수립ㆍ시행, 정기적 직원 교육 등</span><br>
                                                    <span onmouseover="fn_mouseOver('147','2. 기술적 조치 : 접근권한 관리, 주요정보 암호화, 보안프로그램 설치 등')" onmouseout="fn_mouseOut('147')" style="padding-left:25px">2. 기술적 조치 : 접근권한 관리, 주요정보 암호화, 보안프로그램 설치 등 </span><br>
                                                    <span onmouseover="fn_mouseOver('148','3. 물리적 조치 : 전산실 등의 접근통제 ')" onmouseout="fn_mouseOut('148')" style="padding-left:25px">3. 물리적 조치 : 전산실 등의 접근통제 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('149','8. 정보주체의 권익침해 구제방법')" onmouseout="fn_mouseOut('149')">
                                                    <b>8. 정보주체의 권익침해 구제방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('150','1. 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다')" onmouseout="fn_mouseOut('150')" style="padding-left:20px">
                                                    ① 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('160','1. 개인정보보호 종합포털 : 국번없이 118(프라이버시점기사점오알점케이알)')" onmouseout="fn_mouseOut('160')" style="padding-left:25px">1. 개인정보보호 종합포털 : 국번없이 118(privacy.kisa.or.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('161','2. 대검찰청 사이버범죄수사단 : 02-3480-3571(사이버시드골뱅이에스피오점지오점케이알)')" onmouseout="fn_mouseOut('161')" style="padding-left:25px">2. 대검찰청 사이버범죄수사단 : 02-3480-3571(cybercid@spo.go.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('162','3. 경찰청 사이버테러대응센터 : 1566-0112(떠블떠블떠블점네탄점지오점케이알)')" onmouseout="fn_mouseOut('162')" style="padding-left:25px">3. 경찰청 사이버테러대응센터 : 1566-0112(www.netan.go.kr) </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('163','2. 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(떠블떠블떠블점심판점지오점케이알)을 청구할 수 있습니다')" onmouseout="fn_mouseOut('163')" style="padding-left:20px">
                                                    ② 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(www.simpan. go.kr)을 청구할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('164','9. 영상정보처리기기 설치 및 운영')" onmouseout="fn_mouseOut('164')">
                                                    <b>9. 영상정보처리기기 설치 및 운영</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('165','1. 110정부민원안내콜센터는 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다.')" onmouseout="fn_mouseOut('165')" style="padding-left:20px">
                                                    ① 110정부민원안내콜센터는 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('166','1. 설치목적 : 시설안전 및 화재예방')" onmouseout="fn_mouseOut('166')" style="padding-left:25px">1. 설치목적 : 시설안전 및 화재예방 </span><br>
                                                    <span onmouseover="fn_mouseOver('167','2. 설치대수 : 3대 ')" onmouseout="fn_mouseOut('167')" style="padding-left:25px">2. 설치대수 : 3대 </span><br>
                                                    <span onmouseover="fn_mouseOver('168','3. 설치위치 : 110정부민원안내콜센터 전산실')" onmouseout="fn_mouseOut('168')" style="padding-left:25px">3. 설치위치 : 110정부민원안내콜센터 전산실 </span><br>
                                                    <span onmouseover="fn_mouseOver('169','4. 촬영범위 : 110정부민원안내콜센터 전산실 입구 및 내부')" onmouseout="fn_mouseOut('169')" style="padding-left:25px">4. 촬영범위 : 110정부민원안내콜센터 전산실 입구 및 내부 </span><br>
                                                    <span onmouseover="fn_mouseOver('170','5. 촬영시간 : 24시간')" onmouseout="fn_mouseOut('170')" style="padding-left:25px">5. 촬영시간 : 24시간 </span><br>
                                                    <span onmouseover="fn_mouseOver('171','6. 보관기간 : 22일')" onmouseout="fn_mouseOut('171')" style="padding-left:25px">6. 보관기간 : 22일 </span><br>
                                                    <span onmouseover="fn_mouseOver('172','7. 보관장소 : 110정부민원안내콜센터 전산실')" onmouseout="fn_mouseOut('172')" style="padding-left:25px">7. 보관장소 : 110정부민원안내콜센터 전산실 </span><br>
                                                    <span onmouseover="fn_mouseOver('173','8. 관리책임 : 110정부민원안내콜센터장')" onmouseout="fn_mouseOut('173')" style="padding-left:25px">8. 관리책임 : 110정부민원안내콜센터장 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('174','2. 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다.')" onmouseout="fn_mouseOut('174')" style="padding-left:20px">
                                                    ② 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('175','3. 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다')" onmouseout="fn_mouseOut('175')" style="padding-left:20px">
                                                    ③ 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('176','4. 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다')" onmouseout="fn_mouseOut('176')" style="padding-left:20px">
                                                    ④ 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('177','10. 개인정보 처리방침의 변경')" onmouseout="fn_mouseOut('177')">
                                                    <b>10. 개인정보 처리방침의 변경</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('178','1. 이 개인정보 처리방침은 2016.4.1(금)부터 적용됩니다')" onmouseout="fn_mouseOut('178')" style="padding-left:20px">
                                                    ① 이 개인정보 처리방침은 2016.4.1(금)부터 적용됩니다.
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot></tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
		</div>
	</body>
</html>