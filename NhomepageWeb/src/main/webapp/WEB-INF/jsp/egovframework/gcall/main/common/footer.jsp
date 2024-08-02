<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer>
    <div class='partArea'>
        <div class='limitWrap'>
            <div class='row'>
                <div class='col-xs-6 col-md-3'><a href="http://www.acrc.go.kr/acrc/index.do" target="_blank" title="새창열림"><img src="<c:url value='/images/egovframework/gcall/main/common/part_banner01.png'/>" alt="국민권익위원회" class='img-responsive'></a></div>
                <div class='col-xs-6 col-md-3'><a href="http://counseling.go.kr" target="_blank" title="새창열림"><img src="<c:url value='/images/egovframework/gcall/main/common/part_banner03.png'/>" alt="국민권익위원회정보합동민원센터"  class='img-responsive'></a></div>
                <div class='col-xs-6 col-md-3'><a href="http://www.epeople.go.kr" target="_blank" title="새창열림"><img src="<c:url value='/images/egovframework/gcall/main/common/part_banner02.png'/>" alt="국민신문고"  class='img-responsive'></a></div>
                <div class='col-xs-6 col-md-3'><a href="https://www.safetyreport.go.kr/api?apiKey=11401009S55CUYZZ7MLB0A17V4Z" target="_blank" title="새창열림"><img src="<c:url value='/images/egovframework/gcall/main/common/part_banner04.png'/>" alt="안전신문고"  class='img-responsive'></a></div>
            </div>
        </div>
    </div>

    <div class='footerArea'>
        <!-- PC용 footer -->
        <div class='limitWrap hidden-xs hidden-sm'>
            <div class='col-xs-12 col-md-4 footerLogo'>
                <img src="<c:url value='/images/egovframework/gcall/main/common/logo_footer.png'/>" alt="국민콜 110 정부민원안내"  class='img-responsive'>
                <hr>
                <h1>110 정부민원안내콜센터</h1><Br>
		                주소 | (13809) 경기도 과천시 관문로 47, 청사2동 6층 (중앙동)<Br>
		                대표전화 110<Br>
		                본 웹사이트의 이메일 주소를 무단수집하여서는 안되며, 이를 위반한 경우 정보통신망법에 의거 처벌될 수 있습니다.
                <br><br>
                <a href="<c:url value='/sitemap.do'/>">SITEMAP</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href='mailto:anarki007@korea.kr'>CONTACT US</a>
                <br>
                <a href="<c:url value='/privacy.do'/>"><b>개인정보처리방침</b></a>
                <!-- WA 인증마크 -->
				<br>
				<a title="새창" href="http://www.wa.or.kr/board/list.asp?BoardID=0006" target="_blank"><img class="wa" alt="(사)한국장애인단체총연합회 한국웹접근성인증평가원 웹 접근성 우수사이트 인증마크(WA인증마크)" src="<c:url value='/images/egovframework/gcall/main/wa.png'/>" style='width:80px;margin-top:20px;'></a>
            </div>
            <div class='col-xs-12 col-md-8 footerMenu'>
                <div class='col-md-3'>
                    <h1>상담안내</h1>
                    <a href="<c:url value='/consult/manual.do'/>">상담이용안내</a>
                    <a href="<c:url value='/consult/chat.do'/>">채팅상담</a>
                    <a href="<c:url value='/consult/sms.do'/>">문자상담</a>
                    <a href="<c:url value='/consult/cam.do'/>">수어상담</a>
                    <%-- <a href="<c:url value='/consult/reserve.do'/>">예약상담</a> --%>
                    <a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a>
                </div>
                <div class='col-md-3'>
                    <h1>알림마당</h1>
                    <a href="<c:url value='/board/notice.do'/>">공지사항</a>
                    <a href="<c:url value='/board/news.do'/>">보도자료</a>
                    <a href="<c:url value='/board/promotion.do'/>">홍보자료</a>
                </div>
                <div class='col-md-3'>
                    <h1>자료마당</h1>
                    <a href="<c:url value='/data/faq.do'/>">자주묻는 질문(FAQ)</a>
                    <a href="<c:url value='/data/story.do'/>">상담사연</a>
                    <a href="<c:url value='/data/law.do'/>">법령정보</a>
                    
                </div>
                <div class='col-md-3'>
                    <h1>센터소개</h1>
                    <a href="<c:url value='/intro/center.do'/>">국민콜110소개</a>
                    <a href="<c:url value='/intro/greetings.do'/>">인사말</a>
                    <a href="<c:url value='/intro/history.do'/>">연혁</a>
                    <a href="<c:url value='/intro/location.do'/>">위치안내</a>
                </div>
                
                <div class='col-xs-12 text-right'>
                    <label for='centerList'>기관콜센터</label>
                    <select id='centerList' title="연결사이트">
                        <option value="" style="color: white;">기관콜센터</option>
                        <c:forEach var="obj" items="${centerList}" varStatus="status">
                            <option value="${obj.CODE_ID}" style="color: white;">${obj.CODE_NAME}</option>
                        </c:forEach>
                    </select>
                    <button class='footerBtn' type='button' onclick="window.open(document.getElementById('centerList').value)" title="새창 열림">이동</button>
                </div>
            </div>
            <div class='col-xs-12 text-center mt50 mb30 copyright'>© Copyright 2006-2021  국민콜110(정부민원안내) All Rights Reserved.</div>
        </div>
        
        <!-- 모바일용 footer -->
        <div class='limitWrap visible-xs visible-sm footer_mobile'>
            <div class='col-xs-12 text-center linkWrap'>
                <a href="<c:url value='/sitemap.do'/>">SITEMAP</a> | <a href='mailto:anarki007@korea.kr'>CONTACT US</a> | <a href="<c:url value='/privacy.do'/>"><b>개인정보처리방침</b></a>
            </div>
            
            <div class='col-xs-12 text-center copyright'>
                <b>110 정부민원안내콜센터</b>
            </div>            
           	<div class='col-xs-12 col-md-4 copyright'>
				주소 | (13809) 경기도 과천시 관문로 47, 청사2동 6층 (중앙동)<br> 
				대표전화 110<br>
				본 웹사이트의 이메일 주소를 무단수집하여서는 안되며, 이를 위반한 경우<br>
				정보통신망법에 의거 처벌될 수 있습니다.<br>
            </div>                
               <br>
               <div class='col-xs-12 text-center copyright'>
               <!-- WA 인증마크 -->
			<a title="새창" href="http://www.wa.or.kr/board/list.asp?BoardID=0006" target="_blank"><img class="wa" alt="(사)한국장애인단체총연합회 한국웹접근성인증평가원 웹 접근성 우수사이트 인증마크(WA인증마크)" src="<c:url value='/images/egovframework/gcall/main/wa.png'/>" style='width:80px;'></a>
			<br><br>
               © Copyright 2006-2021  국민콜110(정부민원안내) All Rights Reserved.
            </div>
            <div class='col-xs-12 text-center'>
                <div class='input-group'>
                    <div class='input-group-addon'>
                        <label for='centerList_m' class='centerList_m'>기관콜 센터</label>
                    </div>
                    <select class='form-control' id='centerList_m' title="연결사이트">
                        <option value="" style="color: white;">기관콜 센터</option>
                        <c:forEach var="obj" items="${centerList}" varStatus="status">
                            <option value="${obj.CODE_ID}" style="color: white;">${obj.CODE_NAME}</option>
                        </c:forEach>
                    </select>
                    <div class='input-group-btn'>
					     <button class='footerBtn btn' type='button' onclick="window.open(document.getElementById('centerList_m').value)" title="새창 열림">이동</button>
					</div>
                </div>
            </div>
        </div>
    </div>
</footer>