<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="topArea ${lev1_menu eq 'index' ? '' : 'visible-xs visible-sm'}">
	<div class='limitWrap'>
		<div class='row'>
			<div class="col-xs-3 visible-xs ${lev1_menu eq 'index' ? '' : 'visible-sm'}"><button class='mobile_menu_btn' type='button' onclick='fnMobileMenuOnOff()'><i class='fa fa-bars'></i><span class='hidden_obj'>전체메뉴</span></button></div>
			<div class='col-xs-6 col-md-6'>				
				<a href="<c:url value='/start.do'/>"><img src="<c:url value='/images/egovframework/gcall/main/common/logo.png'/>" alt="국민콜 110 정부민원안내" class='img-responsive'></a>				
			</div>			
			<div class='col-xs-12 col-md-6 text-right top_quick hidden-xs hidden-sm'>
				<a href="<c:url value='/sitemap.do'/>">SITEMAP</a> | <a href='mailto:anarki007@korea.kr'>CONTACT US</a>
			</div>
			<c:if test="${lev1_menu eq 'index'}">
			<div class='col-xs-12 col-md-6 text-left'>
				<div style = 'font-size:17px'><br><br>정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.</div>
			</div>
			</c:if>
		</div>	
	</div>
</header>

<nav class='topMenuArea'>
	<div class='limitWrap'>
		<div class='row'>
			<div class='col-md-2'>
				<c:if test="${lev1_menu ne 'index'}">					
					<a href="<c:url value='/start.do'/>"><img src="<c:url value='/images/egovframework/gcall/main/common/logo.png'/>" alt="국민콜 110 정부민원안내" class='logo hidden-xs hidden-sm'></a>
				</c:if>				
			</div>
			<div class='col-md-8'>
				<ul class='topMenu'>
					<li>
                        <a href="<c:url value='/consult/manual.do'/>" class="${lev1_menu eq 'consult' ? 'active' : ''}">상담안내</a>
                        <div class='submenu' id='submenu1'>
                            <div class='wrap'>
                                <a href="<c:url value='/consult/manual.do'/>">상담이용안내</a>
                                <a href="<c:url value='/consult/chat.do'/>">채팅상담</a>
                                <a href="<c:url value='/consult/sms.do'/>">문자상담</a>
                                <a href="<c:url value='/consult/cam.do'/>">수어상담</a>
                                <%-- <a href="<c:url value='/consult/reserve.do'/>">예약상담</a> --%>
                                <a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a>
                            </div>
                        </div>
                    </li>
					<li>
                        <a href="<c:url value='/board/notice.do'/>" class="${lev1_menu eq 'board' ? 'active' : ''}">알림마당</a>
                        <div class='submenu' id='submenu2'>
                            <div class='wrap'>
                                <a href="<c:url value='/board/notice.do'/>">공지사항</a>
                                <a href="<c:url value='/board/news.do'/>">보도자료</a>
                                <a href="<c:url value='/board/promotion.do'/>">홍보자료</a>
                            </div>
                        </div>
                    </li>
					<li>
                        <a href="<c:url value='/data/faq.do'/>" class="${lev1_menu eq 'data' ? 'active' : ''}">자료마당</a>
                        <div class='submenu' id='submenu3'>
                            <div class='wrap'>
                                <a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a>
                                <a href="<c:url value='/data/story.do'/>">상담사연</a>
                                <a href="<c:url value='/data/law.do'/>">법령정보</a>
                            </div>
                        </div>
                    </li>
					<li>
                        <a href="<c:url value='/intro/center.do'/>" class="${lev1_menu eq 'intro' ? 'active' : ''}">센터소개</a>
                        <div class='submenu' id='submenu4'>
                            <div class='wrap'>
                                <a href="<c:url value='/intro/center.do'/>">국민콜110소개</a>
                                <a href="<c:url value='/intro/greetings.do'/>">인사말</a>
                                <a href="<c:url value='/intro/history.do'/>">연혁</a>
                                <a href="<c:url value='/intro/location.do'/>">위치안내</a>
                            </div>
                        </div>
                    </li>
				</ul>
			</div>
			<div class='col-md-2 text-right hidden-xs hidden-sm'></div>
		</div>
	</div>
</nav>

<!-- 모바일용 메뉴 -->
<div class='topMenu_m visible-xs'>
	<ul>
		<li class='text-right'><button class='closeBtn' type='button' onclick='fnMobileMenuOnOff()'><i class='fa fa-times'></i> 닫기</button></li>
		<li class='text-center mb50'><a href="<c:url value='/start.do'/>"><img src="<c:url value='/images/egovframework/gcall/main/common/logo.png'/>" alt="국민콜 110 정부민원안내" class="img-responsive"></a></li>
		
		<li><div class='menu1'>상담안내 <i class='fa fa-chevron-down'></i></div>
			<!-- 서브메뉴 자동 처리 -->
		</li>
		<li><div class='menu1'>알림마당 <i class='fa fa-chevron-down'></i></div>
			<!-- 서브메뉴 자동 처리 -->
		</li>
		<li><div class='menu1'>자료마당 <i class='fa fa-chevron-down'></i></div>
			<!-- 서브메뉴 자동 처리 -->
		</li>
		<li><div class='menu1'>센터소개 <i class='fa fa-chevron-down'></i></div>
			<!-- 서브메뉴 자동 처리 -->
		</li>
	</ul>
</div>
<!-- 모바일용 메뉴 끝 -->
