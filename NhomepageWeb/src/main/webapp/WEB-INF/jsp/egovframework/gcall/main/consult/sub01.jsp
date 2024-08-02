<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>상담이용안내 | 정부민원안내콜센터</title>
		
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
                    
                        <div class='mainTitle'>상담분야</div>
                        
                        <div class='servicePart '>
                            <div class='col-xs-12 col-md-6 item'>
                                <div class='ttl'>행정&middot;교육&middot;문화</div>
                                <div class='cont'>지방세정, 교육정책, 문화, 통계일반, 주민등록, 민방위재난 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>복지&middot;노동</div>
                                <div class='cont'>사회복지, 의정, 근로기준, 고용보험, 직업안정 및 훈련, 식품 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>환경산업&middot;정보통신</div>
                                <div class='cont'>환경오염신고, 특허, 도시가스 우편, 전기 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>농림&middot;해양</div>
                                <div class='cont'>농업/축산/산림행정, 해양수산, 수협, 해양경찰 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>재정&middot;세무</div>
                                <div class='cont'>공정거래, 금융, 보험, 통관, 국세/탈세제보, 근로장려금, 연말정산간소화 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>건설&middot;교통</div>
                                <div class='cont'>주택일반, 도시계획, 도로행정, 국토계획, 교통 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>외무통일&middot;민형사&middot;국방</div>
                                <div class='cont'>외무/통일, 수사, 치안, 법률구조 등</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>비긴급 신고전화</div>
                                <div class='cont'>실종아동, 청소년, 노인학대, 여성긴급 등 20개의 비긴급 신고전화</div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='ttl'>갑질피해상담</div>
                                <div class='cont'>공공분야의 민간에 대한 갑질, 내부의 갑질</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class='contentArea'>
                    <div class='limitWrap'>
                        <div class='mainTitle'>상담이용안내
                        <small class='right'>365일 24시간 (수어상담은 평일, 설·추석 09:00~18:00)</small>
                        </div>
                        
                        <div class='subContentWrap useGuideTableWrap'>
                            <table class='table useGuideTable'>
                                <caption class='blind'>110상담이용안내 목록</caption>
                                <thead></thead>
                                <tbody>
                                    <tr>
                                        <th>전화상담</th>
                                        <td class='icon icon1'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon01.png'/>" alt="전화상담"></td>
                                        <td class='cont'>
                                        	① 국번없이 110번 (해외:82-2-6196-9110)<br>
                                        	② 씨토크 영상전화 상담 : 070-7451-9012,3,5 (수어상담 운영시간에만 가능)<br>
                                        	<span class='font-blue'>※ 씨토크회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됨<br><br></span>
                                       	</td>
                                    </tr>
                                    <tr>
                                        <th>문자상담</th>
                                        <td class='icon icon2'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon05.png'/>" alt="문자상담"></td>
                                        <td class='cont'>
                                       		① 문자메세지 작성 후 '110'으로 문자전송<br>
                                       		② 110홈페이지 → 문자상담 → 상담내용 및 연락처 입력 → 상담신청하기<br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>채팅상담 <br>
                                        	카카오톡상담</th>
                                        <td class='icon icon3'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon04.png'/>" alt="채팅상담"></td>
                                        <td class='cont'>
                                        	① 110홈페이지 → 채팅상담 → 전화번호 입력 → 채팅상담 신청하기<br>
                                        	② 110홈페이지 → 채팅상담 → 카카오톡상담 신청하기<br>
                                        	<span class='font-blue'>※ "국민톡110" 채널 추가 시, 더 편리하게 상담가능 <a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림">(채널 바로가기)</a></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>갑질피해상담</th>
                                        <td class='icon icon4'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon02.png'/>" alt="갑질피해상담"></td>
                                        <td class='cont'>110홈페이지 → 갑질피해상담 → 상담신청하기<br>
                                        <span class='font-blue'>※ 카카오톡(채널:국민콜110)으로도 갑질피해상담 가능<a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림">(채널 바로가기)</a></span></td>
                                    </tr>
                                    <tr>
                                        <th>수어상담 <br>
                                        	기관수어통역</th>
                                        <td class='icon icon5'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon03.png'/>" alt="수어상담"></td>
                                        <td class='cont'>
											상담시간 : 평일, 설·추석 09:00~18:00<br>
											※ 평일 18:00 이후 및 주말·공휴일에는 <a href="https://www.relaycall.or.kr/" target="_blank" title="새창열림">107 손말이음센터</a>를 이용해주시기 바랍니다.<br><br>
                                            <div style = 'font-size:20px'>[상담채널별 수어상담 이용방법]</div>
                                            ① 모바일 : 110홈페이지 접속 → 수어상담 → 민원인의 핸드폰번호 기입 후 상담신청 → 상담신청 <br>
                                            	<span class='font-blue'>※ 크롬앱 또는 사파리앱 이용, 데이터 이용료 발생 <br></span>
                                            ② PC : 크롬을 통해 110홈페이지 접속  → 수어상담 → 민원인의 핸드폰번호 기입 후 상담신청 → 상담신청 <br>
                                            	<span class='font-blue'>※ 화상카메라 연결 필수<br></span>
                                            ③ 씨토크 영상전화기 : 070-7451-9012,3,5 로 전화<br>
                                            	<span class='font-blue'>※ 씨토크회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됨<br><br></span>
                                            <div style = 'font-size:20px'>[기관수어통역 이용방법]</div>
                                            PC : 크롬을 통해 110홈페이지 접속 → 수어상담 → <b>"기관담당자 연락처 기입"</b> 후 상담신청 <br>
                                            	<span class='font-blue'>※ 화상카메라 및 헤드셋 연결 필수 <br><br></span>                                            	
                                           	※기관수어통역이란?<br>
                                           	&nbsp;청각장애인이 공공건물 및 공중이용시설을 이용하려는 경우, 시설주는 한국수어 통역 등의 편의를 제공해 민원처리를 진행합니다. 국민콜110은 기관담당자, 청각장애인, 110수어상담사 간의 3자통역 서비스를 제공합니다.<br>
                                        </td>
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