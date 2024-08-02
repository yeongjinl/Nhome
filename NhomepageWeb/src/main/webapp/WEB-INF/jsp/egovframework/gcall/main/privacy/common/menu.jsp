<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class='mainTitle'>
	국민콜110(정부민원안내) 개인정보 처리방침
	<div class="dropdown dropdownSubmenu privacySelect">
		<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class='btn'>
			<c:choose>
			    <c:when test="${lev2_menu eq ''}">개정내역</c:when>			    
			    <c:when test="${lev2_menu eq 'first'}">제정 ~ 2016.03.31 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20160401'}">2016.04.01 ~ 2016.06.12 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20160613'}">2016.06.13 ~ 2016.08.21 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20160822'}">2016.08.22 ~ 2016.09.29 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20160930'}">2016.09.30 ~ 2017.04.24 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20170424'}">2017.04.24 ~ 2018.01.28 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20180128'}">2018.01.28 ~ 2018.06.30 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20180701'}">2018.07.01 ~ 2019.03.31 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20190401'}">2019.04.01 ~ 2019.06.09 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20190610'}">2019.06.10 ~ 2019.07.28 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20191001'}">2019.10.01 ~ 2020.04.19 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20200420'}">2020.04.20 ~ 2021.01.31 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20210201'}">2021.02.01 ~ 2021.02.18 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20210219'}">2021.02.19 ~ 2021.09.05 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20210906'}">2021.09.06 ~ 2022.01.06 적용지침</c:when>
			    <c:when test="${lev2_menu eq '20220107'}">2022.01.07 ~ 2022.03.29 적용지침</c:when>
			    <c:when test="${lev2_menu eq 'current'}">현행 적용지침</c:when>
			    <c:otherwise>개정내역</c:otherwise>
			</c:choose>
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dLabel">			
			<li><a href="<c:url value='/privacy.do?sd=first'/>">제정 ~ 2016.03.31 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20160401'/>">2016.04.01 ~ 2016.06.12 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20160613'/>">2016.06.13 ~ 2016.08.21 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20160822'/>">2016.08.22 ~ 2016.09.29 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20160930'/>">2016.09.30 ~ 2017.04.24 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20170424'/>">2017.04.24 ~ 2018.01.28 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20180128'/>">2018.01.28 ~ 2018.06.30 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20180701'/>">2018.07.01 ~ 2019.03.31 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20190401'/>">2019.04.01 ~ 2019.06.09 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20190610'/>">2019.06.10 ~ 2019.07.28 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20190729'/>">2019.07.29 ~ 2019.09.30 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20191001'/>">2019.10.01 ~ 2020.04.19 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20200420'/>">2020.04.20 ~ 2021.01.31 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20210201'/>">2021.02.01 ~ 2021.02.18 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20210219'/>">2021.02.19 ~ 2021.09.05 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20210906'/>">2021.09.06 ~ 2022.01.06 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=20220107'/>">2022.01.07 ~ 2022.03.29 적용지침</a></li>
			<li><a href="<c:url value='/privacy.do?sd=current'/>">현행 적용지침</a></li>
		</ul>
	</div>
</div>