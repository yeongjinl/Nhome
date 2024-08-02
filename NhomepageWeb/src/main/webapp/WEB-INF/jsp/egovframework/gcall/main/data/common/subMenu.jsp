<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class='topImage topImage3'>
	<div class='limitWrap'>
		<img src="<c:url value='/images/egovframework/gcall/main/data/topImg.png'/>" class='img-responsive' alt="자료마당 국민의 행복을 함께 만들어 갑니다.">

		<div class='topSubmenu col3 hidden-xs hidden-sm'>
			<div class="item ${lev2_menu eq 'faq' ? 'active' : ''}"><a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></div>
			<div class="item ${lev2_menu eq 'story' ? 'active' : ''}"><a href="<c:url value='/data/story.do'/>">상담사연</a></div>
			<div class="item ${lev2_menu eq 'law' ? 'active' : ''}"><a href="<c:url value='/data/law.do'/>">법령정보</a></div>
		</div>
					
		<div class="dropdown dropdownSubmenu visible-xs visible-sm">
  			<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class='btn'>
	    		<c:choose>
				    <c:when test="${lev2_menu eq 'faq'}">자주묻는 질문(FAQ)</c:when>
				    <c:when test="${lev2_menu eq 'story'}">상담사연</c:when>
				    <c:when test="${lev2_menu eq 'law'}">법령정보</c:when>
				    <c:otherwise></c:otherwise>
				</c:choose>
			    <span class="caret"></span>
		  	</button>
		  	<ul class="dropdown-menu" aria-labelledby="dLabel">
    			<li><a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></li>
				<li><a href="<c:url value='/data/story.do'/>">상담사연</a></li>
				<li><a href="<c:url value='/data/law.do'/>">법령정보</a></li>
	  		</ul>
		</div>
	</div>
</div>