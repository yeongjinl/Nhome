<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<audio controls="controls" id="ad_con01">
        <source="" type="audio/wav">
    </audio>
	<!-- sec-header -->
	<header class="sec-header on"> 
		<div class="hnb">
			<div class='container' tabindex="01" onmouseover="fn_mouseOver('01','이 누리집은 대한민국 공식 전자정부 누리집입니다')" onmouseout="fn_mouseOut('01')"><p><img src="/images/egovframework/gcall/main_new/common/nuri.png" alt="전자정부" /> 이 누리집은 대한민국 공식 전자정부 누리집입니다.</p></div>
		</div>
		<div class='container'> 
		<h1>
			<a tabindex="02" onmouseover="fn_mouseOver('02','국민권익위원회가 운영하는 국민콜 110')" onmouseout="fn_mouseOut('02')" href="<c:url value='/start.do'/>" alt="국민콜 110 정부민원안내" class='logo hidden-xs hidden-sm' >국민콜 110 정부민원안내</a>		
		</h1>
		<nav class="nav"> 
			<ul>  
			<li>
				
				<h2><a  tabindex="03" onmouseover="fn_mouseOver('03','상담안내')" onmouseout="fn_mouseOut('03')" href="<c:url value='/consult/manual.do'/>" class="${lev1_menu eq 'consult' ? 'active' : ''}">상담안내</a></h2>
				<ul class="depth-1">
					<li tabindex="04" onmouseover="fn_mouseOver('04','상담이용안내')" onmouseout="fn_mouseOut('04')"><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>     
					<li tabindex="05" onmouseover="fn_mouseOver('05','채팅상담')" onmouseout="fn_mouseOut('05')"><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>               
					<li tabindex="06" onmouseover="fn_mouseOver('06','문자상담')" onmouseout="fn_mouseOut('06')"><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>                 
					<li tabindex="07" onmouseover="fn_mouseOver('07','수어상담')" onmouseout="fn_mouseOut('07')"><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>                 
					<li tabindex="08" onmouseover="fn_mouseOver('08','갑질피해상담')" onmouseout="fn_mouseOut('08')"><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>         
				</ul> 
			</li> 
			<li ><h2><a  tabindex="09" onmouseover="fn_mouseOver('09','알림마당')" onmouseout="fn_mouseOut('09')" href="<c:url value='/board/notice.do'/>" class="${lev1_menu eq 'board' ? 'active' : ''}">알림마당</a></h2>
				<ul class="depth-2">
					<li tabindex="10" onmouseover="fn_mouseOver('10','공지사항')" onmouseout="fn_mouseOut('10')"><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>           
					<li tabindex="11" onmouseover="fn_mouseOver('11','보도자료')" onmouseout="fn_mouseOut('11')"><a href="<c:url value='/board/news.do'/>">보도자료</a></li>            
					<li tabindex="12" onmouseover="fn_mouseOver('12','홍보자료')" onmouseout="fn_mouseOut('12')"><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></li>     
				</ul> 
			</li> 
			<li ><h2><a  tabindex="13" onmouseover="fn_mouseOver('13','자료마당')" onmouseout="fn_mouseOut('13')" href="<c:url value='/data/faq.do'/>" class="${lev1_menu eq 'data' ? 'active' : ''}">자료마당</a></h2>
				<ul class="depth-3">
					<li tabindex="14" onmouseover="fn_mouseOver('14','자주묻는 질문 에프에이큐')" onmouseout="fn_mouseOut('14')"><a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></li>  
					<li tabindex="15" onmouseover="fn_mouseOver('15','상담사연')" onmouseout="fn_mouseOut('15')"><a href="<c:url value='/data/story.do'/>">상담사연</a></li>              
					<li tabindex="16" onmouseover="fn_mouseOver('16','법령정보')" onmouseout="fn_mouseOut('16')"><a href="<c:url value='/data/law.do'/>">법령정보</a></li>                 
				</ul> 
			</li> 
			<li ><h2><a tabindex="17" onmouseover="fn_mouseOver('17','센터소개')" onmouseout="fn_mouseOut('17')" href="<c:url value='/intro/center.do'/>" class="${lev1_menu eq 'intro' ? 'active' : ''}">센터소개</a></h2>
				<ul class="depth-4">
					<li tabindex="18" onmouseover="fn_mouseOver('18','국민콜110소개')" onmouseout="fn_mouseOut('18')"><a href="<c:url value='/intro/center.do'/>">국민콜110소개</a></li> 
					<li tabindex="19" onmouseover="fn_mouseOver('19','인사말')" onmouseout="fn_mouseOut('19')"><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>        
					<li tabindex="20" onmouseover="fn_mouseOver('20','연혁')" onmouseout="fn_mouseOut('20')"><a href="<c:url value='/intro/history.do'/>">연혁</a></li>              
					<li tabindex="21" onmouseover="fn_mouseOver('21','위치안내')" onmouseout="fn_mouseOut('21')"><a href="<c:url value='/intro/location.do'/>">위치안내</a></li> 
				</ul> 
			</li> 
			</ul>
		</nav><!--nav-->
		<div class="lang">
			<a tabindex="22" onmouseover="fn_mouseOver('22','사이트맵')" onmouseout="fn_mouseOut('22')" href="<c:url value='/sitemap.do'/>">SITEMAP</a>
			<a tabindex="23" onmouseover="fn_mouseOver('23','컨택 어스')" onmouseout="fn_mouseOut('23')" href='mailto:anarki007@korea.kr'>CONTACT US</a>
		</div>
		<div class="btn-category" onclick="sitemapToggle()">
			<span class="bar"></span>
			<span class="bar"></span>
			<span class="bar"></span>
		</div>  
	</div><!-- container -->
	</header>
	<!-- sec-header -->
	
	<div id="sitemap">
		<ul>  
			<li><h2><a href="#">상담안내</a></h2>
				<ul class="depth-1">
					<li><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>     
					<li><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>               
					<li><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>                 
					<li><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>                 
					<li><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>   
				</ul> 
			</li> 
			<li><h2>알림마당</h2>
				<ul class="depth-2">
					<li><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>           
					<li><a href="<c:url value='/board/news.do'/>">보도자료</a></li>            
					<li><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></li>     
				</ul> 
			</li> 
			<li><h2>자료마당</h2>
				<ul class="depth-3">
					<li><a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a></li>  
					<li><a href="<c:url value='/data/story.do'/>">상담사연</a></li>              
					<li><a href="<c:url value='/data/law.do'/>">법령정보</a></li>      
				</ul> 
			</li> 
			<li><h2>센터소개</h2>
				<ul class="depth-4">
					<li><a href="<c:url value='/intro/center.do'/>">국민콜110소개</a></li> 
					<li><a href="<c:url value='/intro/greetings.do'/>">인사말</a></li>        
					<li><a href="<c:url value='/intro/history.do'/>">연혁</a></li>              
					<li><a href="<c:url value='/intro/location.do'/>">위치안내</a></li>   
				</ul> 
			</li> 

		</ul><!--nav-->
	</div><!-- sitemap -->
	<div class="quick-menu on">
		<a id="top_btn"><i class='fas fa-arrow-up fa-fw'></i><span class='blind'>상단으로</span></a>
	</div>
	
	<style>
		.sitemap ul li h2 a:visited {
			color: red;
		}
	</style>