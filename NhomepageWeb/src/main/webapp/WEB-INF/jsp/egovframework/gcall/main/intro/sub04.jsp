<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>위치안내 | 정부민원안내콜센터</title>
		
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
                        <div class='mainTitle'>위치안내</div>
                        
                        <div class='subContentWrap'>
                            <div class='col-xs-12 subComment'>주소 : 경기도 과천시 관문로47 정부과천청사 2동</div>                            
                            
                            <table class='table table-borderd locationTable'>
                                <caption class='blind'>국민콜110 과천센터 오시는길</caption>
                                <thead></thead>
                                <tbody>
                                    <tr>
                                        <th>
                                            <img src="<c:url value='/images/egovframework/gcall/main/intro/location01.png'/>" class='img-responsive' alt="국민콜110 과천센터 건물사진">
                                            <div class='mb40 hidden-xs'></div>
                                            <span class='locationText'>                                            	
                                            <b>지하철</b> : 4호선 정부과천청사역 하차<br>
                                            (7번 또는 8번 출구로 나와 150m 직진)<br><br>
                                            <b>버스</b> : 정부과천청사 정류장 하차<br>
                                            &nbsp;&nbsp;① 간선 : 441, 502, 540, 541, 542 <br>
                                            &nbsp;&nbsp;② 일반 : 1-1, 103, 11-2, 11-3, 11-5, 777, 9-3, 917 <br>
                                            &nbsp;&nbsp;③ 마을 : 1<br>
                                            &nbsp;&nbsp;④ 직행 : 3030, 7002, 7007-1<br>
                                            &nbsp;&nbsp;⑤ 공항 : 8842<br><br>
                                            <b>승용차</b> : 네비게이션에 <a href="https://map.naver.com/local/siteview.nhn?code=19063169" target="_blank" title="새창열림" style='font-size:16px'>정부과천청사</a>로 검색<br>
                                            </span>                           
                                        </th>										
                                        <td><img src="<c:url value='/images/egovframework/gcall/main/intro/map01.png'/>" class='img-responsive' alt="국민콜110 과천센터 오시는길 4호선 정부과천청사역 하차 (7번 또는 8번출구로 나와 150m 직진)"></td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                            <div class='col-xs-12 intro110_01'>
                            	※ 국민콜110은 온라인 상담만 가능합니다. 방문상담은 <a href="https://www.acrc.go.kr/menu.es?mid=a10204010000" target="_blank" title="새창열림">국민권익위원회 종합민원상담센터</a>를 이용해주시기 바랍니다.
                           	</div>
                        </div>
                    </div>
                </div>
            </main>

			<c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>