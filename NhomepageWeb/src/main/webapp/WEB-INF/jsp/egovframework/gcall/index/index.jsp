<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<title>110 콜센터</title>
</head>
<body>
	<table class='layout'>
		<%@include file="./top.jsp" %>
		<tr>
			<td class='leftMenuArea'>
				<!-- LeftMenu Area -->
				<ul class='leftMenu'>
					<li>게시물 관리</li>
					<li><a href='/consult/list.do'>상담사연관리</a></li>
					<li><a href='/bodo/list.do'>보도자료관리</a></li>
					<li><a href='/notice/list.do'>공지사항관리</a></li>
					<li><a href='/promotion/list.do'>홍보자료관리</a></li>
					<li><a href='/photo/list.do'>포토갤러리관리</a></li>
					<li><a href='/freeBoard/list.do'>자유게시판관리</a></li>
					<li><a href='/contest/list.do'>공모전관리</a></li>
					<li><a href='/faq/list.do'>자주묻는질문관리</a></li>
					<li><a href='/story110/list.do'>110이야기관리</a></li>
				</ul> <!--/ LeftMenu Area -->
			</td>
			<td class='contentArea'>
				<!-- Contents Area --> <!--/ Contents Area -->
			</td>
		</tr>
	</table>
</body>
</html>