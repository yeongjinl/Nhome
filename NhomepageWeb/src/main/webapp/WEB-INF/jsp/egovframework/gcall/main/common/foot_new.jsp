<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Map"%>
<!-- 모바일 환경변수 불러와서 저장 -->
<c:set var="isMobile" value="<%=(Boolean)session.getAttribute(\"isMobile\")%>" />
<footer class="sec-footer">
	<div class='container'> 
		<div class="row ft-link">
				<div class='col-xs-12 col-md-9 padding-0'>		
					<div class='row footerMenu'>
									<div class='col-xs-12 col-md-3'>
										<h4 tabindex="1005" onmouseover="fn_mouseOver('1005','상담안내')" onmouseout="fn_mouseOut('1005')">상담안내</h4>
										<a tabindex="1006" onmouseover="fn_mouseOver('1006','상담이용안내')" onmouseout="fn_mouseOut('1006')" href="<c:url value='/consult/manual.do'/>">상담이용안내</a>
										<a tabindex="1007" onmouseover="fn_mouseOver('1007','채팅상담')" onmouseout="fn_mouseOut('1007')" href="<c:url value='/consult/chat.do'/>">채팅상담</a>
										<a tabindex="1008" onmouseover="fn_mouseOver('1008','문자상담')" onmouseout="fn_mouseOut('1008')" href="<c:url value='/consult/sms.do'/>">문자상담</a>
										<a tabindex="1009" onmouseover="fn_mouseOver('1009','수어상담')" onmouseout="fn_mouseOut('1009')" href="<c:url value='/consult/cam.do'/>">수어상담</a>
										<a tabindex="1010" onmouseover="fn_mouseOver('1010','갑질피해상담')" onmouseout="fn_mouseOut('1010')" href="<c:url value='/consult/affect.do'/>">갑질피해상담</a>
									</div>
									<div class='col-xs-12 col-md-3'>
										<h4 tabindex="1011" onmouseover="fn_mouseOver('1011','알림마당')" onmouseout="fn_mouseOut('1011')">알림마당</h4>
										<a tabindex="1012" onmouseover="fn_mouseOver('1012','공지사항')" onmouseout="fn_mouseOut('1012')" href="<c:url value='/board/notice.do'/>">공지사항</a>
										<a tabindex="1013" onmouseover="fn_mouseOver('1013','보도자료')" onmouseout="fn_mouseOut('1013')" href="<c:url value='/board/news.do'/>">보도자료</a>
										<a tabindex="1014" onmouseover="fn_mouseOver('1014','홍보자료')" onmouseout="fn_mouseOut('1014')" href="<c:url value='/board/promotion.do'/>">홍보자료</a>
									</div>
									<div class='col-xs-12 col-md-3'>
										<h4 tabindex="1015" onmouseover="fn_mouseOver('1015','자료마당')" onmouseout="fn_mouseOut('1015')">자료마당</h4>
										<a tabindex="1016" onmouseover="fn_mouseOver('1016','자주묻는 질문에프에이큐')" onmouseout="fn_mouseOut('1016')" href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a>
										<a tabindex="1017" onmouseover="fn_mouseOver('1017','상담사연')" onmouseout="fn_mouseOut('1017')" href="<c:url value='/data/story.do'/>">상담사연</a>
										<a tabindex="1018" onmouseover="fn_mouseOver('1018','법령정보')" onmouseout="fn_mouseOut('1018')" href="<c:url value='/data/law.do'/>">법령정보</a>
										
									</div>
									<div class='col-xs-12 col-md-3'>
										<h4 tabindex="1019" onmouseover="fn_mouseOver('1019','센터소개')" onmouseout="fn_mouseOut('1019')">센터소개</h4>
										<a tabindex="1020" onmouseover="fn_mouseOver('1020','국민콜110소개')" onmouseout="fn_mouseOut('1020')" href="<c:url value='/intro/center.do'/>">국민콜110소개</a>
										<a tabindex="1021" onmouseover="fn_mouseOver('1021','인사말')" onmouseout="fn_mouseOut('1021')" href="<c:url value='/intro/greetings.do'/>">인사말</a>
										<a tabindex="1022" onmouseover="fn_mouseOver('1022','연혁')" onmouseout="fn_mouseOut('1022')" href="<c:url value='/intro/history.do'/>">연혁</a>
										<a tabindex="1023" onmouseover="fn_mouseOver('1023','위치안내')" onmouseout="fn_mouseOut('1023')" href="<c:url value='/intro/location.do'/>">위치안내</a>
									</div>
					</div>
				</div><!-- col -->
				<div class='col-xs-12 col-md-3 padding-0' >
					<div class='ft-group' >
							<h4 tabindex="1024" onmouseover="fn_mouseOver('1024','110 정부민원안내콜센터')" onmouseout="fn_mouseOut('1024')">110 정부민원안내콜센터</h4>
							<c:choose>
								<c:when test="${isMobile eq 'true'}">
									<ul>
										<li><a style="font-size:1rem;" tabindex="1025" onmouseover="fn_mouseOver('1025','사이트맵')" onmouseout="fn_mouseOut('1025')" href="<c:url value='/sitemap.do'/>">SITEMAP</a></li>
										<li><a style="font-size:1rem;" tabindex="1026" onmouseover="fn_mouseOver('1026','컨택트 어스')" onmouseout="fn_mouseOut('1026')" href='mailto:anarki007@korea.kr'>CONTACT US</a></li>
										<li><a tabindex="1027" onmouseover="fn_mouseOver('1027','개인정보처리방침')" onmouseout="fn_mouseOut('1027')" href="<c:url value='/privacy.do'/>"><b style="font-size:1rem; color:#FFFF33;text-decoration:underline;">개인정보처리방침</b></a></li>
									</ul>
								</c:when>
								<c:otherwise>
									<ul style="width:150%;">
										<li><a style="font-size:1rem;" tabindex="1025" onmouseover="fn_mouseOver('1025','사이트맵')" onmouseout="fn_mouseOut('1025')" href="<c:url value='/sitemap.do'/>">SITEMAP</a></li>
										<li><a style="font-size:1rem;" tabindex="1026" onmouseover="fn_mouseOver('1026','컨택트 어스')" onmouseout="fn_mouseOut('1026')" href='mailto:anarki007@korea.kr'>CONTACT US</a></li>
										<li><a tabindex="1027" onmouseover="fn_mouseOver('1027','개인정보처리방침')" onmouseout="fn_mouseOut('1027')" href="<c:url value='/privacy.do'/>"><b style="font-size:1rem; color:#FFFF33;text-decoration:underline;">개인정보처리방침</b></a></li>
									</ul>
								</c:otherwise>
							</c:choose>
							
							<div class="family-site">
									<p tabindex="1028" onmouseover="fn_mouseOver('1028','기관콜센터')" onmouseout="fn_mouseOut('1028')">기관콜센터</p>
									<ul style="display: none;">
									 <c:forEach var="obj" items="${centerList}" varStatus="status">
											<li>
												<a href="${obj.CODE_ID}" target='_blank'>${obj.CODE_NAME}</a>
											</li>
									</c:forEach>
									</ul>
								</div> <!-- family-site -->
					</div><!-- ft-link -->
			  </div><!-- col -->

		</div><!-- row -->

		<div class="ft-info">
			<p tabindex="1030" onmouseover="fn_mouseOver('1030','주소 : (13809) 경기도 과천시 관문로 47, 청사2동 6층 (중앙동) 아이 대표전화 110 본 웹사이트의 이메일 주소를 무단수집하여서는 안되며, 이를 위반한 경우 정보통신망법에 의거 처벌될 수 있습니다')" onmouseout="fn_mouseOut('1030')">
			주소 : (13809) 경기도 과천시 관문로 47, 청사2동 6층 (중앙동)  <span>I</span> 대표전화 110<br>
			본 웹사이트의 이메일 주소를 무단수집하여서는 안되며, 이를 위반한 경우 정보통신망법에 의거 처벌될 수 있습니다.</p>
			<p tabindex="1031" onmouseover="fn_mouseOver('1031','카피라이트 2006-2022  국민콜110(정부민원안내) 올 라이트즈 리저브드')" onmouseout="fn_mouseOut('1031')" class="copy"> © Copyright 2006-2022  국민콜110(정부민원안내) All Rights Reserved.</p>
			 <!-- WA 인증마크 -->
		</div>
	</div>
</footer> 