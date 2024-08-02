<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="org.springframework.mobile.device.DeviceUtils" %>
<%@ page import="org.springframework.mobile.device.Device" %>
<%
	Device device = DeviceUtils.getCurrentDevice(request);
	String isMobile = String.valueOf(device.isMobile() || device.isTablet());
	pageContext.setAttribute("isMobile", isMobile);
%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		<!-- 네이버 검색 수집용 -->
		<meta name = "description" content="국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.">
		<!-- favicon-->
		<link rel = "shortcut icon" href = "#">
				
		<title>정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/bxslider/jquery.bxslider.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		
		<c:choose>
			<c:when test="${isMobile eq 'true'}">
				<script src="<c:url value='/plugin/bxslider/jquery.bxslider.12.js'/>"></script>
			</c:when>
			<c:otherwise>
				<script src="<c:url value='/plugin/bxslider/jquery.bxslider.1d.js'/>"></script>
			</c:otherwise>
		</c:choose>
		
		<style>
			.snsBox2 > img {
				cursor: pointer
			}
			
			.boardbox > .table > tbody > tr > td {
				text-align: right !important;
			}
		</style>
		
		<!-- bx slider 추가 -->
		<script>
		    $(document).ready(function(){
		      $('.slider').bxSlider({
		    	  maxSlides:6,	/* 최대 보여지는 배너 수 */
		    	  minSlides:2,  /* 최소 보여지는 배너 수 */
		    	  slideWidth:240, /* 배너 이미지 크기 */
		    	  moveSlides:1, /* 슬라이드시 한번에 이동하는 개수 */
		    	  slideMargin:10, /* 슬라이드 아이템간 여백 */
		    	  pager:false, /* 하단 페이징 */
		    	  controls:true, /* 좌우 이동 버튼 처리 */
		      });
		    });
		</script>
		<!-- bx slider 추가 끝 -->
		
		<script>
			$(function() {
				
				var isTouch = !!("ontouchstart" in window) || window.navigator.msMaxTouchPoints > 0;
				//if(isTouch) slider.viewport.on('touchstart MSPointerDown pointerdown', onTouchStart);
				
				$(".snsBox2 > img").on("click", function() {
					let target = $(this).data("loc");

					if(target == "kakaotalk") window.location.href = "<c:url value='/consult/chat.do'/>";
					else window.open(target, "_blank");
				});
				
				<c:forEach var="obj" items="${popupIdList}" varStatus="status">
					if(getCookieInfo("ntc_popup_" + "${obj.ALARM_ID}") != "Y") {
						openPopup("popup_" + "${obj.ALARM_ID}", "<c:url value='/popup.do?popupid='/>" + "${obj.ALARM_ID}", "${obj.ALARM_POSITION}");
					}
				</c:forEach>
			});
			
			function call110Click() {
				if(navigator.platform && "win16|win32|win64|mac|macintel".indexOf(navigator.platform.toLowerCase()) >= 0) alert("국번없이 110으로 전화해주세요.");
				else window.location.href = "tel:110";
			}
			
			function openPopup(id, url, position) {
				var w = 100;
				var h = 100;
				var cw = screen.availWidth;
				var ch = screen.availHeight;
				var ml = (cw - w) / 2;
				var mt = (ch - h) / 2;
				
				var top = mt;
				var left = ml;

				if(position != null && position != "") {
					var positionArr = position.split(",");

					top = positionArr[0];
					left = positionArr[1];
				}
				
				var option = "titlebar=0, location=0, scrollbars=0, top=" + top + ", left=" + left + ", width=550, height=200";
				var popObj = window.open(url, id, option);
				
				return popObj;
			}
			
			function popupZoneLink(url, target) {
				if(url == "NULL" || url == "N" || url == "") return false;
				
				window.open(url, target);
			}
			
			function fn_openChatbotPop() {
			    var _oPopup = window.open("", "chatbot_popup", "width=10, height=10");
			    _oPopup.location.href = "https://chatbot.ips.go.kr/chatbotPop.ndo?bnrId=aKjplsjoeU3ZofF#none";
			}
		</script>
	</head>
	
	<body>
		<div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='main'>
			
			<!-- 탑메뉴 -->
			<c:import url="./common/top.jsp"/>
			
			<div class='mainImage'>
				<div class='limitWrap'>
					<img src="<c:url value='/images/egovframework/gcall/main/main01.png'/>" class='img-responsive' alt='국민의 소리를 소중히 듣겠습니다. 국번없이 110 365일 24시간 무료상담 수화상담은 평일 9시~18시'>
				</div>
            </div>
            
            <main>
                <div class='contentArea'>
                    <div class='limitWrap'>
                        <div class='serviceText'></div>                        
                        <div class='row boxIconWrap'>
                            <div class='col-xs-6 col-md-4'>
                                <a href='#' onclick="call110Click(); return false;" class='boxIcon boxIcon1'  id='contentArea'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon01.png'/>" alt="110 전화하기" class='img-responsive'>
                                    <span>110 전화상담</span>
                                </a>
                            </div>
                            
                            <div class='col-xs-6 col-md-4'>
                                <a href="<c:url value='/consult/affect.do'/>" class='boxIcon boxIcon2'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon02.png'/>" alt="갑질피해상담" class='img-responsive'>
                                    <span>갑질피해상담</span>
                                </a>
                            </div>
                            
                            <div class='col-xs-6 col-md-4'>
                                <a href="<c:url value='/consult/chat.do'/>" class='boxIcon boxIcon8'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon08.png'/>"  alt="카카오톡상담"  class='img-responsive'>
                                    <span>카카오톡상담</span>
                                </a>
                            </div>
                            
                            <div class='col-xs-6 col-md-4'>
                                <a href="<c:url value='/consult/cam.do'/>" class='boxIcon boxIcon3'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon03.png'/>"  alt="수어상담" class='img-responsive'>
                                    <span>수어상담</span>
                                </a>
                            </div>
                            
                            <div class='col-xs-6 col-md-4'>
                                <a href="<c:url value='/consult/chat.do'/>" class='boxIcon boxIcon4'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon04.png'/>"  alt="채팅상담" class='img-responsive'>
                                    <span>채팅상담</span>
                                </a>
                            </div>
                            
                            <div class='col-xs-6 col-md-4' data-loc="<c:url value='/consult/sms.do'/>">
                                <a href="<c:url value='/consult/sms.do'/>" class='boxIcon boxIcon5'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon05.png'/>" alt="문자상담"  class='img-responsive'>
                                    <span>문자상담</span>
                                </a>
                            </div>
                        </div>
                        
                        <!-- popupZone Slide 시작 -->
                        <div class="row">
	                        <div class='col-xs-12 col-md-10 col-md-offset-1'>
								<div class='slider'>
									<c:forEach var="obj" items="${popupZoneList}" varStatus="status">
		                                <div>
		                                    <a href='#' onclick="popupZoneLink('${obj.ALARM_LINK_URL}', '${obj.ALARM_TARGET}'); return false;" title="새창 열림"><img style="width:240px; height: 150px;" src="https://www.110.go.kr<c:url value='${obj.ALARM_REAL_PATH}'/>" class='img-responsive' alt="110 팝업존 이미지"></a>
		                                </div>
		                            </c:forEach>
								</div>
							</div>
                        </div>
                        <!-- popupZone Slide 끝 -->
                        
                        <div class='row'>
                            <div class='col-xs-12 snsBoxWrap'>
                            	<div class='snsBox2'>
                                    <a href='#' onclick="fn_openChatbotPop();" title="새창 열림">
                                        <img src="<c:url value='/images/egovframework/gcall/main/snsIcon06.png'/>" alt="국민비서 챗봇" class='img-responsive'>
                                    </a>
                                </div>
                                <div class='snsBox2'>
                                    <a href="<c:url value='/consult/chat.do'/>">
                                        <img src="<c:url value='/images/egovframework/gcall/main/snsIcon01.png'/>" alt="카카오톡"  class='img-responsive'>
                                    </a>
                                </div>
                                <div class='snsBox2'>
                                    <a href="http://facebook.com/110callcenter" target="_blank" title="새창열림">
                                        <img src="<c:url value='/images/egovframework/gcall/main/snsIcon02.png'/>" alt="페이스북" class='img-responsive'>
                                    </a>
                                </div>
                                <div class='snsBox2'>
                                    <a href="https://twitter.com/110callcenter" target="_blank" title="새창열림">
                                        <img src="<c:url value='/images/egovframework/gcall/main/snsIcon03.png'/>" alt="트위터"  class='img-responsive'>
                                    </a>
                                </div>
                                <div class='snsBox2'>
                                    <a href="https://instagram.com/110call" target="_blank" title="새창열림">
                                        <img src="<c:url value='/images/egovframework/gcall/main/snsIcon04.png'/>" alt="인스타그램" class='img-responsive'>
                                    </a>
                                </div>
                                <div class='snsBox2'>
                                    <a href="https://110callcenter.tistory.com" target="_blank" title="새창열림">
                                        <img src="<c:url value='/images/egovframework/gcall/main/snsIcon05.png'/>" alt="티스토리" class='img-responsive'>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
                <div class='boardArea'>
                    <div class='limitWrap'>
                        <div class='row'>
                            <jsp:useBean id="now" class="java.util.Date"/>
                            <fmt:parseNumber value="${now.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="nowDays"/>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='boardbox'>
                                    <h1>공지사항
                                        <a href="<c:url value='/board/notice.do'/>">더보기</a>
                                    </h1>
                                    
                                    <table class='table'>
                                        <caption class='blind'>최근 공지사항 목록</caption>
                                        <thead><tr><th scope="col" colspan="2" class='blind'></th></tr></thead>
                                        <tbody>
                                            <c:forEach var="obj" items="${noticeList}" varStatus="status" begin="0" end="4" step="1">
                                                <tr>
                                                    <th>
                                                        <fmt:parseDate value="${obj.BOARD_REG_DATE}" pattern="yyyy-MM-dd" var="boardDate1"/>
                                                        <fmt:parseNumber value="${boardDate1.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="boardRegDays1"/>
                                                        
                                                        <c:choose>
                                                            <c:when test="${nowDays - boardRegDays1 - 1 <= 7}">
                                                                <span class="newIcon new" style="float: left"></span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="newIcon" style="float: left"></span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <a href="<c:url value='/board/noticeView.do?num=${obj.BOARD_NUM}'/>">${obj.BOARD_TITLE}</a>
                                                    </th>
                                                    <td>${obj.BOARD_REG_DATE}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot></tfoot>
                                    </table>
                                </div>
                            </div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='boardbox'>
                                    <h1>보도자료
                                        <a href="<c:url value='/board/news.do'/>">더보기</a>
                                    </h1>
                                    
                                    <table class='table'>
                                        <caption class='blind'>최근 보도자료 목록</caption>
                                        <thead><tr><th scope="col" colspan="2" class='blind'></th></tr></thead>
                                        <tbody>
                                            <c:forEach var="obj" items="${newsList}" varStatus="status" begin="0" end="4" step="1">
                                                <tr>
                                                    <th>
                                                        <fmt:parseDate value="${obj.BOARD_REG_DATE}" pattern="yyyy-MM-dd" var="boardDate2"/>
                                                        <fmt:parseNumber value="${boardDate2.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="boardRegDays2"/>
                                                        
                                                        <c:choose>
                                                            <c:when test="${nowDays - boardRegDays2 - 1 <= 7}">
                                                                <span class="newIcon new" style="float: left"></span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="newIcon" style="float: left"></span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <a href="<c:url value='/board/newsView.do?num=${obj.BOARD_NUM}'/>">${obj.BOARD_TITLE}</a>
                                                    </th>
                                                    <td>${obj.BOARD_REG_DATE}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot></tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
			<c:import url="./common/footer.jsp"/>
		</div>
	</body>
</html>