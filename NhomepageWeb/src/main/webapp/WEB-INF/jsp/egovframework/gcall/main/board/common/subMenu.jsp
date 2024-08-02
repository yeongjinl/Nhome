<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class='topImage topImage2'>
	<div class='limitWrap'>
		<img src="<c:url value='/images/egovframework/gcall/main/board/topImg.png'/>" alt="알림마당 국민의 행복을 함께 만들어 갑니다." class='img-responsive'>

		<div class='topSubmenu col3 hidden-xs hidden-sm'>
			<div class="item ${lev2_menu eq 'notice' ? 'active' : ''}"><a href="<c:url value='/board/notice.do'/>">공지사항</a></div>
			<div class="item ${lev2_menu eq 'news' ? 'active' : ''}"><a href="<c:url value='/board/news.do'/>">보도자료</a></div>
			<div class="item ${lev2_menu eq 'promotion' ? 'active' : ''}"><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></div>
		</div>
		
		<div class="dropdown dropdownSubmenu visible-xs visible-sm">
			<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class='btn'>
				<c:choose>
				    <c:when test="${lev2_menu eq 'notice'}">공지사항</c:when>
				    <c:when test="${lev2_menu eq 'news'}">보도자료</c:when>
				    <c:when test="${lev2_menu eq 'promotion'}">홍보자료</c:when>
				    <c:otherwise></c:otherwise>
				</c:choose>
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" aria-labelledby="dLabel">
				<li><a href="<c:url value='/board/notice.do'/>" class='active'>공지사항</a></li>
				<li><a href="<c:url value='/board/news.do'/>">보도자료</a></li>
				<li><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></li>
			</ul>
		</div>
	</div>
</div>