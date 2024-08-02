<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="org.springframework.mobile.device.DeviceUtils" %>
<%@ page import="org.springframework.mobile.device.Device" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/main.css">
		<link rel="stylesheet" href="/plugin/bxslider/jquery.bxslider.css">
		
		<!-- js 라이브러리 -->
		<script src="/js/egovframework/gcall/main/jquery-3.4.1.min.js"></script>
		<script src="/js/egovframework/gcall/main/jquery-ui.min.js"></script>
		<script src="/js/egovframework/gcall/main/scriptN.js"></script>
		<script src="/plugin/bxslider/jquery.bxslider.1d.js"></script>
		<script type="text/javascript">
			var navUrl = "start";
		</script>
		<!-- bx slider 추가 -->
		<script>
		    $(document).ready(function(){
		      $('.slider').bxSlider({
				  auto: true, /*오토슬라이드*/
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

					if(target == "kakaotalk") window.location.href = "/consult/chat.html";
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
		<div id="skip_to_container">본문 바로가기</a></div>
		<div class='main'>
			
	    <!-- 탑메뉴 -->

	     <c:import url="./common/top_new.jsp"/>


		<div class="quick-menu on">
			<a id="top_btn"><i class='fas fa-arrow-up fa-fw'></i><span class='blind'>상단으로</span></a>
		</div>

		<main class='mainWrap' >
					
					<c:import url="./common/sideMenu.jsp"/>
					<!-- quick_wrap -->
						<div class="section" id="section0"><div class='container'>
								
								<div class='iconBoxWrap'>
																			
										<div class='row'>
											<div class='col-xs-12 col-md-12'>
													<h3 tabindex="24" onmouseover="fn_mouseOver('24','국번없이 110 무료')" onmouseout="fn_mouseOut('24')">국번없이 <span class="number">110 </span><span class='small'>(무료)</span></h3>
													<h4 tabindex="25" onmouseover="fn_mouseOver('25','국민의 소리를 소중히 듣겠습니다')" onmouseout="fn_mouseOut('25')">국민의 소리를 소중히 듣겠습니다.</h4>
													<p tabindex="26" onmouseover="fn_mouseOver('26','정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다')" onmouseout="fn_mouseOut('26')">정부민원안내콜센터(110)는 정부민원에 대한 전화상담,<br class='pc__itemView'/>카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.</p>
													<p tabindex="27" onmouseover="fn_mouseOver('27','365일 24시간 수어상담 평일 9시 ~ 18시')" onmouseout="fn_mouseOut('27')" class='blind'>365일 24시간 수어상담 평일 9시 ~ 18시</p>
											</div>
										</div><!-- row -->

										<ul class='row'>
											<li tabindex="28" onmouseover="fn_mouseOver('28','110 전화상담')" onmouseout="fn_mouseOut('28')" class='col-xs-6 col-md-4'><div class='inner'><a href="#none" onclick="call110Click(); return false;" ><span>110 전화상담</span></a></div></li>
											<li tabindex="29" onmouseover="fn_mouseOver('29','갑질피해상담')" onmouseout="fn_mouseOut('29')" class='col-xs-6 col-md-4'><div class='inner'><a href="<c:url value='/consult/affect.do'/>"><span>갑질피해상담</span></a></div></li>
											<li tabindex="30" onmouseover="fn_mouseOver('30','카카오톡상담')" onmouseout="fn_mouseOut('30')" class='col-xs-6 col-md-4'><div class='inner'><a href="<c:url value='/consult/chat.do'/>"><span>카카오톡상담</span></a></div></li>
											<li tabindex="31" onmouseover="fn_mouseOver('31','수어상담')" onmouseout="fn_mouseOut('31')" class='col-xs-6 col-md-4'><div class='inner'><a href="<c:url value='/consult/cam.do'/>"><span>수어상담</span></a></div></li>
											<li tabindex="32" onmouseover="fn_mouseOver('32','채팅상담')" onmouseout="fn_mouseOut('32')" class='col-xs-6 col-md-4'><div class='inner'><a href="<c:url value='/consult/chat.do'/>"><span>채팅상담</span></a></div></li>
											<li tabindex="33" onmouseover="fn_mouseOver('33','문자상담')" onmouseout="fn_mouseOut('33')" class='col-xs-6 col-md-4'><div class='inner'><a href="<c:url value='/consult/sms.do'/>"><span>문자상담</span></a></div></li>
										</ul><!-- row -->
								</div>

						</div></div><!-- section -->
						<div class="section" id="section1"><div class='container'>
									
									<h3 tabindex="34" onmouseover="fn_mouseOver('34','알림마당')" onmouseout="fn_mouseOut('34')">알림마당</h3>
									<p tabindex="35" onmouseover="fn_mouseOver('35','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('35')">국민의 행복을 함께 만들어 갑니다.</p>

									
										<div class='row boardBoxWrap'>
											<div class='col-xs-12 col-md-6'>
													<div class='whiteBoxWrap'>
													    <jsp:useBean id="now" class="java.util.Date"/>
														<fmt:parseNumber value="${now.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="nowDays"/>
														<div class='title'>
																<h4 tabindex="36" onmouseover="fn_mouseOver('36','공지사항')" onmouseout="fn_mouseOut('36')">공지사항</h4>	
																<div class='more'><a href="<c:url value='/board/notice.do'/>" title="공지사항 더보기"><i class='ti-plus'></i> <span class='blind'>더보기</span></a></div>
														</div>
														<ul class='bList'> 	
															<c:forEach var="obj" items="${noticeList}" varStatus="status" begin="0" end="4" step="1">
																<fmt:parseDate value="${obj.BOARD_REG_DATE}" pattern="yyyy-MM-dd" var="boardDate"/>
																<fmt:parseNumber value="${boardDate.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="boardRegDays"/>
																<li><span class='mo_T'>
																	<a tabindex="${boardRegDays}" onmouseover="fn_mouseOver('${obj.BOARD_NUM}37','${obj.BOARD_TITLE}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}37')" href="<c:url value='/board/noticeView.do?num=${obj.BOARD_NUM}'/>">${fn:escapeXml(obj.BOARD_TITLE)}</a>
																	</span> 
																	<c:choose>
																		<c:when test="${nowDays - boardRegDays - 1 <= 7}">
																			<span class="newIcon new" style="float: left"></span>
																		</c:when>
																		<c:otherwise>
																			<span class="newIcon" style="float: left"></span>
																		</c:otherwise>
																	</c:choose>
																	<div tabindex="${obj.BOARD_NUM}38" onmouseover="fn_mouseOver('${obj.BOARD_NUM}38','${obj.BOARD_REG_DATE}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}38')" class='date'>${fn:escapeXml(obj.BOARD_REG_DATE)}</div>
																</li>
																
															</c:forEach>

														</ul><!-- bList -->
													</div>
											</div>
											<div class='col-xs-12 col-md-6'>
													<div class='whiteBoxWrap'>
														<div class='title'>
																<h4 tabindex="39" onmouseover="fn_mouseOver('39','보도자료')" onmouseout="fn_mouseOut('39')">보도자료</h4>
																<div class='more'><a href="<c:url value='/board/news.do'/>" title="보도자료 더보기"><i class='ti-plus'></i> <span class='blind'>더보기</span></a></div>
														</div>
														<ul class='bList'> 	
													        <c:forEach var="obj" items="${newsList}" varStatus="status" begin="0" end="4" step="1"> 
																<fmt:parseDate value="${obj.BOARD_REG_DATE}" pattern="yyyy-MM-dd" var="boardDate2"/>
																<fmt:parseNumber value="${boardDate2.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="boardRegDays2"/>
																<li>
																	<span class='mo_T'><a tabindex="${obj.BOARD_NUM}40" onmouseover="fn_mouseOver('${obj.BOARD_NUM}40','${obj.BOARD_TITLE}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}40')" href="<c:url value='/board/newsView.do?num=${obj.BOARD_NUM}'/>">${fn:escapeXml(obj.BOARD_TITLE)}</a></span>
																	<c:choose>
																		<c:when test="${nowDays - boardRegDays2 - 1 <= 7}">
																			<span class="newIcon new" style="float: left"></span>
																		</c:when>
																		<c:otherwise>
																			<span class="newIcon" style="float: left"></span>
																		</c:otherwise>
																	</c:choose>
																	<div tabindex="${obj.BOARD_NUM}41" onmouseover="fn_mouseOver('${obj.BOARD_NUM}41','${obj.BOARD_REG_DATE}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}41')" class='date'>${fn:escapeXml(obj.BOARD_REG_DATE)}</div>
																</li>
															</c:forEach>
														</ul><!-- bList -->
													</div>
												
											</div>
										</div><!-- row -->

									

									<div class='row'>
										<div class='col-xs-12 col-md-12'>
												<div class='whiteBoxWrap snsBox'>
													<h4 tabindex="42" onmouseover="fn_mouseOver('42','국민콜 110 SNS')" onmouseout="fn_mouseOut('42')">국민콜 110 SNS</h4>
													<ul class='snsList'>        
														<li>
															<a tabindex="43" onmouseover="fn_mouseOver('43','상담챗봇')" onmouseout="fn_mouseOut('43')" href='#' onclick="fn_openChatbotPop();" title="새창 열림">
															<img src="/images/egovframework/gcall/main_new/snsIcon06.png" alt="국민비서 챗봇" class='img-responsive' loading='lazy'>
															</a>
														</li>
														<li>
															<a tabindex="44" onmouseover="fn_mouseOver('44','카카오톡')" onmouseout="fn_mouseOut('44')" href="<c:url value='/consult/chat.do'/>">
															<img src="/images/egovframework/gcall/main_new/snsIcon01.png" alt="카카오톡"  class='img-responsive' loading='lazy'>
															</a>
														</li>
														<li>
															<a tabindex="45" onmouseover="fn_mouseOver('45','페이스북')" onmouseout="fn_mouseOut('45')" href="http://facebook.com/110callcenter" target="_blank" title="새창열림">
															<img src="/images/egovframework/gcall/main_new/snsIcon02.png" alt="페이스북" class='img-responsive' loading='lazy'>
															</a>
														</li>
														<li>
															<a tabindex="46" onmouseover="fn_mouseOver('46','트위터')" onmouseout="fn_mouseOut('46')" href="https://twitter.com/110callcenter" target="_blank" title="새창열림">
																<img src="/images/egovframework/gcall/main_new/snsIcon03.png" alt="트위터"  class='img-responsive' loading='lazy'>
															</a>
														</li>
														<li>
															<a tabindex="47" onmouseover="fn_mouseOver('47','인스타그램')" onmouseout="fn_mouseOut('47')" href="https://instagram.com/110call" target="_blank" title="새창열림">
																<img src="/images/egovframework/gcall/main_new/snsIcon04.png" alt="인스타그램" class='img-responsive' loading='lazy'>
															</a>
														</li>
														<li>
															<a tabindex="48" onmouseover="fn_mouseOver('48','티스토리')" onmouseout="fn_mouseOut('48')" href="https://110callcenter.tistory.com" target="_blank" title="새창열림">
																<img src="/images/egovframework/gcall/main_new/snsIcon05.png" alt="티스토리" class='img-responsive' loading='lazy'>
															</a>
														</li>
													</ul>
												</div><!-- whiteBoxWrap -->
										</div>
									</div><!-- row -->

								


						</div></div><!-- section -->
						<div class="section" id="section2"><div class='container'>
									<!-- popupZone Slide 시작 -->
										<div class='mgb-30'>
											<div class='slider'>
													<c:forEach var="obj" items="${popupZoneList}" varStatus="status">
													<div>
														<a href='#' onclick="popupZoneLink('${obj.ALARM_LINK_URL}', '${obj.ALARM_TARGET}'); return false;" title="새창 열림">
															<img style="width:240px; height: 150px;" src="https://www.110.go.kr<c:url value='${obj.ALARM_REAL_PATH}'/>" class='img-responsive' alt="110 팝업존">
														</a>
													</div>
													</c:forEach>
													
												
											</div>
										</div>
									<!-- popupZone Slide 끝 -->

									<c:import url="./common/foot_top.jsp"/>
							</div>
						</div>
						<!-- section -->				
				<c:import url="./common/foot_new.jsp"/>
			</main>
		</div>
	</body>
</html>