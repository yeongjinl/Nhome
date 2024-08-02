<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>개인정보 처리방침 | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
        
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
			<c:import url="../common/top.jsp"/>
			
            <main>            
                <div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                        
                        <c:import url="./common/menu.jsp"/>
                        
                        <div class='col-xs-12 privacyInfo'>
                            <div class="panel panel-default">
                                <div class="panel-body ">
                                    <table>
                                        <caption class='blind'>개인정보처리방침</caption>
                                        <thead class='blind'><tr><th>개인정보처리방침</th></tr></thead>
                                        <tbody>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    국민권익위원회 정부합동민원센터 소속 국민콜110(정부민원안내)(이하 국민콜110)는 개인정보보호법 등 관련 법령을 준수하고 있으며, 개인정보 처리방침은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                             <tr>
                                                <td style="margin:auto;text-align:center">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy.png'/>" style="width:95%" alt="주요 개인정보 처리 안내">
                                                </td>
                                            </tr>
                                             <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy01.png'/>" style="width:45px;hright:50px;" alt="개인정보 처리목적">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy01_1.png'/>" style="width:45px;hright:50px;" alt="처리항목">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy01_2.png'/>" style="width:45px;hright:50px;" alt="보유기간">&nbsp; 
                                                    <b>1. 개인정보의 처리목적ㆍ처리항목 및 보유기간</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 국민콜110은 전화상담, 문자상담, 예약상담, SNS 상담, 채팅상담, 화상(수화)상담 처리를 위해 아래와 같이 개인정보를 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보의 처리목적ㆍ처리항목 및 보유기간</caption>
                                                        <thead class='blind'>
                                                            <tr>
                                                                <th>서비스 항목</th>
                                                                <th>서비스 설명</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody><tr>
                                                            <td colspan="2">&nbsp;<b>전화상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리목적</td>
                                                            <td>&nbsp;전화 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리근거</td>
                                                            <td>&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리항목</td>
                                                            <td>&nbsp;공통항목 : 연락처, 상담내용 , 상담내용 녹취<br>
                                                                &nbsp;추가항목1 : 생년월일, 주소지, 가족성명, 보훈번호(국가보훈처 관련상담 시)<br>
                                                                &nbsp;추가항목2 : 성별, 지역(또는 주소), 연령대(통계청 관련상담 시)<br>
                                                                &nbsp;추가항목3 : 성명(행정심판 확인 및 조회 시)<br>
                                                                &nbsp;추가항목4 : 성명, 연락처(식품의약품안전처 관련상담 시 아웃콜 진행할 경우)
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">보유기간</td>
                                                            <td>&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;<b>문자상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리목적</td>
                                                            <td>&nbsp;휴대폰 문자메시지를 이용한 상담정보 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리근거</td>
                                                            <td>&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리항목</td>
                                                            <td>&nbsp;연락처, 상담내용</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">보유기간</td>
                                                            <td>&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;<b>예약상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리목적</td>
                                                            <td>&nbsp;상담 예약을 위한 정보처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리항목</td>
                                                            <td>&nbsp;연락처</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리근거</td>
                                                            <td>&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">보유기간</td>
                                                            <td>&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;<b>SNS상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리목적</td>
                                                            <td>&nbsp;SNS 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리항목</td>
                                                            <td>&nbsp;SNS(페이스북, 트위터) ID, 상담내용</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리근거</td>
                                                            <td>&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">보유기간</td>
                                                            <td>&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;<b>채팅상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리목적</td>
                                                            <td>&nbsp;채팅 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리항목</td>
                                                            <td>&nbsp;공통항목 : 연락처, 상담내용, IP주소, 고객ID(카카오톡 상담 시)<br>
                                                                &nbsp;추가항목 : 성명(타 기관으로 상담내용 처리이관 시)</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리근거</td>
                                                            <td>&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">보유기간</td>
                                                            <td>&nbsp;1년</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;<b>화상(수어)상담</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리목적</td>
                                                            <td>&nbsp;화상(수어) 상담업무 처리 및 분석ㆍ관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리항목</td>
                                                            <td>&nbsp;공통항목 : 연락처, 상담내용, 화상상담 영상, IP주소<br>
                                                                &nbsp;추가항목 : 성명(타 기관으로 상담내용 처리이관 시)</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">처리근거</td>
                                                            <td>&nbsp;부패방지 및 국민권익위원회 설치 및 운영에 관한 법률 및 동법 시행령</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">보유기간</td>
                                                            <td>&nbsp;1년</td>
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
                                                <td style="padding-left:20px">
                                                    ② 처리한 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 목적이 변경될 경우 개인정보보호법 제18조에 따라 별도로 개인정보 주체에게 알리고 동의를 받을 예정입니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ③ 국민콜110은 대국민 서비스 제공 및 민원처리 등 법령에서 정한 소관업무 수행의 목적에 필요한 최소한의 개인정보만을 처리합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ④ 서비스 이용 과정에서 IP주소, 접속일시, 이용기록 등의 서비스 이용기록, 기기정보가 생성되어 수집될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy02.png'/>" style="width:45px;hright:50px;" alt="제3자 제공">
                                                    <b>2. 개인정보처리 및 제3자 제공</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 국민콜110은 원칙적으로 명시한 범위 내에서 개인정보를 처리하며, 정보주체의 사전 동의 없이는 본래의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 다만, 다른 법률에 특별한 규정이 있는 경우 또는 개인정보보호법 제18조제2항에 해당하는 경우에는 제3자에게 제공할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy03.png'/>" style="width:45px;hright:50px;" alt="처리 위탁">
                                                    <b>3. 개인정보 처리의 위탁</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 국민콜110은 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>처리위탁안내</caption>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">
                                                                    	위탁내용
                                                                </th>
                                                                <th scope="col">
                                                                   	 위탁기간
                                                                </th>
                                                                <th scope="col">
                                                                    	위탁(수탁)업체
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center;">
                                                                    	전산자원<br>유지관리 <br>및 <br>위탁운영
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    &nbsp;2022.1.7<br>~2022.12.31
                                                                </td>
                                                                <td>
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
                                                <td style="padding-left:20px">
                                                    ② 국민콜110은 위탁계약 체결 시 개인정보보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ③ 개인정보 위탁처리 업체가 변경되는 경우, 변경된 업체정보를 개인정보 처리방침을 통해 고지하도록 하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy04.png'/>" style="width:45px;hright:50px;" alt="정보주체 권리의무">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy04_1.png'/>" style="width:45px;hright:50px;" alt="열람청구">
                                                    <b>4. 정보주체와 법정 대리인의 권리ㆍ의무 및 행사방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 정보주체(만 14세 미만인 경우에는 법정대리인)는 언제든지 다음 각 호의 개인정보보호 관련 권리를 행사할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span style="padding-left:25px">1. 개인정보 열람요구 </span><br>
                                                    <span style="padding-left:25px">2. 개인정보 오류 등의 정정요구</span><br>
                                                    <span style="padding-left:25px">3. 개인정보 삭제요구 </span><br>
                                                    <span style="padding-left:25px">4. 개인정보 처리 정지요구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 제①에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 국민콜110에서는 이에 대해 지체없이 조치하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 해당 요구의 처리가 완료될 때 까지 당해 개인정보를 이용하거나 제공하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ④ 개인정보보호법 제35조제4항 및 제37조제2항에 근거하여 개인정보 열람 및 처리정지 요구의 권리가 제한될 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ⑤ 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있을 경우에는 삭제를 요구할 수 없습니다. 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ⑥ 제①에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 개인정보보호법 시행규칙 제11조 서식에 따른 위임장을 제출하여야 합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ⑦ 정보주체는 제①에 따른 열람 등 요구를 아래의 부서에 할 수 있습니다. 국민콜110은 정보주체의 개인정보 열람 청구가 신속하게 처리되도록 하겠습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보 파일명에 따른 부서 안내</caption>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col"> 개인정보 파일명 </th>
                                                                <th scope="col"> 부서명 </th>
                                                                <th scope="col"> 전화번호 </th>
                                                                <th scope="col"> 팩스번호 </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center;"> 전화상담 </td>
                                                                <td rowspan="7" style="text-align: center;"> 고충상담기획과 </td>
                                                                <td rowspan="7" style="text-align: center;"> 02-2110-6502 </td>
                                                                <td rowspan="7" style="text-align: center;"> 044-200-7957 </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;"> 문자상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;"> 예약상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;"> SNS상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;"> 채팅상담 </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;"> 화상상담 </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot></tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ⑧ 정보주체는 제①의 열람청구 접수ㆍ처리부서 이외에, 행정안전부의“개인정보보호종합포털”웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ⑨ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy05.png'/>" style="width:45px;hright:50px;" alt="개인정보보호 책임자">
                                                    <b>5. 개인정보보호 책임자</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    국민콜110은 개인정보 처리에 관한 업무를 책임지고 정보주체의 불만 또는 피해구제 등을 위하여 다음과 같이 개인정보보호 책임자 및 담당자를 지정하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>개인정보보호책임자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">개인정보보호 책임자</th>
                                                                <th scope="col">개인정보보호 <br>분야별 책임자</th>
                                                                <th scope="col">개인정보보호 담당자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center;">성명</td>
                                                                <td>&nbsp;원유진</td>
                                                                <td>&nbsp;김용호</td>
                                                                <td>&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;">부서</td>
                                                                <td>&nbsp;고충상담기획과</td>
                                                                <td>&nbsp;고충상담기획과</td>
                                                                <td>&nbsp;고충상담기획과</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;">직위</td>
                                                                <td>&nbsp;고충상담기획과장</td>
                                                                <td>&nbsp;국민콜110 센터장</td>
                                                                <td>&nbsp;전산사무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td rowspan="3" style="text-align: center;">연락처</td>
                                                                <td rowspan="3" colspan="2">02-2110-6502<br>※ 개인정보보호 담당자로 연결</td>
                                                                <td>&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;044-200-7957</td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;anarki007@korea.kr</td>                                                                
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
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy06.png'/>" style="width:45px;hright:50px;" alt="파기">
                                                    <b>6. 개인정보의 파기</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 국민콜110은 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 해당 정보를 재생할 수 없는 기술적 방법을 사용하여 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 아니합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 파기의 절차 및 방법은 다음과 같습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span style="padding-left:25px">1. 파기절차 </span><br>
                                                    <span style="padding-left:27px"> 국민콜110은 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보파기 계획을 수립하여 파기합니다. 파기 사유가 발생한 개인정보(또는 개인정보파일)를 정하고, 개인정보보호책임자의 승인을 받아 개인정보(또는 개인정보파일)을 파기합니다.</span><br>
                                                    <span style="padding-left:25px">2. 파기방법 </span><br>
                                                    <span style="padding-left:27px"> 국민콜110은 전자적 파일 형태로 기록ㆍ저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록ㆍ저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy07.png'/>" style="width:45px;hright:50px;" alt="안전성 확보조치">
                                                    <b>7. 개인정보의 안전성 확보조치</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    국민콜110은 개인정보의 안전성 확보를 위하여 다음과 같은 조치를 하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span style="padding-left:25px">1. 개인정보 취급직원의 최소화 및 교육</span><br>
                                                    <span style="padding-left:27px"> 개인정보취급자의 지정을 최소화하고 정기적인 교육을 시행하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">2. 개인정보에 대한 접근 제한 </span><br>
                                                    <span style="padding-left:27px"> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며, 침입차단시스템과 침입방지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">3. 접속기록의 보관 </span><br>
                                                    <span style="padding-left:27px"> 개인정보처리시스템에 접속한 기록을 최소 1년 이상(다만, 5만명 이상의 정보주체에 관하여 개인정보를 처리하거나 고유식별정보 또는 민감정보를 처리하는 개인정보처리시스템의 경우에는 2년 이상) 보관ㆍ관리하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">4. 개인정보의 암호화</span><br>
                                                    <span style="padding-left:27px"> 개인정보는 암호화 등을 통해 안전하게 저장 및 관리되고 있습니다. 또한, 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">5. 보안프로그램 설치 및 주기적 점검ㆍ갱신</span><br>
                                                    <span style="padding-left:27px"> 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적으로 갱신ㆍ점검하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">6. 비인가자에 대한 출입 통제</span><br>
                                                    <span style="padding-left:27px"> 개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">7. 정기적인 자체 점검 실시</span><br>
                                                    <span style="padding-left:27px"> 개인정보 취급 관련 안정성 확보를 위해 정기적으로 개인정보 보호관리 점검을 실시하고 있습니다.</span><br>
                                                    <span style="padding-left:25px">8. 내부관리계획의 수립 및 시행</span><br>
                                                    <span style="padding-left:27px"> 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy08.png'/>" style="width:45px;hright:50px;" alt="권익침해구제">
                                                    <b>8. 정보주체의 권익침해 구제방법</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 정보주체는 아래의 기관으로 개인정보 침해에 대한 피해구제, 상담 등을 하실 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span style="padding-left:25px">1. 개인정보침해신고센터 : 국번없이 118(privacy.kisa.or.kr) </span><br>
                                                    <span style="padding-left:25px">2. 개인정보 분쟁조정위원회 : 1833-6972(www.kopico.go.kr) </span><br>
                                                    <span style="padding-left:25px">3. 경찰청 사이버안전국 : 국번없이 182(cyberbureau.police.go.kr) </span><br>
                                                    <span style="padding-left:25px">4. 대검찰청 사이버범죄수사과 : 국번없이 1301(www.spo.go.kr) </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 또한, 개인정보의 열람, 정정, 삭제, 처리정지 등에 대한 정보주체의 요구에 대한 처분 또는 부작위로 인하여 권리 또는 이익을 침해받은 경우, 행정심판법이 정하는 바에 따라 행정심판(www.simpan. go.kr)을 청구할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy09.png'/>" style="width:45px;hright:50px;" alt="영상정보처리기기">
                                                    <b>9. 영상정보처리기기 설치 및 운영</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 국민콜110은 다음과 같이 영상정보처리기기를 설치ㆍ운영하고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span style="padding-left:25px">1. 설치목적 : 국민콜110 전산실 안전 및 화재예방 등 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>		
                                                    <span style="padding-left:25px">2. 설치대수 : 3대 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">3. 설치위치 : 국민콜110 전산실</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">4. 촬영범위 : 국민콜110 전산실 입구 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">5. 촬영시간 : 24시간 </span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">6. 보관기간 : 촬영시로부터 22일</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">7. 보관장소 : 국민콜110 전산실</span><br>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">8. 관리책임자 및 접근권한자 </span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    <table class='table table-bordered'>
                                                        <caption class='blind'>관리책임자 및 접근권한자</caption>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" colspan="2">관리책임자</th>
                                                                <th scope="col" colspan="2">접근권한자</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center;">성명</td>
                                                                <td>&nbsp;김용호</td>
                                                                <td style="text-align: center;">성명</td>
                                                                <td>&nbsp;이영규</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;">부서</td>
                                                                <td>&nbsp;고충상담기획과</td>
                                                                <td style="text-align: center;">부서</td>
                                                                <td>&nbsp;고충상담기획과</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;">직위</td>
                                                                <td>&nbsp;국민콜110 센터장</td>
                                                                <td style="text-align: center;">직위</td>
                                                                <td>&nbsp;전산사무관</td>
                                                            </tr>
                                                            <tr>
                                                                <td rowspan="3" style="text-align: center;">연락처</td>
                                                                <td rowspan="3">&nbsp;02-2110-6502<br>※ 접근권한자로 연결</td>
                                                                <td style="text-align: center;">연락처</td>
                                                                <td>&nbsp;02-2110-6502</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;">FAX</td>
                                                                <td>&nbsp;044-200-7957</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center;">e-Mail</td>
                                                                <td>&nbsp;anarki007@korea.kr</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot></tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>	
                                                <td>	
                                                    <span style="padding-left:25px">9. 영상정보 확인방법 및 장소 : 관리책임자에게 요구 </span><br>
                                                </td>
                                            </tr>										
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 정보주체는 위 영상정보처리기기에 대해 열람ㆍ존재확인 청구서를 이용하여 관리책임자에게 개인영상정보 열람을 신청할 수 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ③ 다만, 정보주체 자신이 촬영된 경우나 정보주체의 생명ㆍ신체ㆍ재산 이익을 위해 명백히 필요한 경우에 한하여 열람을 허가합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ④ 위 영상정보처리기기는 접근통제 및 권한제한, 안전한 저장ㆍ전송기술 적용, 처리기록 보관 및 위ㆍ변조 방지장치, 보관시설 마련 및 잠금장치 설정 등으로 보호조치 되고 있습니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy10.png'/>" style="width:45px;hright:50px;" alt="자동수집">
                                                    <b>10. 개인정보 자동 수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 국민콜110은 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는‘쿠키(Cookie)'를 사용합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 쿠키는 국민콜110 서비스를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에 보내는 소량의 정보이며, 이용자의 컴퓨터 내 하드디스크에 저장되기도 합니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span style="padding-left:25px">1. 쿠키의 사용목적 : 이용자가 방문한 각 서비스와 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.</span><br>
                                                    <span style="padding-left:25px">2. 쿠키의 설치ㆍ운영 및 거부 : 웹브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부할 수 있습니다.</span><br>
                                                    <span style="padding-left:25px">3. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</span><br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ③ 채팅상담 및 화상상담 이용 시 IP주소 등이 자동 생성되어 수집됩니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:10px;font-size:18px;">
                                                    <img src="<c:url value='/images/egovframework/gcall/privacy/privacy11.png'/>" style="width:45px;hright:50px;" alt="처리방침 변경">
                                                    <b>11. 개인정보 처리방침의 변경</b><br> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ① 이 개인정보 처리방침은 2022.3.30(수)부터 적용됩니다.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left:20px">
                                                    ② 이전의 개인정보 처리방침은 개정내역에서 확인하실 수 있습니다.
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

            <c:import url="../common/footer.jsp"/>	
		</div>
	</body>
</html>