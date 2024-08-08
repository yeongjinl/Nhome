<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="egovframework.gcall.util.CmmUtil"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="sessionUI" value="<%=(Map<String, Object>)session.getAttribute(\"ss_user_info\")%>" />
<c:set var="authUI" value="<%=(Map<String, Object>)session.getAttribute(\"ss_user_auth\")%>" />
<c:set var="sUserName" value =""/>
<c:set var="sUserId" value =""/>
<c:set var="sUserEmail" value =""/>
<c:set var="sUserType" value =""/>
<c:set var="sUserGrade" value =""/>
<c:set var="sUserPost" value =""/>
<c:set var="aUserType" value =""/>
<c:set var="CONSULT_AUTH" value =""/>
<c:set var="BODO_AUTH" value =""/>
<c:set var="NOTICE_AUTH" value =""/>
<c:set var="PROMOTION_AUTH" value =""/>
<c:set var="FREEBOARD_AUTH" value =""/>
<c:set var="CONTEST_AUTH" value =""/>
<c:set var="FAQ_AUTH" value =""/>
<c:set var="STORY110_AUTH" value =""/>
<c:set var="POPUP_AUTH" value =""/>
<c:set var="POPUPZONE_AUTH" value =""/>
<c:set var="BANNER_AUTH" value =""/>
<c:set var="MOBILEVISITOR_AUTH" value =""/>
<c:set var="INTELIGENCE_AUTH" value =""/>
<c:set var="CODE_AUTH" value =""/>

<c:choose>
 	<c:when test="${not empty sessionUI}">
        <c:set var="sUserName">${empty fn:escapeXml(sessionUI.USER_NAME) ? '' : fn:escapeXml(sessionUI.USER_NAME) }</c:set>
        <c:set var="sUserId">${empty fn:escapeXml(sessionUI.USER_ID) ? '' : fn:escapeXml(sessionUI.USER_ID) }</c:set>
        <c:set var="sUserEmail">${empty fn:escapeXml(sessionUI.EMAIL) ? '' : fn:escapeXml(sessionUI.EMAIL) }</c:set>
        <c:set var="sUserType">${empty fn:escapeXml(sessionUI.USER_TYPE) ? '' : fn:escapeXml(sessionUI.USER_TYPE) }</c:set>
        <c:set var="sUserGrade">${empty fn:escapeXml(sessionUI.USER_GRADE) ? '' : fn:escapeXml(sessionUI.USER_GRADE) }</c:set>
        <c:set var="sUserPost">${empty fn:escapeXml(sessionUI.POST_CD) ? '' : fn:escapeXml(sessionUI.POST_CD) }</c:set>
        <c:set var="aUserType">${empty fn:escapeXml(authUI.USER_TYPE) ? '' : fn:escapeXml(authUI.USER_TYPE) }</c:set>
        <c:set var="CONSULT_AUTH">${empty fn:escapeXml(authUI.CONSULT_AUTH) ? '' : fn:escapeXml(authUI.CONSULT_AUTH) }</c:set>
        <c:set var="BODO_AUTH">${empty fn:escapeXml(authUI.BODO_AUTH) ? '' : fn:escapeXml(authUI.BODO_AUTH) }</c:set>
        <c:set var="NOTICE_AUTH">${empty fn:escapeXml(authUI.NOTICE_AUTH) ? '' : fn:escapeXml(authUI.NOTICE_AUTH) }</c:set>
        <c:set var="PROMOTION_AUTH">${empty fn:escapeXml(authUI.PROMOTION_AUTH) ? '' : fn:escapeXml(authUI.PROMOTION_AUTH) }</c:set>
        <c:set var="PHOTO_AUTH">${empty fn:escapeXml(authUI.PHOTO_AUTH) ? '' : fn:escapeXml(authUI.PHOTO_AUTH) }</c:set>
        <c:set var="FREEBOARD_AUTH">${empty fn:escapeXml(authUI.FREEBOARD_AUTH) ? '' : fn:escapeXml(authUI.FREEBOARD_AUTH) }</c:set>
        <c:set var="CONTEST_AUTH">${empty fn:escapeXml(authUI.CONTEST_AUTH) ? '' : fn:escapeXml(authUI.CONTEST_AUTH) }</c:set>
        <c:set var="FAQ_AUTH">${empty fn:escapeXml(authUI.FAQ_AUTH) ? '' : fn:escapeXml(authUI.FAQ_AUTH) }</c:set>
        <c:set var="STORY110_AUTH">${empty fn:escapeXml(authUI.STORY110_AUTH) ? '' : fn:escapeXml(authUI.STORY110_AUTH) }</c:set>
        <c:set var="POPUP_AUTH">${empty fn:escapeXml(authUI.POPUP_AUTH) ? '' : fn:escapeXml(authUI.POPUP_AUTH) }</c:set>
        <c:set var="POPUPZONE_AUTH">${empty fn:escapeXml(authUI.POPUPZONE_AUTH) ? '' : fn:escapeXml(authUI.POPUPZONE_AUTH) }</c:set>
        <c:set var="BANNER_AUTH">${empty fn:escapeXml(authUI.BANNER_AUTH) ? '' : fn:escapeXml(authUI.BANNER_AUTH) }</c:set>
        <c:set var="MOBILEVISITOR_AUTH">${empty fn:escapeXml(authUI.MOBILEVISITOR_AUTH) ? '' : fn:escapeXml(authUI.MOBILEVISITOR_AUTH) }</c:set>
        <c:set var="INTELIGENCE_AUTH">${empty fn:escapeXml(authUI.INTELIGENCE_AUTH) ? '' : fn:escapeXml(authUI.INTELIGENCE_AUTH) }</c:set>
        <c:set var="CODE_AUTH">${empty fn:escapeXml(authUI.CODE_AUTH) ? '' : fn:escapeXml(authUI.CODE_AUTH) }</c:set>
        
        <c:set var="leftSideBoardBarTitle" value="게시물관리" />
		<c:set var="leftSideNoticeBarTitle" value="공지관리" />
		<c:set var="leftSideOtherBarTitle" value="기타관리" />
		<c:set var="leftSideSiteBarTitle" value="사이트설정" />
		<c:set var="leftDataSiteBarTitle" value="데이터관리" />
		<c:set var="leftSideSubBarTitle" value="서브 관리자" />
		<c:set var="sessionAdminTopMenuTitle" value="" />

		<script>
	        var leftSideBoardBarRender = "<li class='ttl'>${fn:escapeXml(leftSideBoardBarTitle)}</li>";
	        var leftSideNoticeBarRender = "<li class='ttl'>${fn:escapeXml(leftSideNoticeBarTitle)}</li>";
	        var leftSideOtherBarRender = "<li class='ttl'>${fn:escapeXml(leftSideOtherBarTitle)}</li>";
	        var leftSideSiteBarRender = "<li class='ttl'>${fn:escapeXml(leftSideSiteBarTitle)}</li>";
	        var leftDataSiteBarRender = "<li class='ttl'>${fn:escapeXml(leftDataSiteBarTitle)}</li>";
	        var leftSideSubBarRender = "<li class='ttl'>${fn:escapeXml(leftSideSubBarTitle)}</li>";
	        var sessionAdminTopMenuRender = "${fn:escapeXml(sessionAdminTopMenuTitle)}";
	
			//게시물 관리 메뉴
			if(("${sUserType}"=="0")||("${CONSULT_AUTH}"=="1")||("${BODO_AUTH}"=="1")||("${NOTICE_AUTH}"=="1")||("${PROMOTION_AUTH}"=="1")||("${PHOTO_AUTH}"=="1")||("${PHOTO_AUTH}"=="1")||("${FREEBOARD_AUTH}"=="1")||("${CONTEST_AUTH}"=="1")||("${FAQ_AUTH}"=="1")||("${STORY110_AUTH}"=="1")){
				if("${CONSULT_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/consult/list.do'>상담사연관리</a></li>";
				}
				if("${BODO_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/bodo/list.do'>보도자료관리</a></li>";
				}
				if("${NOTICE_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/notice/list.do'>공지사항관리</a></li>";
				}
				if("${PROMOTION_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/promotion/list.do'>홍보자료관리</a></li>";
				}
				if("${PHOTO_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/photo/list.do'>포토갤러리관리</a></li>";
				}
				if("${FREEBOARD_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/freeBoard/list.do'>자유게시판관리</a></li>";
				}
				if("${CONTEST_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/contest/list.do'>공모전관리</a></li>";
				}
				if("${FAQ_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/faq/list.do'>자주묻는질문관리</a></li>";
				}
				if("${STORY110_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideBoardBarRender+="<li><a href='/story110/list.do'>110이야기 관리</a></li>";
				}
				sessionAdminTopMenuRender+="<li><a href='/top/topBoard.do'>게시물관리</a></li>";
			}
			//공지 관리 메뉴
			if(("${sUserType}"=="0")||("${POPUP_AUTH}"=="1")||("${POPUPZONE_AUTH}"=="1")||("${BANNER_AUTH}"=="1")){
				if("${POPUP_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideNoticeBarRender+="<li><a href='/popup/popup.do'>팝업관리</a></li>";
				}
				if("${POPUPZONE_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideNoticeBarRender+="<li><a href='/popup/zone.do'>팝업존관리</a></li>";
				}
				if("${BANNER_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideNoticeBarRender+="<li><a href='/popup/banner.do'>배너관리</a></li>";
				}
				if("${POPUP_AUTH}"=="1"){
					sessionAdminTopMenuRender+="<li><a href='/popup/popup.do'>공지관리</a></li>";
				} else if("${POPUPZONE_AUTH}"=="1"){
					sessionAdminTopMenuRender+="<li><a href='/popup/zone.do'>공지관리</a></li>";
				} else if("${BANNER_AUTH}"=="1"){
					sessionAdminTopMenuRender+="<li><a href='/popup/banner.do'>공지관리</a></li>";
				}
			}
			
			//기타 메뉴
			if(("${sUserType}"=="0")||("${MOBILEVISITOR_AUTH}"=="1")){
				if("${MOBILEVISITOR_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideOtherBarRender+="<li><a href='/other/moVisitStat.do'>모바일 방문자통계</a></li>";
					leftSideOtherBarRender+="<li><a href='/other/counsel.do'>상담시간 관리</a></li>";
				}
					sessionAdminTopMenuRender+="<li><a href='/other/moVisitStat.do'>기타관리</a></li>";
			}
			//데이터 관리 메뉴
			if(("${sUserType}"=="0")||("${INTELIGENCE_AUTH}"=="1")){
				if("${INTELIGENCE_AUTH}"=="1"||("${sUserType}"=="0")){
					leftDataSiteBarRender+="<li><a href='/severdata/reg.do'>지식DB등록/수정</a></li>";
					leftDataSiteBarRender+="<li><a href='/severdata/list.do'>지식DB 승인(QA)</a></li>";
				}
					sessionAdminTopMenuRender+="<li><a href='/severdata/list.do'>데이터 관리</a></li>";
			}
			//사이트설정 메뉴
			if(("${sUserType}"=="0")||("${CODE_AUTH}"=="1")){
				if("${CODE_AUTH}"=="1"||("${sUserType}"=="0")){
					leftSideSiteBarRender+="<li><a href='/site/codebook.do'>코드관리</a></li>";
				}
				leftSideSiteBarRender+="<li><a href='/consult/speak.do'>수어상담테스트</a></li>";
					sessionAdminTopMenuRender+="<li><a href='/site/codebook.do'>사이트설정</a></li>";
			}
			if("${sUserType}"=="0"){
				leftSideSubBarRender+="<li><a href='/subManage/list.do'>서브 관리자 설정</a></li>";
				sessionAdminTopMenuRender+="<li><a href='/subManage/list.do'>서브 관리자</a></li>";
			}
			$(function(){
				$("#sessionAdmTopMenu").html(sessionAdminTopMenuRender);
				$("#leftMenu").html(leftSideBoardBarRender);
				$("#noticeLeftMenu").html(leftSideNoticeBarRender);
				$("#otherLeftMenu").html(leftSideOtherBarRender);
				$("#siteLeftMenu").html(leftSideSiteBarRender);
				$("#dataLeftMenu").html(leftDataSiteBarRender);
				$("#subLeftMenu").html(leftSideSubBarRender);
			})
			</script>
        
	</c:when>
	<c:otherwise>
		<script>
			alert("로그인 정보가 없습니다.");
			location.href = "/g110/login.do"
		</script>	
	</c:otherwise>
</c:choose>


	

<caption style="display:none;'">게시판 상단부</caption>
<thead>
	<tr>
		<th scope="col" class='logoArea' rowspan=2>
			<!-- Logo Area --> 
			<a href='/g110/adm.do'><img src='<%=request.getContextPath()%>/images/egovframework/gcall/sjsimage/common/logo.png' alt="110로고">
				<span>
					<b>홈페이지관리시스템</b>
				</span>
			</a>
			<!--/ Logo Area -->
		</th>
		<th scope="col" class='topQuick'>
			<!-- TopQuickMenu Area -->
			<span class='text'>ID:${sUserId}</span>
			<span class='text'>이름:${sUserName}</span>
			<a href='${pageContext.request.contextPath}/g110/logout.do' class='logoutBtn'>로그아웃</a> <!--/ TopQuickMenu Area -->
		</th>
	</tr>
	<tr>
		<th scope="col" class='topMenuArea'>
			<!-- TopMenu -->
			<div class='topMenu'>
				<ul id="sessionAdmTopMenu">
				</ul>
			</div> <!--/ TopMenu -->

		</th>
	</tr>
</thead>
