<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>연혁 | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
	</head>
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top.jsp"/>
			
			<!-- 탑 서브메뉴 -->
			<c:import url="./common/subMenu.jsp"/>
            
            <main>
                <div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                        <div class='subContentWrap'>
                            <table class='table table-bordered historyTable'>
                                <caption class='blind'>국민콜 110 연혁</caption>
                                <thead></thead>
                                <tbody>
                                	<tr>
                                        <th>2019</th>
                                        <td>
                                        ·카카오톡 상담서비스 개시<br>
                                        ·문화체육관광부 연계 상담서비스 개시<br>
                                        ·국민콜 110 무료통화 서비스 개시<br>
                                        </td>
                                    </tr>
                                	<tr>
                                        <th>2018</th>
                                        <td>
                                        ·공정거래위원회 연계 상담서비스 개시<br>
                                        ·정부민원안내콜센터 상담사 보호에 관한 업무 운영지침(예규) 시행<br>
                                        </td>
                                    </tr>
                                	<tr>
                                        <th>2017</th>
                                        <td>
                                        ·경찰(112), 소방(119), 권익위(110) 간 신고전화 연계체계 구축
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>2016</th>
                                        <td>
                                        ·보건복지부, 법무부, 관세청 연계 상담서비스 개시<br>
                                        ·비긴급 신고전화 상담센터 개소
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>2015</th>
                                        <td>·과학기술정보통신부, 외교부, 국토교통부, 기상청 연계 상담서비스 개시</td>
                                    </tr>
                                    <tr>
                                        <th>2014</th>
                                        <td>·해양수산부, 농림축산식품부, 교육부 연계 상담서비스 개시</td>
                                    </tr>
                                    <tr>
                                        <th>2013</th>
                                        <td>·11개 부처 정부콜센터 정부과천청사 이전</td>
                                    </tr>
                                    <tr>
                                        <th>2012</th>
                                        <td>·공공행정기관 화상수화통역 상담서비스 개시</td>
                                    </tr>
                                    <tr>
                                        <th>2011</th>
                                        <td>
                                            ·온라인(화상수화, 채팅, SNS) 상담서비스 개시<br>
                                            ·행정안전부 민원24 상담서비스 개시 <br>
                                            ·여성가족부 성범죄자 우편 고지제도 상담서비스 개시 
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>2010</th>
                                        <td>
                                            ·스마트폰 모바일 앱 서비스 개시<br>
                                            ·국가보훈처 및 식품의약품안전처 상담서비스 개시
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>2009</th>
                                        <td>
                                            ·영상전화기를 이용한 수화상담서비스 시행<br>
                                            ·홈페이지 예약 상담서비스 시행<br>
                                            ·휴대폰 문자상담서비스  시행<br>
                                            ·1379 생계침해 신고센터 통합 및 상담서비스 개시
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>2008</th>
                                        <td>·통계청 상담서비스 개시</td>
                                    </tr>
                                    <tr>
                                        <th>2007</th>
                                        <td>
                                            ·행정안전부 위택스 전자납부 상담서비스 개시<br>
                                            ·110 정부민원안내콜센터 개소 및 전국 서비스 개시
                                        </td>
                                    </tr>
                                    
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </main>

            <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>