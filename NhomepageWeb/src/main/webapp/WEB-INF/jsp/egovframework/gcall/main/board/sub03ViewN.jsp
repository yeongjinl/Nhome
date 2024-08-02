<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			var navUrl = "promotionview";
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




               <div class='contentArea' id='contentArea'><div class='container'>
						<div class="sub-visual subv-1">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','알림마당')" onmouseout="fn_mouseOut('24')">알림마당</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
							<div class="sub-depth-1">  
								<ul> 
									<li tabindex="26" onmouseover="fn_mouseOver('26','공지사항')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>
									<li tabindex="27" onmouseover="fn_mouseOver('27','보도자료')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/board/news.do'/>">보도자료</a></li>
									<li class="active" tabindex="28" onmouseover="fn_mouseOver('28','홍보자료')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/board/promotion.do'/>" title="홍보자료 선택됨">홍보자료</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>
									<li><a href="<c:url value='/board/news.do'/>">보도자료</a></li>
									<li class="active"><a href="<c:url value='/board/promotion.do'/>">홍보자료</a></li>
								</ul>  
						</div>     

                    <div class='limitWrap'>
                    
                        <h3 tabindex="29" onmouseover="fn_mouseOver('29','홍보자료')" onmouseout="fn_mouseOut('29')" class='mainTitle'>홍보자료</h3>
                        


							<!-- 게시판 보기 -->
							<div class="tableView" >
								
								<div class='boardTitle'>
									<h4 tabindex="30" onmouseover="fn_mouseOver('30','${promotionDetail.BOARD_TITLE}')" onmouseout="fn_mouseOut('30')" class='sub_title_basic'>${promotionDetail.BOARD_TITLE}</h4>
										<div class='board-Info'>
											<div class='filedown'>
												<c:forEach var="obj" items="${promotionFileDetail}" varStatus="status">
													<strong tabindex="31" onmouseover="fn_mouseOver('31','첨부파일')" onmouseout="fn_mouseOut('31')"><i class='far fa-folder-open fa-fw'></i> 첨부파일</strong>
													<div class='fileGroup'>
														<a tabindex="32" onmouseover="fn_mouseOver('32','${obj.ORIGINAL_FILE_NAME}')" onmouseout="fn_mouseOut('32')" href='javascript:void(0);' onclick="location.href='<c:url value='/fileDown.do?type=board&num=${obj.SEQ}'/>'">${fn:escapeXml(obj.ORIGINAL_FILE_NAME)}</a>
													</div>
												</c:forEach>
											</div>	
											<ul>
												<li tabindex="33" onmouseover="fn_mouseOver('33','${promotionDetail.BOARD_REG_DATE}')" onmouseout="fn_mouseOut('33')"><strong>작성일 :</strong> ${promotionDetail.BOARD_REG_DATE}</li>
												<li tabindex="34" onmouseover="fn_mouseOver('34','${promotionDetail.BOARD_VIEW}')" onmouseout="fn_mouseOut('34')"><strong>조회수 :</strong> ${promotionDetail.BOARD_VIEW}</li>
												<li><strong>작성자 :</strong>관리자</li>		
											</ul>
										</div>
								</div><!-- boardTitle -->

								<div class='boardBody'>${promotionDetail.BOARD_CONTENTS}</div><!-- boardBody -->
									<div style="text-align:center;">
										<img src="/images/egovframework/gcall/main_new/common/img_opentype04.png" alt="본 공공저작물은 공공누리 “출처표시+상업적이용금지+변경금지”  조건에  따라  이용할  수  있습니다." tabindex="35"  onmouseover="fn_mouseOver('35','본 공공저작물은 공공누리 “출처표시+상업적이용금지+변경금지”  조건에  따라  이용할  수  있습니다.')" onmouseout="fn_mouseOut('35')">
										<span tabindex="36"  onmouseover="fn_mouseOver('36','본 공공저작물은 공공누리 “출처표시+상업적이용금지+변경금지”  조건에  따라  이용할  수  있습니다.')" onmouseout="fn_mouseOut('36')">본 공공저작물은 공공누리 “출처표시+상업적이용금지+변경금지”  조건에  따라  이용할  수  있습니다.</span>
									</div>
									<ul class="prev-next-wrap">
										<c:if test="${promotionNext != null}">
											<li><strong tabindex="37" onmouseover="fn_mouseOver('37','다음글')" onmouseout="fn_mouseOut('37')">다음글 <i class='ti-angle-up'></i> </strong>
												<a tabindex="38" onmouseover="fn_mouseOver('38','${promotionNext.BOARD_TITLE}')" onmouseout="fn_mouseOut('38')" href="<c:url value='/board/promotionView.do?num=${promotionNext.BOARD_NUM}&curPage=${curPage}&scType=${scType}&scText=${scText}'/>">${fn:escapeXml(promotionNext.BOARD_TITLE)}</a>
											</li>
										</c:if>
										<c:if test="${promotionPrev != null}">
										<li><strong tabindex="39" onmouseover="fn_mouseOver('39','이전글')" onmouseout="fn_mouseOut('39')">이전글 <i class='ti-angle-down'></i> </strong>
											<a tabindex="40" onmouseover="fn_mouseOver('40','${promotionPrev.BOARD_TITLE}')" onmouseout="fn_mouseOut('40')" href="<c:url value='/board/promotionView.do?num=${promotionPrev.BOARD_NUM}&curPage=${curPage}&scType=${scType}&scText=${scText}'/>">${fn:escapeXml(promotionPrev.BOARD_TITLE)}</a>
										</c:if>
									</ul><!--// prev-next-wrap-->
									<div class='text-center'>
										<button tabindex="41" onmouseover="fn_mouseOver('41','목록')" onmouseout="fn_mouseOut('41')" type="button" class="btn btn-big btn-blue" onclick="location.href='<c:url value='/board/promotion.do?curPage=${curPage}&scType=${scType}&scText=${scText}'/>'">목 록</button>
									</div>

							</div><!-- tableView -->
                            
                        
                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->
            </main>
			<c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>
		</div>
	</body>
</html>