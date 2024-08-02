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
			var navUrl = "privacy20180128";
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
									<option value="/privacy.do?sd=20160401">2016.04.01 ~ 2016.06.12 적용지침</option>
									<option value="/privacy.do?sd=20160613">2016.06.13 ~ 2016.08.21 적용지침</option>
									<option value="/privacy.do?sd=20160822">2016.08.22 ~ 2016.09.29 적용지침</option>
									<option value="/privacy.do?sd=20160930">2016.09.30 ~ 2017.04.24 적용지침</option>
									<option value="/privacy.do?sd=20170424">2017.04.24 ~ 2018.01.28 적용지침</option>
									<option selected="selected" value="/privacy.do?sd=20180128">2018.01.28 ~ 2018.06.30 적용지침</option>
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
                                                <td onmouseover="fn_mouseOver('27',' 국민권익위원회 서울종합민원사무소 소속 국민콜110(정부민원안내)(이하 국민콜110)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다')" onmouseout="fn_mouseOut('27')" style="padding-left:20px">
                                                   	 국민권익위원회 서울종합민원사무소 소속 국민콜110(정부민원안내)(이하 국민콜110)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('28','1. 개인정보의 처리목적ㆍ처리항목 및 보유기간')" onmouseout="fn_mouseOut('28')">
                                                    <b>1. 개인정보의 처리목적ㆍ처리항목 및 보유기간</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('29','1. 국민콜110은 전화상담, 문자상담, 예약상담, 에스엔에스상담, 채팅상담, 화상(수화)상담 처리를 위해 아래와 같이 개인정보를 처리합니다')" onmouseout="fn_mouseOut('29')" style="padding-left:20px">
                                                    ① 국민콜110은 전화상담, 문자상담, 예약상담, SNS상담, 채팅상담, 화상(수화)상담 처리를 위해 아래와 같이 개인정보를 처리합니다.
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
                                                            <td onmouseover="fn_mouseOver('40','처리목적')" onmouseout="fn_mouseOut('40')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('41','전화 상담업무 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('41')">&nbsp;전화 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('42','처리근거')" onmouseout="fn_mouseOut('42')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('43','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('43')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('44','처리항목')" onmouseout="fn_mouseOut('44')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('45','공통항목 : 연락처, 상담내용 , 상담내용 녹취 ,추가항목1 : 생년월일, 주소지, 가족성명, 보훈번호(국가보훈처 관련상담 시) ,추가항목2 : 성별, 지역(또는 주소), 연령대(통계청 관련상담 시) ,추가항목3 : 성명(행정심판 확인 및 조회 시) ,추가항목4 : 성명, 연락처(식품의약품안전처 관련상담 시 아웃콜 진행할 경우)')" onmouseout="fn_mouseOut('45')">&nbsp;공통항목 : 연락처, 상담내용 , 상담내용 녹취<br>
                                                                &nbsp;추가항목1 : 생년월일, 주소지, 가족성명, 보훈번호(국가보훈처 관련상담 시)<br>
                                                                &nbsp;추가항목2 : 성별, 지역(또는 주소), 연령대(통계청 관련상담 시)<br>
                                                                &nbsp;추가항목3 : 성명(행정심판 확인 및 조회 시)<br>
                                                                &nbsp;추가항목4 : 성명, 연락처(식품의약품안전처 관련상담 시 아웃콜 진행할 경우)
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('46','보유기간')" onmouseout="fn_mouseOut('46')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('47','1년')" onmouseout="fn_mouseOut('47')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('48','문자상담')" onmouseout="fn_mouseOut('48')" colspan="2">&nbsp;<b>문자상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('49','처리목적')" onmouseout="fn_mouseOut('49')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('50','휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('50')">&nbsp;휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('60','처리근거')" onmouseout="fn_mouseOut('60')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('61','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('61')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('62','처리항목')" onmouseout="fn_mouseOut('62')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('63','연락처, 상담내용')" onmouseout="fn_mouseOut('63')">&nbsp;연락처, 상담내용</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('64','보유기간')" onmouseout="fn_mouseOut('64')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('65','1년')" onmouseout="fn_mouseOut('65')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('66','예약상담')" onmouseout="fn_mouseOut('66')" colspan="2">&nbsp;<b>예약상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('67','처리목적')" onmouseout="fn_mouseOut('67')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('68','상담 예약을 위한 정보처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('68')">&nbsp;상담 예약을 위한 정보처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('69','처리항목')" onmouseout="fn_mouseOut('69')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('70','공통항목 : 연락처 추가항목 : 예약내용, 성명(홈페이지에서 예약상담 신청 시)')" onmouseout="fn_mouseOut('70')">&nbsp;공통항목 : 연락처<br>
                                                                &nbsp;추가항목 : 예약내용, 성명(홈페이지에서 예약상담 신청 시)</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('80','처리근거')" onmouseout="fn_mouseOut('80')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('81','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('81')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('82','보유기간')" onmouseout="fn_mouseOut('82')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('83','1년')" onmouseout="fn_mouseOut('83')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('84','에스엔에스상담')" onmouseout="fn_mouseOut('84')" colspan="2">&nbsp;<b>SNS상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('85','처리목적')" onmouseout="fn_mouseOut('85')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('86','에스엔에스 상담업무 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('86')">&nbsp;SNS 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('87','처리항목')" onmouseout="fn_mouseOut('87')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('88','에스엔에스(페이스북, 트위터) 아이디, 상담내용')" onmouseout="fn_mouseOut('88')">&nbsp;SNS(페이스북, 트위터) ID, 상담내용</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('89','처리근거')" onmouseout="fn_mouseOut('89')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('90','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('90')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('91','보유기간')" onmouseout="fn_mouseOut('91')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('92','1년')" onmouseout="fn_mouseOut('92')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('93','채팅상담')" onmouseout="fn_mouseOut('93')" colspan="2">&nbsp;<b>채팅상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('94','처리목적')" onmouseout="fn_mouseOut('94')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('95','채팅 상담업무 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('95')">&nbsp;채팅 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('96','처리항목')" onmouseout="fn_mouseOut('96')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('97','공통항목 : 연락처, 상담내용, 아이피주소 추가항목 : 성명(타 기관으로 상담내용 처리이관 시)')" onmouseout="fn_mouseOut('97')">&nbsp;공통항목 : 연락처, 상담내용, IP주소<br>
                                                                &nbsp;추가항목 : 성명(타 기관으로 상담내용 처리이관 시)</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('98','처리근거')" onmouseout="fn_mouseOut('98')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('99','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('99')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('100','보유기간')" onmouseout="fn_mouseOut('100')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('110','1년')" onmouseout="fn_mouseOut('110')">&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('111','화상(수화)상담')" onmouseout="fn_mouseOut('111')" colspan="2">&nbsp;<b>화상(수화)상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('112','처리목적')" onmouseout="fn_mouseOut('112')" style="text-align: center;">처리목적</td>
                                                            <td onmouseover="fn_mouseOver('113','화상(수화) 상담업무 처리 및 분석ㆍ관리')" onmouseout="fn_mouseOut('113')">&nbsp;화상(수화) 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('114','처리항목')" onmouseout="fn_mouseOut('114')" style="text-align: center;">처리항목</td>
                                                            <td onmouseover="fn_mouseOver('115','공통항목 : 연락처, 상담내용, 화상상담 영상, 아이피주소 추가항목 : 성명(타 기관으로 상담내용 처리이관 시)')" onmouseout="fn_mouseOut('115')">&nbsp;공통항목 : 연락처, 상담내용, 화상상담 영상, IP주소<br>
                                                                &nbsp;추가항목 : 성명(타 기관으로 상담내용 처리이관 시)</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('116','처리근거')" onmouseout="fn_mouseOut('116')" style="text-align: center;">처리근거</td>
                                                            <td onmouseover="fn_mouseOver('117','부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('117')">&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td onmouseover="fn_mouseOver('118','보유기간')" onmouseout="fn_mouseOut('118')" style="text-align: center;">보유기간</td>
                                                            <td onmouseover="fn_mouseOver('119','1년')" onmouseout="fn_mouseOut('119')">&nbsp;1년</td>
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
                                                <td onmouseover="fn_mouseOver('120','2. 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다')" onmouseout="fn_mouseOut('120')" style="padding-left:20px">
                                                    ② 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('129','3. 국민콜110은 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다')" onmouseout="fn_mouseOut('129')" style="padding-left:20px">
                                                    ③ 국민콜110은 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('130','4. 서비스 이용 과정에서 아이피주소, 접속일시, 이용기록 등의 서비스 이용기록, 기기정보가 생성되어 수집될 수 있습니다')" onmouseout="fn_mouseOut('130')" style="padding-left:20px">
                                                    ④ 서비스 이용 과정에서 IP주소, 접속일시, 이용기록 등의 서비스 이용기록, 기기정보가 생성되어 수집될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('131','2. 개인정보처리 및 제3자 제공')" onmouseout="fn_mouseOut('131')">
                                                    <b>2. 개인정보처리 및 제3자 제공</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('132','1. 국민콜110은 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다')" onmouseout="fn_mouseOut('132')" style="padding-left:20px">
                                                    ① 국민콜110은 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('133','2. 다만, 다른 법률에 특별한 규정이 있는 경우 또는 개인정보보호법 제18조제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다')" onmouseout="fn_mouseOut('133')" style="padding-left:20px">
                                                    ② 다만, 다른 법률에 특별한 규정이 있는 경우 또는 개인정보보호법 제18조제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('134','3. 개인정보 처리의 위탁')" onmouseout="fn_mouseOut('134')">
                                                    <b>3. 개인정보 처리의 위탁</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('135','1. 국민콜110은 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다')" onmouseout="fn_mouseOut('135')" style="padding-left:20px">
                                                    ① 국민콜110은 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>처리위탁안내</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('136','위탁내용')" onmouseout="fn_mouseOut('136')" scope='col'>
                                                              		위탁내용
                                                                </th>
                                                                <th onmouseover="fn_mouseOver('137','위탁기간')" onmouseout="fn_mouseOut('137')" scope='col'>
                                                                   	 위탁기간
                                                                </th>
                                                                <th onmouseover="fn_mouseOver('138','위탁(수탁)업체')" onmouseout="fn_mouseOut('138')" scope='col'>
                                                                   	 위탁(수탁)업체
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('139','전산자원 유지관리 및 위탁운영')" onmouseout="fn_mouseOut('139')" style="text-align: center;">
                                                                    	전산자원<br>유지관리 <br>및 <br>위탁운영
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('140','2017.4.24~2019.12.31')" onmouseout="fn_mouseOut('140')" style="text-align: center;">
                                                                    &nbsp;2017.4.24<br>~2019.12.31
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('150','업체 : ㈜아리시스 주소 : 서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호 전화 : 02-2177-8100 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('150')">
                                                                    &nbsp;업체 : ㈜아리시스<br>
                                                                    &nbsp;주소 : 서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호<br>
                                                                    &nbsp;전화 : 02-2177-8100<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일)<br>
                                                 					 ※ 토ㆍ일요일 및 공휴일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('151','과천센터 위탁운영')" onmouseout="fn_mouseOut('151')" rowspan="2" style="text-align: center;">
                                                                    	과천센터<br>위탁운영
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('152','2017.3.10~2018.12.31')" onmouseout="fn_mouseOut('152')" rowspan="2" style="text-align: center;">
                                                                    &nbsp;2017.3.10<br>~2018.12.31

                                                                </td>
                                                                <td onmouseover="fn_mouseOver('153','기관명 : ㈜케이티스 주소 : 서울특별시 영등포구 여의대로 14, KT빌딩 10층     (여의도동) 전화 : 02-3215-2140 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('153')">
                                                                    &nbsp;기관명 : ㈜케이티스<br>
                                                                    &nbsp;주소 : 서울특별시 영등포구 여의대로 14, KT빌딩 10층 (여의도동)<br>
                                                                    &nbsp;전화 : 02-3215-2140<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일)<br>
                                                                            ※ 토ㆍ일요일 및 공휴일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('154','기관명 : ㈜한국코퍼레이션  주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동) 전화 : 02-3401-4114 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('154')">
                                                                    &nbsp;기관명 : ㈜한국코퍼레이션<br>
                                                                    &nbsp;주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층 (수서동)<br>
                                                                    &nbsp;전화 : 02-3401-4114<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일)<br>
                                                                            ※ 토ㆍ일요일 및 공휴일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('155','영등포센터 위탁운영')" onmouseout="fn_mouseOut('155')"  style="text-align: center;">
                                                                    	영등포센터<br>위탁운영
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('156','2016.6.1.~2018.12.31')" onmouseout="fn_mouseOut('156')" style="text-align: center;">
                                                                    &nbsp;2016.6.1.<br>~2018.12.31
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('157','기관명 : ㈜한국코퍼레이션  주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동) 전화 : 02-3401-4114 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('157')">
                                                                    &nbsp;기관명 : ㈜한국코퍼레이션<br>
                                                                    &nbsp;주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층 (수서동)<br>
                                                                    &nbsp;전화 : 02-3401-4114<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일)<br>
                                                                            ※ 토ㆍ일요일 및 공휴일 휴무<br>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('158','영등포센터 시설임차')" onmouseout="fn_mouseOut('158')" style="text-align: center;">
                                                                    	영등포센터<br>시설임차
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('159','2016.6.1.~2018.12.31')" onmouseout="fn_mouseOut('159')" style="text-align: center;">
                                                                    &nbsp;2016.6.1.<br>~2018.12.31
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('160','기관명 : ㈜한국코퍼레이션  주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층    (수서동) 전화 : 02-3401-4114 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('160')">
                                                                    &nbsp;기관명 : ㈜한국코퍼레이션<br>
                                                                    &nbsp;주소 : 서울특별시 강남구 광평로 280, 로즈데일빌딩 9층 (수서동)<br>
                                                                    &nbsp;전화 : 02-3401-4114<br>
                                                                    &nbsp;근무시간 : 09:00~18:00(평일)<br>
                                                                            ※ 토ㆍ일요일 및 공휴일 휴무<br>
                                                                </td>
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
                                                <td onmouseover="fn_mouseOver('161','2. 국민콜110은 위탁계약 체결 시 개인정보보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다')" onmouseout="fn_mouseOut('161')" style="padding-left:20px">
                                                    ② 국민콜110은 위탁계약 체결 시 개인정보보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('162','3. 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다')" onmouseout="fn_mouseOut('162')" style="padding-left:20px">
                                                    ③ 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('163','4. 정보주체의 권리ㆍ의무 및 행사방법')" onmouseout="fn_mouseOut('163')">
                                                    <b>4. 정보주체의 권리ㆍ의무 및 행사방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('164','1. 정보주체(만 14세 미만인 경우에는 법정대리인)는 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다')" onmouseout="fn_mouseOut('164')" style="padding-left:20px">
                                                    ① 정보주체(만 14세 미만인 경우에는 법정대리인)는 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('165','1. 개인정보 열람요구')" onmouseout="fn_mouseOut('165')" style="padding-left:25px">1. 개인정보 열람요구 </span><br>
                                                    <span onmouseover="fn_mouseOver('166','2. 개인정보 오류 등의 정정요구')" onmouseout="fn_mouseOut('166')" style="padding-left:25px">2. 개인정보 오류 등의 정정요구</span><br>
                                                    <span onmouseover="fn_mouseOver('167','3. 개인정보 삭제요구')" onmouseout="fn_mouseOut('167')" style="padding-left:25px">3. 개인정보 삭제요구 </span><br>
                                                    <span onmouseover="fn_mouseOver('168','4. 개인정보 처리 정지요구')" onmouseout="fn_mouseOut('168')" style="padding-left:25px">4. 개인정보 처리 정지요구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('169','2. 제1에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 및 제11호 서식에 따라 작성 후 서면, 전자우편, 모사전송(팩스) 등을 통하여 하실 수 있으며, 국민콜110은 요구를 한 자가 본인이거나 정당한 대리인인지 확인합니다')" onmouseout="fn_mouseOut('169')" style="padding-left:20px">
                                                    ② 제①에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 및 제11호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 국민콜110은 요구를 한 자가 본인이거나 정당한 대리인인지 확인합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('170','3. 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다')" onmouseout="fn_mouseOut('170')" style="padding-left:20px">
                                                    ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('180','4. 개인정보보호법 제35조제5항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다')" onmouseout="fn_mouseOut('180')" style="padding-left:20px">
                                                    ④ 개인정보보호법 제35조제5항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('181','5. 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다')" onmouseout="fn_mouseOut('181')" style="padding-left:20px">
                                                    ⑤ 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다. 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('182','5. 개인정보보호 책임자')" onmouseout="fn_mouseOut('182')">
                                                    <b>5. 개인정보보호 책임자</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('183','국민콜110은 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다')" onmouseout="fn_mouseOut('183')" style="padding-left:20px">
                                                    국민콜110은 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보보호책임자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('184','개인정보보호 책임자')" onmouseout="fn_mouseOut('184')" colspan="2" scope='col'>개인정보보호 책임자</th>
                                                                <th onmouseover="fn_mouseOver('185','개인정보보호 담당자')" onmouseout="fn_mouseOut('185')" colspan="2" scope='col'>개인정보보호 담당자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('186','성명')" onmouseout="fn_mouseOut('186')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('187','이성섭')" onmouseout="fn_mouseOut('187')">&nbsp;이성섭</td>
                                                                <td onmouseover="fn_mouseOver('188','성명')" onmouseout="fn_mouseOut('188')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('189','이영규')" onmouseout="fn_mouseOut('189')">&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('190','부서')" onmouseout="fn_mouseOut('190')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('200','상담안내과(110콜센터 티에프)')" onmouseout="fn_mouseOut('200')">&nbsp;상담안내과(110콜센터T/F)</td>
                                                                <td onmouseover="fn_mouseOver('201','부서')" onmouseout="fn_mouseOut('201')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('202','상담안내과(110콜센터 티에프)')" onmouseout="fn_mouseOut('202')">&nbsp;상담안내과(110콜센터T/F)</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('203','직위')" onmouseout="fn_mouseOut('203')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('204','국민콜110 센터장')" onmouseout="fn_mouseOut('204')">&nbsp;국민콜110 센터장</td>
                                                                <td onmouseover="fn_mouseOver('205','직위')" onmouseout="fn_mouseOut('205')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('206','주무관')" onmouseout="fn_mouseOut('206')">&nbsp;주무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('207','연락처')" onmouseout="fn_mouseOut('207')" rowspan="3" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('208','02-2110-6502 개인정보보호 담당자로 연결')" onmouseout="fn_mouseOut('208')" rowspan="3">&nbsp;02-2110-6502<br>※ 개인정보보호 담당자로 연결</td>
                                                                <td onmouseover="fn_mouseOver('209','연락처')" onmouseout="fn_mouseOut('209')" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('210','02-2110-6502')" onmouseout="fn_mouseOut('210')">&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('220','팩스')" onmouseout="fn_mouseOut('220')" style="text-align: center;">FAX</td>
                                                                <td onmouseover="fn_mouseOver('221','02-2110-0679')" onmouseout="fn_mouseOut('221')">&nbsp;02-2110-0679</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('222','이메일')" onmouseout="fn_mouseOut('222')" style="text-align: center;">e-Mail</td>
                                                                <td onmouseover="fn_mouseOver('223','에이엔에알케이아이007@케이오알이에이점케이알')" onmouseout="fn_mouseOut('223')">&nbsp;anarki007@korea.kr</td>
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
                                                <td onmouseover="fn_mouseOver('224','6. 개인정보의 파기')" onmouseout="fn_mouseOut('224')">
                                                    <b>6. 개인정보의 파기</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('225','1. 국민콜110은 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다')" onmouseout="fn_mouseOut('225')" style="padding-left:20px">
                                                    ① 국민콜110은 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('226','2. 파기의 절차 및 방법은 다음과 같습니다')" onmouseout="fn_mouseOut('226')" style="padding-left:20px">
                                                    ② 파기의 절차 및 방법은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('227','1. 파기절차 ')" onmouseout="fn_mouseOut('227')" style="padding-left:25px">1. 파기절차 </span><br>
                                                    <span onmouseover="fn_mouseOver('228','국민콜110은 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다')" onmouseout="fn_mouseOut('228')" style="padding-left:27px"> 국민콜110은 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('229','2. 파기방법')" onmouseout="fn_mouseOut('229')" style="padding-left:25px">2. 파기방법 </span><br>
                                                    <span onmouseover="fn_mouseOver('230','국민콜110은 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다')" onmouseout="fn_mouseOut('230')" style="padding-left:27px"> 국민콜110은 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다. </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('240','7. 개인정보의 안전성 확보조치')" onmouseout="fn_mouseOut('240')">
                                                    <b>7. 개인정보의 안전성 확보조치</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('241','국민콜110은 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다')" onmouseout="fn_mouseOut('241')" style="padding-left:20px">
                                                    국민콜110은 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('242','1. 관리적 조치 : 내부관리계획 수립ㆍ시행, 정기적 직원 교육 등')" onmouseout="fn_mouseOut('242')" style="padding-left:25px">1. 관리적 조치 : 내부관리계획 수립ㆍ시행, 정기적 직원 교육 등</span><br>
                                                    <span onmouseover="fn_mouseOver('243','2. 기술적 조치 : 접근권한 관리, 주요정보 암호화, 보안프로그램 설치 등')" onmouseout="fn_mouseOut('243')" style="padding-left:25px">2. 기술적 조치 : 접근권한 관리, 주요정보 암호화, 보안프로그램 설치 등 </span><br>
                                                    <span onmouseover="fn_mouseOver('244','3. 물리적 조치 : 전산실 등의 접근통제')" onmouseout="fn_mouseOut('244')" style="padding-left:25px">3. 물리적 조치 : 전산실 등의 접근통제 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('245','8. 정보주체의 권익침해 구제방법')" onmouseout="fn_mouseOut('245')">
                                                    <b>8. 정보주체의 권익침해 구제방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('246','1. 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다')" onmouseout="fn_mouseOut('246')" style="padding-left:20px">
                                                    ① 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('247','1. 개인정보보호 종합포털 : 국번없이 118(프라이버시점기사점오알점케이알)')" onmouseout="fn_mouseOut('247')" style="padding-left:25px">1. 개인정보보호 종합포털 : 국번없이 118(privacy.kisa.or.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('248','2. 대검찰청 사이버범죄수사단 : 02-3480-3571(사이버시드골뱅이에스피오점지오점케이알)')" onmouseout="fn_mouseOut('248')" style="padding-left:25px">2. 대검찰청 사이버범죄수사단 : 02-3480-3571(cybercid@spo.go.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('249','3. 경찰청 사이버테러대응센터 : 1566-0112(떠블떠블떠블점네탄점지오점케이알)')" onmouseout="fn_mouseOut('249')" style="padding-left:25px">3. 경찰청 사이버테러대응센터 : 1566-0112(www.netan.go.kr) </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('250','2. 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(더블더블점심판점지오점케이알)을 청구할 수 있습니다')" onmouseout="fn_mouseOut('250')" style="padding-left:20px">
                                                    ② 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(www.simpan. go.kr)을 청구할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('260','9. 영상정보처리기기 설치 및 운영')" onmouseout="fn_mouseOut('260')">
                                                    <b>9. 영상정보처리기기 설치 및 운영</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('261','1. 국민콜110은 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다')" onmouseout="fn_mouseOut('261')" style="padding-left:20px">
                                                    ① 국민콜110은 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('262','1. 설치목적 : 시설안전 및 화재예방 ')" onmouseout="fn_mouseOut('262')">
                                                    <span style="padding-left:25px">1. 설치목적 : 시설안전 및 화재예방 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('263','2. 설치대수')" onmouseout="fn_mouseOut('263')">		
                                                    <span style="padding-left:25px">2. 설치대수 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:45px">		
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>영상정보처리기기설치대수</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('264','구분')" onmouseout="fn_mouseOut('264')" scope='col'>구분</th>
                                                                <th onmouseover="fn_mouseOver('265','설치대수')" onmouseout="fn_mouseOut('265')" scope='col'>설치대수</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('266','과천센터')" onmouseout="fn_mouseOut('266')" style="text-align: center;">과천센터</td>
                                                                <td onmouseover="fn_mouseOver('267','3대')" onmouseout="fn_mouseOut('267')" style="text-align: center;">3대</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('268','영등포센터')" onmouseout="fn_mouseOut('268')" style="text-align: center;">영등포센터</td>
                                                                <td onmouseover="fn_mouseOver('269','3대')" onmouseout="fn_mouseOut('269')" style="text-align: center;">3대</td>
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
                                                <td onmouseover="fn_mouseOver('270','3. 설치위치')" onmouseout="fn_mouseOut('270')">	
                                                    <span style="padding-left:25px">3. 설치위치</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:45px">		
                                                    <table class='table table-bordered' >
                                                        <caption class='blind'>영상정보처리기기설치위치</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('280','구분')" onmouseout="fn_mouseOut('280')" colspan="2" scope='col'>구분</th>
                                                                <th onmouseover="fn_mouseOver('281','설치대수')" onmouseout="fn_mouseOut('281')" scope='col'>설치대수</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('282','과천센터')" onmouseout="fn_mouseOut('282')" style="text-align: center;">과천센터</td>
                                                                <td onmouseover="fn_mouseOver('283','전산실')" onmouseout="fn_mouseOut('283')" style="text-align: center;">전산실</td>
                                                                <td onmouseover="fn_mouseOver('284','3대')" onmouseout="fn_mouseOut('284')" style="text-align: center;">3대</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('285','영등포센터')" onmouseout="fn_mouseOut('285')" style="text-align: center;" rowspan="2">영등포센터</td>
                                                                <td onmouseover="fn_mouseOver('286','전산실')" onmouseout="fn_mouseOut('286')" style="text-align: center;">전산실</td>
                                                                <td onmouseover="fn_mouseOver('287','1대')" onmouseout="fn_mouseOut('287')" style="text-align: center;">1대</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('288','복도')" onmouseout="fn_mouseOut('288')" style="text-align: center;">복도</td>
                                                                <td onmouseover="fn_mouseOver('289','2대')" onmouseout="fn_mouseOut('289')" style="text-align: center;">2대</td>
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
                                                <td onmouseover="fn_mouseOver('290','4. 촬영범위')" onmouseout="fn_mouseOut('290')">	
                                                    <span style="padding-left:25px">4. 촬영범위</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:45px">		
                                                    <table class='table table-bordered' >
                                                        <caption class='blind'>영상정보처리기기촬영범위</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('300','구분')" onmouseout="fn_mouseOut('300')" scope='col'>구분</th>
                                                                <th onmouseover="fn_mouseOver('301','촬영범위')" onmouseout="fn_mouseOut('301')" scope='col'>촬영범위</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('302','과천센터')" onmouseout="fn_mouseOut('302')" style="text-align: center;">과천센터</td>
                                                                <td onmouseover="fn_mouseOver('303','전산실 입구')" onmouseout="fn_mouseOut('303')" style="text-align: center;">전산실 입구</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('304','영등포센터')" onmouseout="fn_mouseOut('304')" style="text-align: center;" rowspan="2">영등포센터</td>
                                                                <td onmouseover="fn_mouseOver('305','전산실 입구')" onmouseout="fn_mouseOut('305')" style="text-align: center;">전산실 입구</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('306','복도 전체')" onmouseout="fn_mouseOut('306')" style="text-align: center;">복도 전체</td>
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
                                                <td onmouseover="fn_mouseOver('307','5. 촬영시간 : 24시간')" onmouseout="fn_mouseOut('307')">	
                                                    <span style="padding-left:25px">5. 촬영시간 : 24시간 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('308','6. 보관기간')" onmouseout="fn_mouseOut('308')">	
                                                    <span style="padding-left:25px">6. 보관기간 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:45px">		
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>영상정보보관기간</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('309','구분')" onmouseout="fn_mouseOut('309')" scope='col'>구분</th>
                                                                <th onmouseover="fn_mouseOver('310','보관기간')" onmouseout="fn_mouseOut('310')" scope='col'>보관기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('320','과천센터')" onmouseout="fn_mouseOut('320')" style="text-align: center;">과천센터</td>
                                                                <td onmouseover="fn_mouseOver('321','22일')" onmouseout="fn_mouseOut('321')" style="text-align: center;">22일</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('322','영등포센터')" onmouseout="fn_mouseOut('322')" style="text-align: center;">영등포센터</td>
                                                                <td onmouseover="fn_mouseOver('323','30일')" onmouseout="fn_mouseOut('323')" style="text-align: center;">30일</td>
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
                                                <td onmouseover="fn_mouseOver('324','7. 보관장소')" onmouseout="fn_mouseOut('324')">	
                                                    <span style="padding-left:25px">7. 보관장소</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:45px">		
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>영상정보보관장소</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('325','구분')" onmouseout="fn_mouseOut('325')" scope='col'>구분</th>
                                                                <th onmouseover="fn_mouseOver('326','보관장소')" onmouseout="fn_mouseOut('326')" scope='col'>보관장소</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('327','과천센터')" onmouseout="fn_mouseOut('327')" style="text-align: center;">과천센터</td>
                                                                <td onmouseover="fn_mouseOver('328','전산실(6층)')" onmouseout="fn_mouseOut('328')" style="text-align: center;">전산실(6층)</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('329','영등포센터')" onmouseout="fn_mouseOut('329')" style="text-align: center;">영등포센터</td>
                                                                <td onmouseover="fn_mouseOver('330','전산실(11층)')" onmouseout="fn_mouseOut('330')" style="text-align: center;">전산실(11층)</td>
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
                                                <td onmouseover="fn_mouseOver('340','8. 관리책임 : 국민콜110 센터장 ')" onmouseout="fn_mouseOut('340')">	
                                                    <span style="padding-left:25px">8. 관리책임 : 국민콜110 센터장 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('341','2. 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다')" onmouseout="fn_mouseOut('341')" style="padding-left:20px">
                                                    ② 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('342','3. 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다')" onmouseout="fn_mouseOut('342')" style="padding-left:20px">
                                                    ③ 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('343','4. 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다')" onmouseout="fn_mouseOut('343')" style="padding-left:20px">
                                                    ④ 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('344','10. 개인정보 처리방침의 변경')" onmouseout="fn_mouseOut('344')">
                                                    <b>10. 개인정보 처리방침의 변경</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('345','1. 이 개인정보 처리방침은 2018.1.29(월)부터 적용됩니다')" onmouseout="fn_mouseOut('345')" style="padding-left:20px">
                                                    ① 이 개인정보 처리방침은 2018.1.29(월)부터 적용됩니다.
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