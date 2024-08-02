<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class='topImage topImage1'>
	<div class='limitWrap'>
		<img src="<c:url value='/images/egovframework/gcall/main/consult/topImg.png'/>" class='img-responsive' alt="상담안내 국민의 행복을 함께 만들어 갑니다.">
					
		<div class='topSubmenu col5 hidden-xs hidden-sm'>
			<div class="item ${lev2_menu eq 'manual' ? 'active' : ''}"><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></div>
			<div class="item ${lev2_menu eq 'chat' ? 'active' : ''}"><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></div>
			<div class="item ${lev2_menu eq 'sms' ? 'active' : ''}"><a href="<c:url value='/consult/sms.do'/>">문자상담</a></div>
			<div class="item ${lev2_menu eq 'cam' ? 'active' : ''}"><a href="<c:url value='/consult/cam.do'/>">수어상담</a></div>
			<%-- <div class="item ${lev2_menu eq 'reserve' ? 'active' : ''}"><a href="<c:url value='/consult/reserve.do'/>">예약상담</a></div> --%>
			<div class="item ${lev2_menu eq 'affect' ? 'active' : ''}"><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></div>
		</div>
					
		<div class="dropdown dropdownSubmenu visible-xs visible-sm">
	  		<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class='btn'>
	    		<c:choose>
				    <c:when test="${lev2_menu eq 'manual'}">상담이용안내</c:when>
				    <c:when test="${lev2_menu eq 'chat'}">채팅상담</c:when>
				    <c:when test="${lev2_menu eq 'sms'}">문자상담</c:when>
				    <c:when test="${lev2_menu eq 'cam'}">수어상담</c:when>
				    <%-- <c:when test="${lev2_menu eq 'reserve'}">예약상담</c:when> --%>
				    <c:when test="${lev2_menu eq 'affect'}">갑질피해상담</c:when>
				    <c:otherwise></c:otherwise>
				</c:choose>
			    <span class="caret"></span>
		  	</button>
		  	
			<ul class="dropdown-menu" aria-labelledby="dLabel">
				<li><a href="<c:url value='/consult/manual.do'/>" class='active'>상담이용안내</a></li>
				<li><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
				<li><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
				<li><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
				<%-- <li><a href="<c:url value='/consult/reserve.do'/>">예약상담</a></li> --%>
				<li><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
			</ul>
		</div>
	</div>
</div>