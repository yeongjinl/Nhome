<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    
                        <div class='mainTitle'>자주묻는질문(FAQ)</div>
                        
                        <table class='table table-bordered boardView'>
                            <caption class='blind'>자주묻는질문(FAQ) 상세정보</caption>
                            <thead></thead>
                            <tbody>
                                <tr>
                                    <th>작성일</th>
                                    <td>${faqDetail.REG_DATE}</td>

                                    <th>조회수</th>
                                    <td>${faqDetail.VIEW_CNT}</td>
                                </tr>

                                <c:forEach var="obj" items="${faqFileDetail}" varStatus="status">
                                    <tr>
                                        <th>첨부파일 ${status.count}</th>
                                        <c:if test="${obj.REG_DATE ge '20191203'}">
                                            <td class='filedown' colspan="3">
                                                <a href='javascript:void(0);' onclick="location.href='<c:url value='/fileDown.do?type=contact&num=${obj.SEQ}'/>'">${obj.ORIGINAL_FILE_NAME}</a>
                                            </td>
                                        </c:if>
                                        <c:if test="${obj.REG_DATE lt '20191203'}">
                                            <td class='filedown' colspan="3">
                                                <a href='javascript:void(0);' onclick="alert('19년 12월 03일 이전 데이터는 받을 수 없습니다.')">${obj.ORIGINAL_FILE_NAME}</a>
                                            </td>
                                        </c:if>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <th class='ttl'>제목</th>
                                    <td colspan="3" class='ttl'>${faqDetail.TITLE}</td>
                                    
                                </tr>
                                
                                <tr>
                                    <td colspan="4" class='cont'>
                                        □ 질문내용<br>
                                        ${faqDetail.QUST_CNTN}
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td colspan="4" class='cont'>
                                        □ 답변내용<br>
                                        ${faqDetail.CONTENT}
                                    </td>
                                </tr>
                                
                                
                                <c:if test="${faqNext != null}">
                                    <tr>
                                        <th>다음글 <i class='fa fa-chevron-up'></i></th>
                                        <td colspan="3" class='prevnext'>
                                            <a href="<c:url value='/data/faqView.do?num=${faqNext.DB_SEQ}&curPage=${curPage}&scType=${scType}&scText=${scText}'/>">${faqNext.TITLE}</a>
                                        </td>
                                    </tr>
                                </c:if>
                                <c:if test="${faqPrev != null}">
                                    <tr>
                                        <th>이전글 <i class='fa fa-chevron-down'></i></th>
                                        <td colspan="3" class='prevnext'>
                                            <a href="<c:url value='/data/faqView.do?num=${faqPrev.DB_SEQ}&curPage=${curPage}&scType=${scType}&scText=${scText}'/>">${faqPrev.TITLE}</a>
                                        </td>
                                    </tr>
                                </c:if>
                            </tbody>
                            <tfoot></tfoot>
                        </table>
                        
                        <div class='text-center boardBtnWrap'>
                            <button type='button' class='btn' onclick="location.href='<c:url value='/data/faq.do?curPage=${curPage}&scType=${scType}&scText=${scText}'/>'">목록</button>
                        </div>
                        
                    </div>
                </div>
            </main>

			<c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>