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
			var navUrl = "privacy20220107";
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
									<option selected="selected" value="/privacy.do?sd=20160613">2016.06.13 ~ 2016.08.21 적용지침</option>
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
									<option selected="selected" value="/privacy.do?sd=20220107">2022.01.07 ~ 2022.03.29 적용지침</option>
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
                                                <td onmouseover="fn_mouseOver('27','국민권익위원회 정부합동민원센터 소속 국민콜110(정부민원안내)(이하 국민콜110)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다')" onmouseout="fn_mouseOut('27')" style="padding-left:20px">
                                                    국민권익위원회 정부합동민원센터 소속 국민콜110(정부민원안내)(이하 국민콜110)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다.
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
                                                    ① 국민콜110은 전화상담, 문자상담, 예약상담, SNS 상담, 채팅상담, 화상(수화)상담 처리를 위해 아래와 같이 개인정보를 처리합니다.
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
                                                            <td onmouseover="fn_mouseOver('70','연락처 ')" onmouseout="fn_mouseOut('70')">&nbsp;연락처</td>
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
                                                            <td onmouseover="fn_mouseOver('97','공통항목 : 연락처, 상담내용, 아이피주소 고객아이디 카카오톡 상담시 추가항목 : 성명(타 기관으로 상담내용 처리이관 시)')" onmouseout="fn_mouseOut('97')">&nbsp;공통항목 : 연락처, 상담내용, IP주소, 고객ID(카카오톡 상담 시)<br>
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
                                                <td onmouseover="fn_mouseOver('121','3. 국민콜110은 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다')" onmouseout="fn_mouseOut('121')" style="padding-left:20px">
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
                                                                <th onmouseover="fn_mouseOver('136','위탁내용')" onmouseout="fn_mouseOut('136')" scope="col">
                                                                    위탁내용
                                                                </th>
                                                                <th onmouseover="fn_mouseOver('137','위탁기간')" onmouseout="fn_mouseOut('137')" scope="col">
                                                                    위탁기간
                                                                </th>
                                                                <th onmouseover="fn_mouseOver('138','위탁(수탁)업체')" onmouseout="fn_mouseOut('138')" scope="col">
                                                                    위탁(수탁)업체
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('139','전산자원 유지관리 및 위탁운영')" onmouseout="fn_mouseOut('139')" style="text-align: center;">
                                                                    	전산자원<br>유지관리 <br>및 <br>위탁운영
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('140','2022.1.7~2022.12.31')" onmouseout="fn_mouseOut('140')" style="text-align: center;">
                                                                    &nbsp;2022.1.7<br>~2022.12.31
                                                                </td>
                                                                <td onmouseover="fn_mouseOver('150','업체 : ㈜아리시스 주소 : 서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호 전화 : 02-2177-8100 근무시간 : 09:00~18:00(평일) 토ㆍ일요일 및 공휴일 휴무')" onmouseout="fn_mouseOut('150')">
                                                                    &nbsp;업체 : ㈜아리시스<br>
                                                                    &nbsp;주소 : 서울특별시 금천구 가산디지털1로 145, 에이스하이엔드타워3 1102호<br>
                                                                    &nbsp;전화 : 02-2177-8100<br>
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
                                                <td onmouseover="fn_mouseOver('163','4. 정보주체와 법정 대리인의 권리ㆍ의무 및 행사방법')" onmouseout="fn_mouseOut('163')">
                                                    <b>4. 정보주체와 법정 대리인의 권리ㆍ의무 및 행사방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('164','1. 정보주체(만 14세 미만인 경우에는 법정대리인)는 언제든지 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다')" onmouseout="fn_mouseOut('164')" style="padding-left:20px">
                                                    ① 정보주체(만 14세 미만인 경우에는 법정대리인)는 언제든지 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다.
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
                                                <td onmouseover="fn_mouseOver('169','2. 제1에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(팩스) 등을 통하여 하실 수 있으며, 국민콜110에서는 이에 대해 지체없이 조치하겠습니다')" onmouseout="fn_mouseOut('169')" style="padding-left:20px">
                                                    ② 제①에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 국민콜110에서는 이에 대해 지체없이 조치하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('170','3. 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다')" onmouseout="fn_mouseOut('170')" style="padding-left:20px">
                                                    ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('180','4. 개인정보보호법 제35조제4항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다')" onmouseout="fn_mouseOut('180')" style="padding-left:20px">
                                                    ④ 개인정보보호법 제35조제4항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('181','5. 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다')" onmouseout="fn_mouseOut('181')" style="padding-left:20px">
                                                    ⑤ 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다. 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('182','6. 제1에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 개인정보보호법 시행규칙 제11조 서식에 따른 위임장을 제출하여야 합니다')" onmouseout="fn_mouseOut('182')" style="padding-left:20px">
                                                    ⑥ 제①에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 개인정보보호법 시행규칙 제11조 서식에 따른 위임장을 제출하여야 합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('183','7. 정보주체는 제1에 따른 열람 등 요구를 아래의 부서에 할 수 있습니다. 국민콜110은 정보주체의 개인정보 열람 청구가 신속하게 처리되도록 하겠습니다.')" onmouseout="fn_mouseOut('183')" style="padding-left:20px">
                                                    ⑦ 정보주체는 제①에 따른 열람 등 요구를 아래의 부서에 할 수 있습니다. 국민콜110은 정보주체의 개인정보 열람 청구가 신속하게 처리되도록 하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보 파일명에 따른 부서 안내</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('184','개인정보 파일명')" onmouseout="fn_mouseOut('184')" scope="col"> 개인정보 파일명 </th>
                                                                <th onmouseover="fn_mouseOver('185','부서명')" onmouseout="fn_mouseOut('185')" scope="col"> 부서명 </th>
                                                                <th onmouseover="fn_mouseOver('186','전화번호')" onmouseout="fn_mouseOut('186')" scope="col"> 전화번호 </th>
                                                                <th onmouseover="fn_mouseOver('187','팩스번호')" onmouseout="fn_mouseOut('187')" scope="col"> 팩스번호 </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('188','전화상담')" onmouseout="fn_mouseOut('188')" style="text-align: center;"> 전화상담 </td>
                                                                <td onmouseover="fn_mouseOver('189','고충상담기획과 (국민콜110티에프)')" onmouseout="fn_mouseOut('189')" rowspan="7" style="text-align: center;"> 고충상담기획과 <br>(국민콜110T/F) </td>
                                                                <td onmouseover="fn_mouseOver('190','02-2110-6502')" onmouseout="fn_mouseOut('190')" rowspan="7" style="text-align: center;"> 02-2110-6502 </td>
                                                                <td onmouseover="fn_mouseOver('200','044-200-7957')" onmouseout="fn_mouseOut('200')" rowspan="7" style="text-align: center;"> 044-200-7957 </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('201','문자상담')" onmouseout="fn_mouseOut('201')" style="text-align: center;"> 문자상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('202','예약상담')" onmouseout="fn_mouseOut('202')" style="text-align: center;"> 예약상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('203','에스엔에스상담')" onmouseout="fn_mouseOut('203')" style="text-align: center;"> SNS상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('204','채팅상담')" onmouseout="fn_mouseOut('204')" style="text-align: center;"> 채팅상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('205','화상상담')" onmouseout="fn_mouseOut('205')" style="text-align: center;"> 화상상담 </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot></tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('206','8. 정보주체는 제1의 열람청구 접수ㆍ처리부서 이외에, 행정안전부의 개인정보보호종합포털웹사이트(더블더블더블점프라이버시점지오점케이알)를 통하여서도 개인정보 열람청구를 하실 수 있습니다')" onmouseout="fn_mouseOut('206')" style="padding-left:20px">
                                                    ⑧ 정보주체는 제①의 열람청구 접수ㆍ처리부서 이외에, 행정안전부의“개인정보보호종합포털”웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('207','9. 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다')" onmouseout="fn_mouseOut('207')" style="padding-left:20px">
                                                    ⑨ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('208','5. 개인정보보호 책임자')" onmouseout="fn_mouseOut('208')">
                                                    <b>5. 개인정보보호 책임자</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('209','국민콜110은 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다')" onmouseout="fn_mouseOut('209')" style="padding-left:20px">
                                                    국민콜110은 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보보호책임자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('210','개인정보보호 책임자')" onmouseout="fn_mouseOut('210')" scope="col" colspan="2">개인정보보호 책임자</th>
                                                                <th onmouseover="fn_mouseOver('220','개인정보보호 담당자')" onmouseout="fn_mouseOut('220')" scope="col" colspan="2">개인정보보호 담당자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('221','성명')" onmouseout="fn_mouseOut('221')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('222','김용호')" onmouseout="fn_mouseOut('222')">&nbsp;김용호</td>
                                                                <td onmouseover="fn_mouseOver('223','성명')" onmouseout="fn_mouseOut('223')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('224','이영규')" onmouseout="fn_mouseOut('224')">&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('225','부서')" onmouseout="fn_mouseOut('225')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('226','고충상담기획과(국민콜110티에프)')" onmouseout="fn_mouseOut('226')">&nbsp;고충상담기획과(국민콜110T/F)</td>
                                                                <td onmouseover="fn_mouseOver('227','부서')" onmouseout="fn_mouseOut('227')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('228','고충상담기획과(국민콜110티에프)')" onmouseout="fn_mouseOut('228')">&nbsp;고충상담기획과(국민콜110T/F)</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('229','직위')" onmouseout="fn_mouseOut('229')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('230','국민콜110 센터장')" onmouseout="fn_mouseOut('230')">&nbsp;국민콜110 센터장</td>
                                                                <td onmouseover="fn_mouseOver('240','직위')" onmouseout="fn_mouseOut('240')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('241','전산사무관')" onmouseout="fn_mouseOut('241')">&nbsp;전산사무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('242','연락처')" onmouseout="fn_mouseOut('242')" rowspan="3" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('243','02-2110-6502 개인정보보호 담당자로 연결')" onmouseout="fn_mouseOut('243')" rowspan="3">&nbsp;02-2110-6502<br>※ 개인정보보호 담당자로 연결</td>
                                                                <td onmouseover="fn_mouseOver('244','연락처')" onmouseout="fn_mouseOut('244')" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('245','02-2110-6502')" onmouseout="fn_mouseOut('245')">&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('246','팩스')" onmouseout="fn_mouseOut('246')" style="text-align: center;">FAX</td>
                                                                <td onmouseover="fn_mouseOver('247','044-200-7957')" onmouseout="fn_mouseOut('247')">&nbsp;044-200-7957</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('248','이메일')" onmouseout="fn_mouseOut('248')" style="text-align: center;">e-Mail</td>
                                                                <td onmouseover="fn_mouseOver('249','에이엔에이알케이아이007@케이오알이에이.케이알')" onmouseout="fn_mouseOut('249')">&nbsp;anarki007@korea.kr</td>
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
                                                <td onmouseover="fn_mouseOver('250','6. 개인정보의 파기')" onmouseout="fn_mouseOut('250')">
                                                    <b>6. 개인정보의 파기</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('260','1. 국민콜110은 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다')" onmouseout="fn_mouseOut('260')" style="padding-left:20px">
                                                    ① 국민콜110은 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('261','2. 파기의 절차 및 방법은 다음과 같습니다')" onmouseout="fn_mouseOut('261')" style="padding-left:20px">
                                                    ② 파기의 절차 및 방법은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('262','1. 파기절차')" onmouseout="fn_mouseOut('262')" style="padding-left:25px">1. 파기절차 </span><br>
                                                    <span onmouseover="fn_mouseOver('263','국민콜110은 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다')" onmouseout="fn_mouseOut('263')" style="padding-left:27px"> 국민콜110은 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('264','2. 파기방법')" onmouseout="fn_mouseOut('264')" style="padding-left:25px">2. 파기방법 </span><br>
                                                    <span onmouseover="fn_mouseOver('265','국민콜110은 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다')" onmouseout="fn_mouseOut('265')" style="padding-left:27px"> 국민콜110은 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다. </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('266','7. 개인정보의 안전성 확보조치')" onmouseout="fn_mouseOut('266')">
                                                    <b>7. 개인정보의 안전성 확보조치</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('267','국민콜110은 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다')" onmouseout="fn_mouseOut('267')" style="padding-left:20px">
                                                    국민콜110은 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('268','1. 개인정보 취급직원의 최소화 및 교육')" onmouseout="fn_mouseOut('268')" style="padding-left:25px">1. 개인정보 취급직원의 최소화 및 교육</span><br>
                                                    <span onmouseover="fn_mouseOver('269','개인정보취급자의 지정을 최소화하고 정기적인 교육을 시행하고 있습니다')" onmouseout="fn_mouseOut('269')" style="padding-left:27px"> 개인정보취급자의 지정을 최소화하고 정기적인 교육을 시행하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('270','2. 개인정보에 대한 접근 제한 ')" onmouseout="fn_mouseOut('270')" style="padding-left:25px">2. 개인정보에 대한 접근 제한 </span><br>
                                                    <span onmouseover="fn_mouseOver('271','개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며, 침입차단시스템과 침입방지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다')" onmouseout="fn_mouseOut('271')" style="padding-left:27px"> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며, 침입차단시스템과 침입방지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('272','3. 접속기록의 보관')" onmouseout="fn_mouseOut('272')" style="padding-left:25px">3. 접속기록의 보관 </span><br>
                                                    <span onmouseover="fn_mouseOver('273','개인정보처리시스템에 접속한 기록을 최소 1년 이상(다만, 5만명 이상의 정보주체에 관하여 개인정보를 처리하거나 고유식별정보 또는 민감정보를 처리하는 개인정보처리시스템의 경우에는 2년 이상) 보관ㆍ관리하고 있습니다')" onmouseout="fn_mouseOut('273')" style="padding-left:27px"> 개인정보처리시스템에 접속한 기록을 최소 1년 이상(다만, 5만명 이상의 정보주체에 관하여 개인정보를 처리하거나 고유식별정보 또는 민감정보를 처리하는 개인정보처리시스템의 경우에는 2년 이상) 보관ㆍ관리하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('274','4. 개인정보의 암호화')" onmouseout="fn_mouseOut('274')" style="padding-left:25px">4. 개인정보의 암호화</span><br>
                                                    <span onmouseover="fn_mouseOver('275','개인정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다')" onmouseout="fn_mouseOut('275')" style="padding-left:27px"> 개인정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('276','5. 보안프로그램 설치 및 주기적 점검ㆍ갱신')" onmouseout="fn_mouseOut('276')" style="padding-left:25px">5. 보안프로그램 설치 및 주기적 점검ㆍ갱신</span><br>
                                                    <span onmouseover="fn_mouseOver('277','해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신ㆍ점검하고 있습니다')" onmouseout="fn_mouseOut('277')" style="padding-left:27px"> 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신ㆍ점검하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('278','6. 비인가자에 대한 출입 통제')" onmouseout="fn_mouseOut('278')" style="padding-left:25px">6. 비인가자에 대한 출입 통제</span><br>
                                                    <span onmouseover="fn_mouseOver('279','개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다')" onmouseout="fn_mouseOut('279')" style="padding-left:27px"> 개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('280','7. 정기적인 자체 점검 실시')" onmouseout="fn_mouseOut('280')" style="padding-left:25px">7. 정기적인 자체 점검 실시</span><br>
                                                    <span onmouseover="fn_mouseOver('281','개인정보 취급 관련 안정성 확보를 위해 정기적으로 개인정보 보호관리 점검을 실시하고 있습니다')" onmouseout="fn_mouseOut('281')" style="padding-left:27px"> 개인정보 취급 관련 안정성 확보를 위해 정기적으로 개인정보 보호관리 점검을 실시하고 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('282','8. 내부관리계획의 수립 및 시행')" onmouseout="fn_mouseOut('282')" style="padding-left:25px">8. 내부관리계획의 수립 및 시행</span><br>
                                                    <span onmouseover="fn_mouseOver('283','개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다')" onmouseout="fn_mouseOut('283')" style="padding-left:27px"> 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('284','8. 정보주체의 권익침해 구제방법')" onmouseout="fn_mouseOut('284')">
                                                    <b>8. 정보주체의 권익침해 구제방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('285','1. 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다')" onmouseout="fn_mouseOut('285')" style="padding-left:20px">
                                                    ① 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('286','1. 개인정보침해신고센터 : 국번없이 118(프라이버시점기사점오알점케이알)')" onmouseout="fn_mouseOut('286')"  style="padding-left:25px">1. 개인정보침해신고센터 : 국번없이 118(privacy.kisa.or.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('287','2. 개인정보 분쟁조정위원회 : 1833-6972(더블더블더블점코피코점지오점케이알)')" onmouseout="fn_mouseOut('287')" style="padding-left:25px">2. 개인정보 분쟁조정위원회 : 1833-6972(www.kopico.go.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('288','3. 경찰청 사이버안전국 : 국번없이 182(사이버뷰로우점폴리스점지오점케이알)')" onmouseout="fn_mouseOut('288')" style="padding-left:25px">3. 경찰청 사이버안전국 : 국번없이 182(cyberbureau.police.go.kr) </span><br>
                                                    <span onmouseover="fn_mouseOver('289','4. 대검찰청 사이버범죄수사과 : 국번없이 1301(더블더블더블점에스피오점지오점케이알)')" onmouseout="fn_mouseOut('289')" style="padding-left:25px">4. 대검찰청 사이버범죄수사과 : 국번없이 1301(www.spo.go.kr) </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('290','2. 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(더블더블더블점심판점지오점케이알)을 청구할 수 있습니다')" onmouseout="fn_mouseOut('290')" style="padding-left:20px">
                                                    ② 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(www.simpan. go.kr)을 청구할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('291','9. 영상정보처리기기 설치 및 운영')" onmouseout="fn_mouseOut('291')">
                                                    <b>9. 영상정보처리기기 설치 및 운영</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('292','1. 국민콜110은 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다')" onmouseout="fn_mouseOut('292')" style="padding-left:20px">
                                                    ① 국민콜110은 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('293','1. 설치목적 : 국민콜110 전산실 안전 및 화재예방 등')" onmouseout="fn_mouseOut('293')">
                                                    <span style="padding-left:25px">1. 설치목적 : 국민콜110 전산실 안전 및 화재예방 등 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('294','2. 설치대수 : 3대')" onmouseout="fn_mouseOut('294')">		
                                                    <span style="padding-left:25px">2. 설치대수 : 3대 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('295','3. 설치위치 : 국민콜110 전산실')" onmouseout="fn_mouseOut('295')">	
                                                    <span style="padding-left:25px">3. 설치위치 : 국민콜110 전산실</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('300','4. 촬영범위 : 국민콜110 전산실 입구')" onmouseout="fn_mouseOut('300')">	
                                                    <span style="padding-left:25px">4. 촬영범위 : 국민콜110 전산실 입구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('301','5. 촬영시간 : 24시간')" onmouseout="fn_mouseOut('301')">	
                                                    <span style="padding-left:25px">5. 촬영시간 : 24시간 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('302','6. 보관기간 : 촬영시로부터 22일')" onmouseout="fn_mouseOut('302')">	
                                                    <span style="padding-left:25px">6. 보관기간 : 촬영시로부터 22일</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('303','7. 보관장소 : 국민콜110 전산실')" onmouseout="fn_mouseOut('303')">	
                                                    <span style="padding-left:25px">7. 보관장소 : 국민콜110 전산실</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('304','8. 관리책임자 및 접근권한자')" onmouseout="fn_mouseOut('304')">	
                                                    <span style="padding-left:25px">8. 관리책임자 및 접근권한자 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>관리책임자 및 접근권한자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th onmouseover="fn_mouseOver('305','관리책임자')" onmouseout="fn_mouseOut('305')" scope="col" colspan="2">관리책임자</th>
                                                                <th onmouseover="fn_mouseOver('306','접근권한자')" onmouseout="fn_mouseOut('306')" scope="col" colspan="2">접근권한자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('307','성명')" onmouseout="fn_mouseOut('307')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('308','김용호')" onmouseout="fn_mouseOut('308')">&nbsp;김용호</td>
                                                                <td onmouseover="fn_mouseOver('309','성명')" onmouseout="fn_mouseOut('309')" style="text-align: center;">성명</td>
                                                                <td onmouseover="fn_mouseOver('310','이영규')" onmouseout="fn_mouseOut('310')">&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('320','부서')" onmouseout="fn_mouseOut('320')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('321','고충상담기획과(국민콜110티에프)')" onmouseout="fn_mouseOut('321')">&nbsp;고충상담기획과(국민콜110T/F)</td>
                                                                <td onmouseover="fn_mouseOver('322','부서')" onmouseout="fn_mouseOut('322')" style="text-align: center;">부서</td>
                                                                <td onmouseover="fn_mouseOver('323','고충상담기획과(국민콜110티에프)')" onmouseout="fn_mouseOut('323')">&nbsp;고충상담기획과(국민콜110T/F)</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('324','직위')" onmouseout="fn_mouseOut('324')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('325','국민콜110 센터장')" onmouseout="fn_mouseOut('325')">&nbsp;국민콜110 센터장</td>
                                                                <td onmouseover="fn_mouseOver('326','직위')" onmouseout="fn_mouseOut('326')" style="text-align: center;">직위</td>
                                                                <td onmouseover="fn_mouseOver('327','전산사무관')" onmouseout="fn_mouseOut('327')">&nbsp;전산사무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('328','연락처')" onmouseout="fn_mouseOut('328')" rowspan="3" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('329','02-2110-6502 접근권한자로로 연결')" onmouseout="fn_mouseOut('329')" rowspan="3">&nbsp;02-2110-6502<br>※ 접근권한자로 연결</td>
                                                                <td onmouseover="fn_mouseOver('330','연락처')" onmouseout="fn_mouseOut('330')" style="text-align: center;">연락처</td>
                                                                <td onmouseover="fn_mouseOver('340','02-2110-6502')" onmouseout="fn_mouseOut('340')">&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('350','팩스')" onmouseout="fn_mouseOut('350')" style="text-align: center;">FAX</td>
                                                                <td onmouseover="fn_mouseOver('351','044-200-7957')" onmouseout="fn_mouseOut('351')">&nbsp;044-200-7957</td>
                                                            </tr>
                                                            <tr>
                                                                <td onmouseover="fn_mouseOver('352','이메일')" onmouseout="fn_mouseOut('352')" style="text-align: center;">e-Mail</td>
                                                                <td onmouseover="fn_mouseOver('353','에이엔에이알케이아이007@케이오알이에이.케이알')" onmouseout="fn_mouseOut('353')">&nbsp;anarki007@korea.kr</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot></tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td onmouseover="fn_mouseOver('354','9. 영상정보 확인방법 및 장소 : 관리책임자에게 요구 ')" onmouseout="fn_mouseOut('354')">	
                                                    <span style="padding-left:25px">9. 영상정보 확인방법 및 장소 : 관리책임자에게 요구 </span><br>
                                                </td>
                                            </tr>										
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('355','2. 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다')" onmouseout="fn_mouseOut('355')" style="padding-left:20px">
                                                    ② 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('356','3. 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다')" onmouseout="fn_mouseOut('356')" style="padding-left:20px">
                                                    ③ 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('357','4. 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다')" onmouseout="fn_mouseOut('357')" style="padding-left:20px">
                                                    ④ 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('358','10. 개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항')" onmouseout="fn_mouseOut('358')">
                                                    <b>10. 개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('359','1. 국민콜110은 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 쿠키를 사용합니다')" onmouseout="fn_mouseOut('359')" style="padding-left:20px">
                                                    ① 국민콜110은 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는‘쿠키(Cookie)'를 사용합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('360','2. 쿠키는 국민콜110 서비스를 운영하는데 이용되는 서버(에이취티티피)가 이용자의 컴퓨터 브라우저에 보내는 소량의 정보이며, 이용자의 컴퓨터 내 하드디스크에 저장되기도 합니다')" onmouseout="fn_mouseOut('360')" style="padding-left:20px">
                                                    ② 쿠키는 국민콜110 서비스를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에 보내는 소량의 정보이며, 이용자의 컴퓨터 내 하드디스크에 저장되기도 합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('370','1. 쿠키의 사용목적 : 이용자가 방문한 각 서비스와 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다')" onmouseout="fn_mouseOut('370')" style="padding-left:25px">1. 쿠키의 사용목적 : 이용자가 방문한 각 서비스와 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('371','2. 쿠키의 설치ㆍ운영 및 거부 : 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부할 수 있습니다')" onmouseout="fn_mouseOut('371')" style="padding-left:25px">2. 쿠키의 설치ㆍ운영 및 거부 : 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부할 수 있습니다.</span><br>
                                                    <span onmouseover="fn_mouseOver('372','3. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다')" onmouseout="fn_mouseOut('372')" style="padding-left:25px">3. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('373','3. 채팅상담 및 화상상담 이용 시 IP주소 등이 자동 생성되어 수집됩니다')" onmouseout="fn_mouseOut('373')" style="padding-left:20px">
                                                    ③ 채팅상담 및 화상상담 이용 시 IP주소 등이 자동 생성되어 수집됩니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('374','11. 개인정보 처리방침의 변경')" onmouseout="fn_mouseOut('374')">
                                                    <b>11. 개인정보 처리방침의 변경</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('375','1. 이 개인정보 처리방침은 2022.1.7(금)부터 적용됩니다')" onmouseout="fn_mouseOut('375')" style="padding-left:20px">
                                                    ① 이 개인정보 처리방침은 2022.1.7(금)부터 적용됩니다.
                                                </td>
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