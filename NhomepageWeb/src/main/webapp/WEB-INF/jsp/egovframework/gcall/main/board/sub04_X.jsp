<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>정부민원안내콜센터</title>
		
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
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top.jsp"/>
			
			<!-- 탑 서브메뉴 -->
			<c:import url="./common/subMenu.jsp"/>
			
			<div class='contentArea'>
				<div class='limitWrap'>
				
					<div class='mainTitle'>포토갤러리</div>
					
					<table class='table table-bordered boardList photoList'>
						<caption style="display: none;"></caption>
						<tbody>
							<tr>
								<td class='photo'><a hef='#'><img src="<c:url value='/images/egovframework/gcall/main/board/photo_sample.png'/>" class='img-responsive'></a></td>
								<td>
									<a href='#' class='ttl'>[기념행사] ‘110콜센터 단일화’ 출범식</a>
									<a href='#' class='cont'>해양수산부와 교육부, 농식품부의 부처 콜센터 대표번호가 110번으로 단일화되는 것을
									기념해 열린 ‘110콜센터 단일화’ 출범식이 27일 오후 정부과천청사에서 개최됐다.</a>
									<div class='wdate'>2014-08-27</div>
								</td>
							</tr>
							
						</tbody>
						<tfoot></tfoot>
					</table>
					
					
					<div class='pagination'>
						<a href='#' class='move'><i class='fa fa-angle-double-left'></i></a>
						<a href='#' class='move'><i class='fa fa-angle-left'></i></a>
						
						<a href='#' class='active'>1</a>
						<a href='#'>2</a>
						<a href='#'>3</a>
						<a href='#'>4</a>
						<a href='#'>5</a>
						<a href='#'>6</a>
						<a href='#'>7</a>
						<a href='#'>8</a>
						<a href='#'>9</a>
						<a href='#'>10</a>
						
						<a href='#' class='move'><i class='fa fa-angle-double-right'></i></a>
						<a href='#' class='move'><i class='fa fa-angle-right'></i></a>
					</div>
						
						
				</div>
			</div>
			 <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>