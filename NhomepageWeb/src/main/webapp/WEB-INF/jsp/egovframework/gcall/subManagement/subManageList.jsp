<%@page import="java.util.HashMap"%>
<%@page import="egovframework.gcall.dto.PagingDTO"%>
<%@page import="java.util.List"%>
<%@page import="egovframework.gcall.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<title>110콜센터-서브 관리자 관리</title>
<%
	List<HashMap<String, Object>> ViewArr = (List<HashMap<String, Object>>) request.getAttribute("list");
	PagingDTO paging = (PagingDTO) request.getAttribute("paging");
	String option = (String) request.getAttribute("option");
	String search = (String) request.getAttribute("search");

	int prevPage = paging.getStartPage()-5;
	int nextPage = paging.getEndPage()+1;
%>
<script>
$(document).ready(function() {
	$(document).on( "click", ".paging", function(){
		var paging =  this.classList[1];
		var option = $('#searchOption')[0].value;
		var search = $('#search')[0].value;
		if(search==undefined || search==null) {
			search="";
		}
		subManageList(paging, option, search);
	});
	$(document).on( "click", "#searchBtn", function searchBtn(){
		var paging = 1;
		var option = $('#searchOption')[0].value;
		var search = $('#search')[0].value;
		if(search=="" || search==undefined || search==null) {
			alert("검색어를 입력해주세요.");
			return false;
		}
		subManageList(paging, option, search);
	});
})
function subManageList(paging, option, search) {
	location.href = "/subManage/list.do?page="+paging+"&option="+option+"&search="+encodeURI(search);
}
$(document).on( "click", ".detail", function(){
	var user_id = this.children[1].textContent;
	var page = document.getElementsByClassName('active')[0].text
	var option = $('#searchOption')[0].value;
	var search = $('#search')[0].value;
	location.href = "/subManage/detail.do?user_id="+user_id+"&page="+page+"&option="+option+"&search="+encodeURI(search);
});
function enter_keydown() {
	if(window.event.keyCode == 13) {
		var paging = 1;
		var option = $('#searchOption')[0].value;
		var search = $('#search')[0].value;
		if(search=="" || search==undefined || search==null) {
			alert("검색어를 입력해주세요.");
			return false;
		}
		subManageList(paging, option, search);
	}
}
</script>
</head>
<body>
	<table class='layout' summary="서브관리자 목록">
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>;
		<caption style="display:none">서브관리자 목록</caption>
		<tr>
			<td scope="col" class='leftMenuArea'>
				<!-- LeftMenu Area -->
				<ul class='leftMenu' id="subLeftMenu"></ul>
			</td>
				<td scope="col" class='contentArea'>
					<!-- Contents Area -->
					<div class='page-title'>
						<div class='title'>서브 관리자 목록</div>
						<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 서브 관리자<i class='fa fa-chevron-right'></i> <span class='now'>서브 관리자 목록</span></div>
					</div>

					<div class="panel panel-default searchBox">
					  <div class="panel-body">
					    	<label  class='ttl' for="searchOption" title="검색">
					    	검색
					    	</label>
					    	<select class='form-control input-lg w200' id='searchOption' name='searchOption'>
						    	<%if(option.equals("2")) { %>
						    		<option value='0' disabled="disabled">검색항목</option>
						    		<option value='1'>관리자 ID</option>
						    		<option value='2' selected>이름</option>
						    	<%} else {%>
						    		<option value='0' disabled="disabled">검색항목</option>
						    		<option value='1' selected>관리자 ID</option>
						    		<option value='2'>이름</option>
						    	<%} %>
					    	</select>
					    	<div class='input-group w300'>
						    	<label style="display:none" for="search" title="텍스트">
						    	</label>
					    		<input type='text' class='form-control input-lg' id='search' value='<%=search%>' onkeydown="enter_keydown()">
					    		<div class='input-group-btn'>
					    			<button type="button" class='btn btn-primary btn-lg' id='searchBtn'><i class='fa fa-search'></i></button>
					    		</div>
					    	</div>
					  </div>
					</div>
					<div class="panel panel-default listBox">
					  <div class="panel-body">
					  	<div class='listPageNum'>Page <span class='now'><%=paging.getPage() %></span>/<%=paging.getListCnt() %></div>
					  	<table class='table table-bordered table-list' summary="서브관리자 목록">
					  	<caption style="display: none">서브관리자 목록</caption>
					  		<thead>
					  			<tr>
					  				<th style="width:10%;" scope="col">번호</th>
					  				<th style="width:20%;" scope="col">관리자 ID</th>
					  				<th style="width:10%;" scope="col">이름</th>
					  				<th style="width:50%;" scope="col">권한</th>
					  				<th style="width:10%;" scope="col">등록일</th>
					  			</tr>
					  		</thead>
					  		<tbody class='subManagerlist'>
					  		<% for(int i=0; i<ViewArr.size(); i++ ) { %>

					  			<tr class="detail selected">
									<td scope="col"><%= paging.getListCnt()-i-((paging.getPage()-1)*10)%></td>
									<td scope="col"><%=CmmUtil.nvl(ViewArr.get(i).get("USER_ID").toString()) %></td>
									<td scope="col"><%=CmmUtil.nvl(ViewArr.get(i).get("USER_NAME").toString()) %></td>
									<td scope="col" style="max-width: 350px;">
										<div>
										<%= CmmUtil.nvl(ViewArr.get(i).get("CONSULT_AUTH").toString().equals("1")?"상담사연 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("BODO_AUTH").toString().equals("1")?"보도자료 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("NOTICE_AUTH").toString().equals("1")?"공지사항 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("PROMOTION_AUTH").toString().equals("1")?"홍보자료 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("PHOTO_AUTH").toString().equals("1")?"포토갤러리 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("FREEBOARD_AUTH").toString().equals("1")?"자유게시판 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("CONTEST_AUTH").toString().equals("1")?"공모전 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("FAQ_AUTH").toString().equals("1")?"자주묻는 질문 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("STORY110_AUTH").toString().equals("1")?"110이야기":"") %>
										</div>
										<div>
										<%= CmmUtil.nvl(ViewArr.get(i).get("POPUP_AUTH").toString().equals("1")?"팝업 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("POPUPZONE_AUTH").toString().equals("1")?"팝업존 ":"") %>
										<%= CmmUtil.nvl(ViewArr.get(i).get("BANNER_AUTH").toString().equals("1")?"배너":"") %>
										</div>
										<div>
										<%= CmmUtil.nvl(ViewArr.get(i).get("MOBILEVISITOR_AUTH").toString().equals("1")?"기타관리":"") %>
										</div>
										<div>
										<%= CmmUtil.nvl(ViewArr.get(i).get("INTELIGENCE_AUTH").toString().equals("1")?"지식DB관리":"") %>
										</div>
										<div>
										<%= CmmUtil.nvl(ViewArr.get(i).get("CODE_AUTH").toString().equals("1")?"코드관리":"") %>
										</div>
									</td>
									<td scope="col">
									<%if (ViewArr.get(i).get("JOIN_DATE")==null || ViewArr.get(i).get("JOIN_DATE")=="") { %>
										-
									<% } else { %>
										<%= ViewArr.get(i).get("JOIN_DATE").toString().substring(0,4)+"-"+ViewArr.get(i).get("JOIN_DATE").toString().substring(4,6)+"-"+ViewArr.get(i).get("JOIN_DATE").toString().substring(6,8)%>
									<% } %>
									</td>
								</tr>
								<%} %>
					  		</tbody>
					  	</table>
						<!-- 페이징 -->
					  	<div aria-label="Page navigation" class='text-center'>
						  <ul class="pagination">
					    <% if(paging.isPrev() ==true) {	%>
							<li class='box'><a href="#" class="paging 1" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-caret-left"></i><i class="fa fa-caret-left"></i></span></a></li>
							<li class='box'><a href="#" class="paging <%=prevPage %>" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-caret-left"></i></span></a></li>
						<%}
							if(paging.getStartPage() != 0 ) {
							for(int i = paging.getStartPage(); i <= paging.getEndPage(); i++) {
								if(paging.getPage()==i) {
						%>
							<li><a href="#" class="paging <%=i %> active"><%=i %></a></li>
						<%	} else{%>
							<li><a href="#" class="paging <%=i %>"><%=i %></a></li>
						<%}}%>
						<% if(paging.isNext()==true){ %>
							<li class='box'><a href="#" class="paging <%=nextPage %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i></span></a></li>
							<li class='box'><a href="#" class="paging <%=paging.getPageCnt() %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i><i class='fa fa-caret-right'></i></span></a></li>
						<%}}%>
						  </ul>
						</div>
						<!-- /페이징 -->
					  </div>
					</div>
					<!--/ Contents Area -->
				</td>
		</tr>
	</table>

</body>
</html>