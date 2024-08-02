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
			var navUrl = "privacyfirst";
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
									<option selected="selected" value="/privacy.do?sd=first">제정 ~ 2016.03.31 적용지침</option>
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
									<option value="/privacy.do?sd=current">현행 적용지침</option>
									</select>
							</div>
                        
                        <div class='col-xs-12 privacyInfo'>
                            <div class="panel panel-default">
                                <div class="panel-body ">
                                    <table>
                                        <caption class='blind'>개인정보처리방침</caption>
                                        <thead class='blind''><tr><th scope='col'>개인정보처리방침</th></tr></thead>
                                        <tbody>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('27','110콜센터 홈페이지는 「개인정보 보호법」등 관련 법령을 준수하며, 개인정보처리방침은 아래와 같습니다')" onmouseout="fn_mouseOut('27')" style="padding-left:20px">
                                                    “110콜센터 홈페이지”는 「개인정보 보호법」등 관련 법령을 준수하며, 개인정보처리방침은 아래와 같습니다.  
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('28','1. 개인정보의 처리목적 및 보유기간')" onmouseout="fn_mouseOut('28')">
                                                    <b>1. 개인정보의 처리목적 및 보유기간</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('29','110콜센터 홈페이지는 문자상담, 예약상담, 채팅 및 화상상담 처리를 위해 아래와 같이 개인정보를 수집·보유합니다. 수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 수집목적이 변경될 경우 사전에 개인정보 주체에게 알리고 동의를 받을 예정입니다')" onmouseout="fn_mouseOut('29')" style="padding-left:20px">
                                                    “110콜센터 홈페이지”는 문자상담, 예약상담, 채팅 및 화상상담 처리를 위해 아래와 같이 개인정보를 수집·보유합니다. 수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 수집목적이 변경될 경우 사전에 개인정보 주체에게 알리고 동의를 받을 예정입니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('30','가. 문자상담')" onmouseout="fn_mouseOut('30')" style="padding-left:20px">가. 문자상담</span><br>
                                                    <span onmouseover="fn_mouseOver('40','대상 : 문자상담')" onmouseout="fn_mouseOut('40')" style="padding-left:20px"> - 대상 : 문자상담 </span><br>
                                                    <span onmouseover="fn_mouseOver('41','수집항목 : 연락처(전화번호), 문의내용 등')" onmouseout="fn_mouseOut('41')" style="padding-left:20px"> - 수집항목 : 연락처(전화번호), 문의내용 등 </span><br>
                                                    <span onmouseover="fn_mouseOver('42','수집근거 : 부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('42')" style="padding-left:20px"> - 수집근거 : 부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령 </span><br>
                                                    <span onmouseover="fn_mouseOver('43','보유기간 : 1년')" onmouseout="fn_mouseOut('43')" style="padding-left:20px"> - 보유기간 : 1년 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('44','나. 예약상담')" onmouseout="fn_mouseOut('44')" style="padding-left:20px">나. 예약상담</span><br>
                                                    <span onmouseover="fn_mouseOver('45','대상 : 예약상담')" onmouseout="fn_mouseOut('45')" style="padding-left:20px"> - 대상 : 예약상담 </span><br>
                                                    <span onmouseover="fn_mouseOver('46','수집항목 : 연락처(전화번호), 문의내용, 성명 등')" onmouseout="fn_mouseOut('46')" style="padding-left:20px"> - 수집항목 : 연락처(전화번호), 문의내용, 성명 등 </span><br>
                                                    <span onmouseover="fn_mouseOver('47','수집근거 : 부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('47')" style="padding-left:20px"> - 수집근거 : 부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령 </span><br>
                                                    <span onmouseover="fn_mouseOver('48','보유기간 : 1년')" onmouseout="fn_mouseOut('48')" style="padding-left:20px"> - 보유기간 : 1년 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('49','다. SNS, 채팅, 화상(수화)상담')" onmouseout="fn_mouseOut('49')" style="padding-left:20px">다. SNS, 채팅, 화상(수화)상담</span><br>
                                                    <span onmouseover="fn_mouseOver('50','대상 : 채팅 및 화상(수화)상담')" onmouseout="fn_mouseOut('50')" style="padding-left:20px"> - 대상 : 채팅 및 화상(수화)상담 </span><br>
                                                    <span onmouseover="fn_mouseOver('60','수집항목 : 연락처(전화번호), 문의내용, 성명 등')" onmouseout="fn_mouseOut('60')" style="padding-left:20px"> - 수집항목 : 연락처(전화번호), 문의내용, 성명 등 </span><br>
                                                    <span onmouseover="fn_mouseOver('61','수집근거 : 부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령')" onmouseout="fn_mouseOut('61')" style="padding-left:20px"> - 수집근거 : 부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령 </span><br>
                                                    <span onmouseover="fn_mouseOver('62','보유기간 : 1년')" onmouseout="fn_mouseOut('62')" style="padding-left:20px"> - 보유기간 : 1년 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('63','2. 개인정보의 이용 및 제공')" onmouseout="fn_mouseOut('63')">
                                                    <b>2. 개인정보의 이용 및 제공</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('64','110콜센터 홈페이지는 원칙적으로 개인정보를 수집·이용 목적으로 명시한 범위 내에서 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다. 다만, 다른 법률에 특별한 규정이 있는 경우 또는 「개인정보 보호법」 제18조 제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다')" onmouseout="fn_mouseOut('64')" style="padding-left:20px">
                                                    “110콜센터 홈페이지”는 원칙적으로 개인정보를 수집·이용 목적으로 명시한 범위 내에서 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다. 다만, 다른 법률에 특별한 규정이 있는 경우 또는 「개인정보 보호법」 제18조 제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('65','3. 개인정보처리의 위탁에 관한 사항')" onmouseout="fn_mouseOut('65')">
                                                    <b>3. 개인정보처리의 위탁에 관한 사항</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('66','가. 위탁 내용 : 대표홈페이지, 상담시스템 운영 및 유지관리 , 110정부민원안내콜센터 위탁운영')" onmouseout="fn_mouseOut('66')" style="padding-left:20px">가. 위탁 내용 : 대표홈페이지, 상담시스템 운영 및 유지관리 , 110정부민원안내콜센터 위탁운영 </span><br>
                                                    <span onmouseover="fn_mouseOver('67','나. 수탁 업체')" onmouseout="fn_mouseOut('67')" style="padding-left:20px">나. 수탁 업체 </span><br>
                                                    <span onmouseover="fn_mouseOver('68','업체명 : (주)이씨에스텔레콤 (홈페이지 및 상담시스템 운영 및 유지관리), 주식회사 케이티스 , (주)엠.피.씨 (110정부민원안내콜센터 위탁운영)')" onmouseout="fn_mouseOut('68')" style="padding-left:20px"> - 업체명 : (주)이씨에스텔레콤 (홈페이지 및 상담시스템 운영 및 유지관리), 주식회사 케이티스 , (주)엠.피.씨 (110정부민원안내콜센터 위탁운영) </span><br>
                                                    <span onmouseover="fn_mouseOver('69','주 소 : 경기도 과천시 중앙동 정부과천청사 2동 국민권익위원회 110정부민원안내콜센터')" onmouseout="fn_mouseOut('69')" style="padding-left:20px"> - 주 소 : 경기도 과천시 중앙동 정부과천청사 2동 국민권익위원회 110정부민원안내콜센터 </span><br>
                                                    <span onmouseover="fn_mouseOver('70','전 화 : 02-6196-9091~2(유지관리사업단), 110')" onmouseout="fn_mouseOut('70')" style="padding-left:20px"> - 전 화 : 02-6196-9091~2(유지관리사업단), 110 </span><br>
                                                    <span onmouseover="fn_mouseOver('80','근무시간 : 유지관리사업단(공휴일, 주말제외 09시 ~ 18시), 110정부민원안내콜센터 위탁운영 사업자(월~금 08시 ~ 18시, 토요일 09시 ~ 13시)')" onmouseout="fn_mouseOut('80')" style="padding-left:20px"> - 근무시간 : 유지관리사업단(공휴일, 주말제외 09시 ~ 18시), 110정부민원안내콜센터 위탁운영 사업자(월~금 08시 ~ 18시, 토요일 09시 ~ 13시) </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('81','위탁계약 시 개인정보보호 관련 법규의 준수, 개인정보에 관한 제3자 제공 금지 및 책임부담 등을 명확히 규정하고, 당해 계약내용을 서면 및 전자 보관하고 있습니다. 업체 변경 시 개인정보처리방침을 통해 고지하겠습니다')" onmouseout="fn_mouseOut('81')" style="padding-left:20px">
                                                    	위탁계약 시 개인정보보호 관련 법규의 준수, 개인정보에 관한 제3자 제공 금지 및 책임부담 등을 명확히 규정하고, 당해 계약내용을 서면 및 전자 보관하고 있습니다. 업체 변경 시 개인정보처리방침을 통해 고지하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('82','4. 개인정보의 열람 및 정정청구')" onmouseout="fn_mouseOut('82')">
                                                    <b>4. 개인정보의 열람 및 정정청구</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('83','110콜센터 홈페이지 이용자는 본인의 개인정보를 열람할 수 있으며, 정보주체는 자신의 개인정보의 정정 또는 삭제를 요청할 수 있습니다. 다만, 개인정보의 삭제 요청에도 불구하고 다른 법령에 의해 보존되어야 하는 경우에는 보존기간이 경과된 후에 삭제됩니다')" onmouseout="fn_mouseOut('83')" style="padding-left:20px">
                                                    “110콜센터 홈페이지” 이용자는 본인의 개인정보를 열람할 수 있으며, 정보주체는 자신의 개인정보의 정정 또는 삭제를 요청할 수 있습니다. 다만, 개인정보의 삭제 요청에도 불구하고 다른 법령에 의해 보존되어야 하는 경우에는 보존기간이 경과된 후에 삭제됩니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('84','5. 개인정보의 파기')" onmouseout="fn_mouseOut('84')">
                                                    <b>5. 개인정보의 파기</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('85','110콜센터 홈페이지는 개인정보의 보존기간이 경과되었거나, 처리목적이 달성된 경우에는 지체 없이 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기 합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다')" onmouseout="fn_mouseOut('85')" style="padding-left:20px">
                                                    “110콜센터 홈페이지”는 개인정보의 보존기간이 경과되었거나, 처리목적이 달성된 경우에는 지체 없이 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기 합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('86','6. 개인정보의 안정성 확보 조치')" onmouseout="fn_mouseOut('86')">
                                                    <b>6. 개인정보의 안정성 확보 조치</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('87','110콜센터 홈페이지는 개인정보 보호법 제29조에 따라 다음과 같이 안정성 확보에 필요한 기술적, 관리적, 물리적 조치를 취하고 있습니다')" onmouseout="fn_mouseOut('87')" style="padding-left:20px">
                                                    “110콜센터 홈페이지”는 「개인정보 보호법」제29조에 따라 다음과 같이 안정성 확보에 필요한 기술적, 관리적, 물리적 조치를 취하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('88','가. 개인정보에 대한 접근 제한')" onmouseout="fn_mouseOut('88')" style="padding-left:20px">가. 개인정보에 대한 접근 제한 </span><br>
                                                    <span onmouseover="fn_mouseOver('89','개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여·변경·말소를 통하여 개인정보에 대한 접근을 통제하고 있습니다')" onmouseout="fn_mouseOut('89')" style="padding-left:20px"> - 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여·변경·말소를 통하여 개인정보에 대한 접근을 통제하고 있습니다. </span><br>
                                                    <span onmouseover="fn_mouseOver('90','나. 접근기록의 보관')" onmouseout="fn_mouseOut('90')" style="padding-left:20px">나. 접근기록의 보관 </span><br>
                                                    <span onmouseover="fn_mouseOver('100','개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관·관리하고 있습니다')" onmouseout="fn_mouseOut('100')" style="padding-left:20px"> - 개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관·관리하고 있습니다. </span><br>
                                                    <span onmouseover="fn_mouseOver('101','다. 개인정보의 암호화')" onmouseout="fn_mouseOut('101')" style="padding-left:20px">다. 개인정보의 암호화 </span><br>
                                                    <span onmouseover="fn_mouseOver('102','개인정보는 암호화를 통해 안전하게 저장 및 관리되고 있으며, 자료의 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다')" onmouseout="fn_mouseOut('102')" style="padding-left:20px"> - 개인정보는 암호화를 통해 안전하게 저장 및 관리되고 있으며, 자료의 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다. </span><br>
                                                    <span onmouseover="fn_mouseOver('103','라. 보안시스템 설치 및 주기적 점검·갱신')" onmouseout="fn_mouseOut('103')" style="padding-left:20px">라. 보안시스템 설치 및 주기적 점검·갱신 </span><br>
                                                    <span onmouseover="fn_mouseOver('104','해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신·점검하고 있습니다')" onmouseout="fn_mouseOut('104')" style="padding-left:20px"> - 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신·점검하고 있습니다. </span><br>
                                                    <span onmouseover="fn_mouseOver('105','마. 비인가자에 대한 출입 통제')" onmouseout="fn_mouseOut('105')" style="padding-left:20px">마. 비인가자에 대한 출입 통제 </span><br>
                                                    <span onmouseover="fn_mouseOver('106','개인정보를 보관하고 있는 개인정보처리시스템의 물리적 보관 장소를 별도로 두고 이에 대한 출입통제 절차를 수립·운영하고 있습니다')" onmouseout="fn_mouseOut('106')" style="padding-left:20px"> - 개인정보를 보관하고 있는 개인정보처리시스템의 물리적 보관 장소를 별도로 두고 이에 대한 출입통제 절차를 수립·운영하고 있습니다. </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('107','7. 권익침해 구제방법')" onmouseout="fn_mouseOut('107')">
                                                    <b>7. 권익침해 구제방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('108','개인정보에 관한 권리 도는 이익을 침해받은 정보주체는 개인정보분쟁조정위원회에 분쟁조정 신청을 하시거나, 개인정보침해신고센터에 상담을 신청할 수 있습니다')" onmouseout="fn_mouseOut('108')" style="padding-left:20px">
                                                    	개인정보에 관한 권리 도는 이익을 침해받은 정보주체는 개인정보분쟁조정위원회에 분쟁조정 신청을 하시거나, 개인정보침해신고센터에 상담을 신청할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('109','가. 개인정보분쟁조정신청 : 개인정보 보호 종합지원 포털(더블더블더블점프라이버시점지오점케이알)  개인정보민원  개인정보 분쟁조정  분쟁조정 절차 및 신청')" onmouseout="fn_mouseOut('109')" style="padding-left:20px">가. 개인정보분쟁조정신청 : 개인정보 보호 종합지원 포털(www.privacy.go.kr) ⇒ 개인정보민원 &gt; 개인정보 분쟁조정 &gt; 분쟁조정 절차 및 신청 </span><br>
                                                    <span onmouseover="fn_mouseOver('110','나. 개인정보침해신고센터 : (국번없이) 118번')" onmouseout="fn_mouseOut('110')" style="padding-left:20px">나. 개인정보침해신고센터 : (국번없이) 118번 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('120','8. 개인정보보호 책임자')" onmouseout="fn_mouseOut('120')">
                                                    <b>8. 개인정보보호 책임자</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span onmouseover="fn_mouseOver('121','가. 개인정보보호 책임자 : 상담안내과장 김범일')" onmouseout="fn_mouseOut('121')" style="padding-left:20px">가. 개인정보보호 책임자 : 상담안내과장 김범일 </span><br>
                                                    <span onmouseover="fn_mouseOver('122','나. 개인정보보호 담당자 : 상담안내과 정성혜')" onmouseout="fn_mouseOut('122')" style="padding-left:20px">나. 개인정보보호 담당자 : 상담안내과 정성혜 </span><br>
                                                    <span onmouseover="fn_mouseOver('123','다. 전 화 : 02-6021-2113')" onmouseout="fn_mouseOut('123')" style="padding-left:20px">다. 전 화 : 02-6021-2113 </span><br>
                                                    <span onmouseover="fn_mouseOver('124','라. 이메일 : 지에이지오유케이79@코리아점케이알')" onmouseout="fn_mouseOut('124')" style="padding-left:20px">라. 이메일 : gagouk79@korea.kr </span><br>
                                                    <span onmouseover="fn_mouseOver('125','마. 주 소 : 서울특별시 서대문구 통일로 87(미근동) 국민권익원회 서울종합민원사무소 ')" onmouseout="fn_mouseOut('125')" style="padding-left:20px">마. 주 소 : 서울특별시 서대문구 통일로 87(미근동) 국민권익원회 서울종합민원사무소 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('126','9. 개인정보처리방침의 변경')" onmouseout="fn_mouseOut('126')">
                                                    <b>9. 개인정보처리방침의 변경</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onmouseover="fn_mouseOver('127','110콜센터 홈페이지에서는 개인정보처리방침을 개정하는 경우 시행시기, 변경된 내용을 정보주체가 쉽게 확인할 수 있도록 변경 전·후를 비교하여 홈페이지에 고지할 것입니다')" onmouseout="fn_mouseOut('127')" style="padding-left:20px">
                                                    “110콜센터 홈페이지”에서는 개인정보처리방침을 개정하는 경우 시행시기, 변경된 내용을 정보주체가 쉽게 확인할 수 있도록 변경 전·후를 비교하여 홈페이지에 고지할 것입니다.
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