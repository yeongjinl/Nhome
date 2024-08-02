<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>자주묻는 질문(FAQ) | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		
		<script>
			$(function() {
				
				// 검색 타입값 셋팅
				$("#searchTypeSelect").val("${scType}");
				
				// 검색버튼 클릭시
				$("#searchBtn").on("click", function() {
					
					// 값 체크
					// if(!checkValue()) return false;
					
					window.location.href = "<c:url value='/data/faq.do'/>" + "?curPage=1&scType=" + $("#searchTypeSelect").val() + "&scText=" + $("#searchInput").val();
				});
			});
			
			function checkValue() {
				
				// 입력창 입력 여부
				if($("#searchInput").val() == "") {
					alert("검색어를 입력해 주세요.");
					return false;
				}
				
				return true;
			}
		</script>
    </head>
    
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top.jsp"/>
			
			<!-- 탑 서브메뉴 -->
            <c:import url="./common/subMenu.jsp"/>
            
			<main>
                <div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                        <div class='mainTitle'>
                            자주묻는 질문(FAQ)
                            <div class='boardSearch'>
                                <div class='input-group'>
                                    <label class='input-group-addon hidden-xs' for='searchTypeSelect'>검색항목</label>
                                    <span class='input-group-addon'><select class='form-control' id="searchTypeSelect">
                                        <option value="">전체</option>
                                        <option value="04">상담사례</option>
                                        <option value="03">FAQ</option>
                                    </select></span>
                                    <label class='input-group-addon hidden-xs' for='searchInput'>검색어</label>
                                    <input type='text' class='form-control' id="searchInput" maxlength="60" value="${scText}">
                                    <span class='input-group-addon'>
                                        <button class='btn' id="searchBtn">검색</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <table class='table table-bordered boardList'>
                            <caption class='blind'>자주묻는 질문 목록</caption>
                            <thead>
                                <tr>
                                    <th class='num'>번호</th>
                                    <th class='ttl'>제목</th>
                                    <th>구분</th>
                                    <th>파일</th>
                                    <th class='wdate'>작성일</th>
                                    <th>조회수</th>
                                </tr>
                            </thead>
                            <tbody>
                                <jsp:useBean id="now" class="java.util.Date"/>
                                <fmt:parseNumber value="${now.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="nowDays"/>
                                <c:set var="listIndex" value="0"/>
                                <c:forEach var="obj" items="${faqList}" varStatus="status">
                                    <tr>
                                        <td class='num'>${paginationDTO.totalCount - paginationDTO.pageSize * (paginationDTO.curPage - 1) - listIndex}</td>
                                        <c:set var="listIndex" value="${listIndex + 1}"/>
                                        <td class='ttl'>
                                            <fmt:parseDate value="${obj.REG_DATE}" pattern="yyyy-MM-dd" var="boardDate"/>
                                            <fmt:parseNumber value="${boardDate.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="boardRegDays"/>
                                            
                                            <c:choose>
                                                <c:when test="${nowDays - boardRegDays - 1 <= 7}">
                                                    <span class="newIcon new"></span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="newIcon"></span>
                                                </c:otherwise>
                                            </c:choose>
                                            <a href="<c:url value='/data/faqView.do?num=${obj.DB_SEQ}&curPage=${paginationDTO.curPage}&scType=${scType}&scText=${scText}'/>">${obj.TITLE}</a>
                                        </td>
                                        <td>
                                        	<c:choose>
                                                <c:when test="${obj.CONTACT_DB_GUBUN == '04'}">상담사례</c:when>
                                                <c:when test="${obj.CONTACT_DB_GUBUN == '03'}">FAQ</c:when>
                                                <c:otherwise></c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <c:if test="${obj.FILE_YN eq 'Y'}">
                                                <i class='fa fa-download'></i>
                                            </c:if>
                                        </td>
                                        <td>${obj.REG_DATE}</td>
                                        <td>${obj.VIEW_CNT}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot></tfoot>
                        </table>
                        
                        <c:if test="${faqList.size() > 0}">
                            <div class='pagination'>
                                <c:if test="${paginationDTO.curRange ne 1 }">
                                    <a href="<c:url value='/data/faq.do?curPage=1&scType=${scType}&scText=${scText}'/>" class='move'>처음</a>
                                </c:if>
                                
                                <c:if test="${paginationDTO.curPage ne 1}">
                                <a href="<c:url value='/data/faq.do?curPage=${paginationDTO.prevPage}&scType=${scType}&scText=${scText}'/>" class='move'>이전</a>
                                </c:if>
                                
                                <c:forEach var="pageNum" begin="${paginationDTO.startPage}" end="${paginationDTO.endPage}">
                                    <c:choose>
                                        <c:when test="${pageNum eq  paginationDTO.curPage}">
                                            <a href="<c:url value='/data/faq.do?curPage=${pageNum}&scType=${scType}&scText=${scText}'/>" class='active' title="선택됨">${pageNum}</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="<c:url value='/data/faq.do?curPage=${pageNum}&scType=${scType}&scText=${scText}'/>">${pageNum}</a>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                
                                <c:if test="${paginationDTO.curPage ne paginationDTO.totalPage && paginationDTO.totalPage > 0}">
                                    <a href="<c:url value='/data/faq.do?curPage=${paginationDTO.nextPage}&scType=${scType}&scText=${scText}'/>" class='move'>다음</a>
                                </c:if>
                                
                                <c:if test="${paginationDTO.curRange ne paginationDTO.totalRange && paginationDTO.totalRange > 0}">
                                    <a href="<c:url value='/data/faq.do?curPage=${paginationDTO.totalPage}&scType=${scType}&scText=${scText}'/>" class='move'>마지막</a>
                                </c:if>
                            </div>
                        </c:if>
                    </div>
                </div>
            </main>
            
			<c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>