<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">

		<!-- 검색 수집용 -->
		<meta name='keywords' content='정부민원안내콜센터, 국민콜110, 국민권익위원회, 카카오톡상담, 채팅상담, 전화상담, 수어상담, 갑질피해상담'>
		<meta name='description' content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.' />
		<meta name='copyright' content='© Copyright 2006-2022 국민콜110(정부민원안내) All Rights Reserved.' />
		<meta name='robots' content='index,follow' />
		<meta name='viewport' content='width=480, maximum-scale=1.0, user-scalable=no' />
		<meta property='og:url'                content='https://www.110.go.kr/' />
		<meta property='og:type'               content='website' />
		<meta property='og:title'              content='정부민원안내콜센터' />
		<meta property='og:description'        content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.' />
		<meta property='og:image'              content='/images/egovframework/gcall/main_new/kakao.jpg' />
		<meta name='twitter:card' content='summary'>
		<meta name='twitter:title' content='정부민원안내콜센터'>
		<meta name='twitter:url' content='https://www.110.go.kr/'>
		<meta name='twitter:image' content='/images/egovframework/gcall/main_new/kakao.jpg'>
		<meta name='twitter:description' content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.'/>
		
		<!-- favicon-->
		<link rel = "shortcut icon" href = "/images/egovframework/gcall/main_new/favicon.jpg">
				
		<title>정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="/plugin/font/font.css">
		<link rel="stylesheet" href="/plugin/fontawesome/css/all.css">
		<link rel="stylesheet" href="/plugin/themify/themify-icons.css" >

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/base.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/grid.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/common.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/jquery-ui.css">

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/css.css">
		
		<!-- js 라이브러리 -->
		<script src="/js/egovframework/gcall/main/jquery-3.4.1.min.js"></script>
		<script src="/js/egovframework/gcall/main/jquery-ui.js"></script>
		<script src="/js/egovframework/gcall/main/scriptN.js"></script>
		<script type="text/javascript">
			var navUrl = "news";
		</script>
		
		<script>
			$(function() {
				
				// 검색 타입값 셋팅
				$("#searchTypeSelect").val("${scType}");
				// 검색버튼 클릭시
				$("#searchBtn").on("click", function() {
					// 검색어체크
					if($("#searchInput").val() == "" ) {
						alert("검색어를 입력해주세요.");
						return false;
					}
					window.location.href = "<c:url value='/board/news.do'/>" + "?curPage=1&scType=" + $("#searchTypeSelect").val() + "&scText=" + $("#searchInput").val();
				});
			});
		</script>
	</head>
	
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
	<!-- 탑메뉴 -->
			<c:import url="../common/top_new.jsp"/>
            
			<main class='mainWrap'>
				<c:import url="../common/sideMenu.jsp"/>
				<!-- quick_wrap -->


               <div class='contentArea' id='contentArea'>
			   <div class='container'>
						<div class="sub-visual subv-1">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','알림마당')" onmouseout="fn_mouseOut('24')">알림마당</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
							<div class="sub-depth-1">  
								<ul> 
									<li tabindex="26" onmouseover="fn_mouseOver('26','공지사항')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>
									<li class="active" tabindex="27" onmouseover="fn_mouseOver('27','보도자료')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/board/news.do'/>" title="보도자료 선택됨">보도자료</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','홍보자료')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>
									<li class="active"><a href="<c:url value='/board/news.do'/>" title="보도자료 선택됨">보도자료</a></li>
									<li><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></li>
								</ul>  
						</div>    

                    <div class='limitWrap'>
                        <h3 tabindex="29" onmouseover="fn_mouseOver('29','보도자료')" onmouseout="fn_mouseOut('29')" class='mainTitle'>보도자료</h3>
							
							<!-- 검색 -->
							<form action="#" name="boardSearch">
								<fieldset>
									<legend>통합 검색</legend>
											<div class='boardSearch'>
												<div class='input-group'>
													<label tabindex="30" onmouseover="fn_mouseOver('30','검색항목')" onmouseout="fn_mouseOut('30')" class='input-group-addon hidden-xs' for='searchTypeSelect'>검색항목</label>
													<span class='input-group-addon'>
														<select class='form-control' id="searchTypeSelect">
															<option value="">전체</option>
															<option value="title">제목</option>
															<option value="content">내용</option>
														</select>
													</span>
													<label tabindex="31" onmouseover="fn_mouseOver('31','검색어')" onmouseout="fn_mouseOut('31')" class='input-group-addon hidden-xs' for='searchInput'>검색어</label>
													<input type='text' class='form-control' id="searchInput" maxlength="60" value="${fn:escapeXml(scText)}">
													<button tabindex="32" onmouseover="fn_mouseOver('32','검색')" onmouseout="fn_mouseOut('32')" type='button'  class='btn btn-blue btn-small'  id="searchBtn">검색</button>
												</div>
											</div>
								</fieldset>
							</form>
							<!-- //검색 -->
                       		<c:choose>
								<c:when test="${empty fn:escapeXml(scText)}">
									<span></span>
								</c:when>
								<c:when test="${paginationDTO.totalCount ne '0'}">
	                        		<span style="font-size:13px;">검색어 <span style="color:red">${fn:escapeXml(scText)}</span> 이(가) 총 <span>${paginationDTO.totalCount}</span> 건 검색되었습니다.
								</c:when>
								<c:otherwise>
									<span style="font-size:13px;"><span style="color:red">${fn:escapeXml(scText)} </span>으로 검색되는 결과가 없습니다.</span> <br><br>
									<span style="font-size:13px;">- 검색된 결과를 찾을 수 없습니다.</span> <br>
									<span style="font-size:13px;">- 단어의 철자가 정확한지 확인해 주세요.</span> <br>
									<span style="font-size:13px;">- 보다 일반적인 단어로 검색해 보세요.</span>
								</c:otherwise>
							</c:choose>
  
							 <div id='boardList'>
								<div class='tb02'>
								<table class='table text-nowrap'> 
									<caption><span class="blind">보도자료 목록</span></caption>
									<colgroup><col style='width:10%;'><col style='width:56%;'><col style='width:10%;'><col style='width:14%;'><col style='width:10%;'></colgroup>

										<thead><tr>
											  <th tabindex="33" onmouseover="fn_mouseOver('33','번호')" onmouseout="fn_mouseOut('33')" scope="col">번호</th>
											  <th tabindex="34" onmouseover="fn_mouseOver('34','제목')" onmouseout="fn_mouseOut('34')" scope="col">제목</th>
											  <th tabindex="35" onmouseover="fn_mouseOver('35','파일')" onmouseout="fn_mouseOut('35')" scope="col">파일</th>
											  <th tabindex="36" onmouseover="fn_mouseOver('36','작성일')" onmouseout="fn_mouseOut('36')" scope="col">작성일</th>
											  <th tabindex="37" onmouseover="fn_mouseOver('37','조회수')" onmouseout="fn_mouseOut('37')" scope="col">조회수</th>
											  </tr>
										</thead>
										<tbody>
										<!-- 보도자료 출력 -->
										<jsp:useBean id="now" class="java.util.Date"/>
										<fmt:parseNumber value="${now.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="nowDays"/>
										<c:set var="listIndex" value="0"/>
										<c:forEach var="obj" items="${newsList}" varStatus="status">
										<tr>
<!-- 											<td class="num"> -->
												<c:choose>
													<c:when test="${obj.IS_TOP == 'Y'}">
														<td class='num'><strong class='noticeBtn'><i class='fas fa-volume-up fa-fw'></i><span class='blind'>공지</span></strong></td>
													</c:when>
													<c:otherwise>
														<td tabindex="${obj.BOARD_NUM}38" onmouseover="fn_mouseOver('${obj.BOARD_NUM}38','${paginationDTO.totalCount - paginationDTO.pageSize * (paginationDTO.curPage - 1) - listIndex}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}38')" class='num'>${paginationDTO.totalCount - paginationDTO.pageSize * (paginationDTO.curPage - 1) - listIndex}</td>
														<c:set var="listIndex" value="${listIndex + 1}"/>
													</c:otherwise>
												</c:choose>
<!-- 											</td> -->
											<td class="left subject">
												<fmt:parseDate value="${obj.BOARD_REG_DATE}" pattern="yyyy-MM-dd" var="boardDate"/>
												<fmt:parseNumber value="${boardDate.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="boardRegDays"/>
												<c:choose>
													<c:when test="${nowDays - boardRegDays - 1 <= 7}">
														<span class="newIcon new"></span>
													</c:when>
													<c:otherwise>
														<span class="newIcon"></span>
													</c:otherwise>
												</c:choose>
												<a tabindex="${obj.BOARD_NUM}39" onmouseover="fn_mouseOver('${obj.BOARD_NUM}39','${obj.BOARD_TITLE}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}39')" href="<c:url value='/board/newsView.do?num=${obj.BOARD_NUM}&curPage=${paginationDTO.curPage}&scType=${scType}&scText=${scText}'/>">
													${fn:escapeXml(obj.BOARD_TITLE)}
												</a>
											</td>
											<td class="file">
												<c:if test="${obj.FILE_YN eq 'Y'}">
													<i class='fa fa-download'></i>
												</c:if>
											</td>
											<td tabindex="40" onmouseover="fn_mouseOver('${obj.BOARD_NUM}40','${obj.BOARD_REG_DATE}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}40')" class="date">${fn:escapeXml(obj.BOARD_REG_DATE)}</td>
											<td tabindex="41" onmouseover="fn_mouseOver('${obj.BOARD_NUM}41','${obj.BOARD_VIEW}')" onmouseout="fn_mouseOut('${obj.BOARD_NUM}41')" class="comment">${fn:escapeXml(obj.BOARD_VIEW)}</td>
										</tr>
										</c:forEach>
									<!-- 게시글 출력 end -->
									</tbody>
								</table>
							</div></div>


							<!-- 페이징 -->
							<c:if test="${newsList.size() > 0}">
							<nav class="board-paging">
								<ul>
									<li>
									     <c:if test="${paginationDTO.curRange ne 1 }">
											<a tabindex="42" onmouseover="fn_mouseOver('42','처음')" onmouseout="fn_mouseOut('42')" href="<c:url value='/board/news.do?curPage=1&scType=${scType}&scText=${scText}'/>" class='first'>처음</a>
										</c:if>
									</li>
									<li>	
										 <c:if test="${paginationDTO.curPage ne 1}">
										  <a tabindex="43" onmouseover="fn_mouseOver('43','이전')" onmouseout="fn_mouseOut('43')" href="<c:url value='/board/news.do?curPage=${paginationDTO.prevPage}&scType=${scType}&scText=${scText}'/>" class='prev'>이전</a>
										</c:if>
									</li>
									<li>
										<c:forEach var="pageNum" begin="${paginationDTO.startPage}" end="${paginationDTO.endPage}">
											<c:choose>
												<c:when test="${pageNum eq paginationDTO.curPage}">
													<strong><a href="<c:url value='/board/news.do?curPage=${fn:escapeXml(pageNum)}&scType=${fn:escapeXml(scType)}&scText=${fn:escapeXml(scText)}'/>" class='active' title="선택됨">${fn:escapeXml(pageNum)}</a></strong>
												</c:when>
												<c:otherwise>
													<a href="<c:url value='/board/news.do?curPage=${fn:escapeXml(pageNum)}&scType=${fn:escapeXml(scType)}&scText=${fn:escapeXml(scText)}'/>">${fn:escapeXml(pageNum)}</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</li>
									<li>
										<c:if test="${paginationDTO.curPage ne paginationDTO.totalPage && paginationDTO.totalPage > 0}">
											<a tabindex="44" onmouseover="fn_mouseOver('44','다음')" onmouseout="fn_mouseOut('44')" href="<c:url value='/board/news.do?curPage=${paginationDTO.nextPage}&scType=${scType}&scText=${scText}'/>" class='next'>다음</a>
										</c:if>
									</li>
									<li>
										 <c:if test="${paginationDTO.curRange ne paginationDTO.totalRange && paginationDTO.totalRange > 0}">
											<a tabindex="45" onmouseover="fn_mouseOver('45','마지막')" onmouseout="fn_mouseOut('45')" href="<c:url value='/board/news.do?curPage=${paginationDTO.totalPage}&scType=${scType}&scText=${scText}'/>" class='last'>마지막</a>
										</c:if>
									</li>
								</ul>
							</nav>
							</c:if>
							<!-- //페이징 -->
                        
                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>
            
            
            




			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
                

		</div>
	</body>
</html>