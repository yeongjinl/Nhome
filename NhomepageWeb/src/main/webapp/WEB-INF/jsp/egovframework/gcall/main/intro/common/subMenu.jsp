<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class='topImage topImage4'>
	<div class='limitWrap'>
		<img src="<c:url value='/images/egovframework/gcall/main/intro/topImg.png'/>" class='img-responsive' alt="센터소개 국민의 행복을 함께 만들어 갑니다.">
		
		<div class='topSubmenu col4 hidden-xs hidden-sm'>
			<div class="item ${lev2_menu eq 'center' ? 'active' : ''}"><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></div>
			<div class="item ${lev2_menu eq 'greetings' ? 'active' : ''}"><a href="<c:url value='/intro/greetings.do'/>">인사말</a></div>
			<div class="item ${lev2_menu eq 'history' ? 'active' : ''}"><a href="<c:url value='/intro/history.do'/>">연혁</a></div>
			<div class="item ${lev2_menu eq 'location' ? 'active' : ''}"><a href="<c:url value='/intro/location.do'/>">위치안내</a></div>
		</div>
		
		<div class="dropdown dropdownSubmenu visible-xs visible-sm">
			<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class='btn'>
				<c:choose>
				    <c:when test="${lev2_menu eq 'center'}">국민콜110 소개</c:when>
				    <c:when test="${lev2_menu eq 'greetings'}">인사말</c:when>
				    <c:when test="${lev2_menu eq 'history'}">연혁</c:when>
				    <c:when test="${lev2_menu eq 'location'}">위치안내</c:when>
				    <c:otherwise></c:otherwise>
				</c:choose>
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" aria-labelledby="dLabel">
			  	<li><a href="<c:url value='/intro/center.do'/>">국민콜110 소개</a></li>
				<li><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>
				<li><a href="<c:url value='/intro/history.do'/>">연혁</a></li>
				<li><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>
			</ul>
		</div>
	</div>
</div>