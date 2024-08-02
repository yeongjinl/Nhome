<%@page import="java.util.HashMap"%>
<%@page import="egovframework.gcall.dto.PagingDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String,Object>> hList = (List<HashMap<String,Object>>)request.getAttribute("hList");
	PagingDTO paging = (PagingDTO) request.getAttribute("paging");
	String db_seq = (String)request.getAttribute("db_seq");
	int prevPage = paging.getStartPage()-5;
	int nextPage = paging.getEndPage()+1;
%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<title>110콜센터</title>
		<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
		<script>

				//이력상세
			 function hisDetail(db_his_seq){
				location.href="/severdata/hisDetail.do?DB_HIS_SEQ="+db_his_seq+"&page=1";

			 }
			//페이징
			$(document).on( "click", ".paging", function(){
				var option = '<%=db_seq%>';
				var pageno =  this.classList[1];
				location.href="/severdata/hisDetail.do?DB_HIS_SEQ="+db_his_seq+"&page="+page;
			});
		</script>

	</head>
	<body>
		<table class='layout'>
			<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>;
			<tr>
				<td class='leftMenuArea' rowspan="2">
					<ul class='leftMenu' id="dataLeftMenu">
					</ul>
				</td>
				<td class='contentArea'>
					<!-- Contents Area -->
					<div class='page-title'>
						<div class='title'>지식DB 이력</div>
						<div class='navi'>
							<i class='fa fa-home'></i>
							<i class='fa fa-chevron-right'></i> 데이터관리
							<i class='fa fa-chevron-right'></i>
							<span class='now'>지식DB 승인(QA)</span>
						</div>
					</div>
					<div class='panel-tab'>
						<button class='btn btn-success btn-lg'>개정본 이력 보기</button>
					</div>
					<div class="panel panel-default searchBox">
					  <div class="panel-body">
				  	    <table id="knowledgeTableList" class='table table-bordered table-list'>
				  	    	<thead>
								<tr>
									<th>NO</th>
									<th>변경일시</th>
									<th colspan="3">변경사유</th>
									<th>변경자</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody>
								<%if (hList != null){ %>
									<% for(int i=0; i<hList.size(); i++){ %>
										<tr onClick="JavaScript:hisDetail('<%= hList.get(i).get("DB_HIS_SEQ") %>');" class="selected">
											<td ><%= hList.get(i).get("DB_HIS_SEQ") %></td>
											<td ><%= hList.get(i).get("LST_DAY") %></td>
											<td colspan="3"><%= hList.get(i).get("UPDATE_MEMO") %></td>
											<td >
												<%if(String.valueOf(hList.get(i).get("LST_UPDATE_ID")).equals("admin") ){%>
													관리자
												<%}else {%>
													<%= CmmUtil.nvl(String.valueOf(hList.get(i).get("UPDATE_NM") ) ) %>
												<%} %>
											</td>
											<td ><%= hList.get(i).get("PROVE_STATE") %></td>
										</tr>
									<%} %>
								<%} %>

							</tbody>
				  	    </table>
					  	<!-- 페이징 -->
						<nav aria-label="Page navigation" class='text-center' style="width: 100%; margin-right: 0px;">
							<ul class="pagination">

								<% if(paging.isPrev() ==true) {	%>
								<li class='box'><a href="#" class="paging 1" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-caret-left"></i><i class="fa fa-caret-left"></i></span></a></li>
								<li class='box'><a href="#" class="paging <%=prevPage %>" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-caret-left"></i></span></a></li>
								<%}
								for(int i = paging.getStartPage(); i <= paging.getEndPage(); i++) {
									if(paging.getPage()==i) {
								%>
								<li><a href="#" class="paging <%=i %> active"><%=i %></a></li>
								<%} else {%>
								<li><a href="#" class="paging <%=i %>"><%=i %></a></li>
								<%}}%>
								<% if(paging.isNext()==true){ %>
								<li class='box'><a href="#" class="paging <%=nextPage %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i></span></a></li>
								<li class='box'><a href="#" class="paging <%=paging.getPageCnt() %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i><i class='fa fa-caret-right'></i></span></a></li>
								<%}%>
							</ul>
						</nav>
						<!-- /페이징 -->
					  </div>
					</div>
					<!--/ Contents Area -->
				</td>
			</tr>
		</table>

	</body>
</html>