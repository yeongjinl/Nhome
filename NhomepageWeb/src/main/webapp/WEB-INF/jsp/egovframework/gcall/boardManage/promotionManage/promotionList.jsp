<%@page import="egovframework.gcall.dto.PaginationDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String,Object>> hList = (List<HashMap<String,Object>>)request.getAttribute("hList") ;
	PaginationDTO pDTO = (PaginationDTO)request.getAttribute("pDTO") ;
	String confId = (String) request.getAttribute("confId");
	int curPage = Integer.parseInt((request.getAttribute("curPage").toString()));
%>

<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<title>110콜센터-홍보자료 관리</title>

</head>
<body>
	<table class='layout' summary="홍보자료 관리 목록" >
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<tbody>
			<tr>
				<td class='leftMenuArea'>
					<ul class='leftMenu' id="leftMenu">
					</ul>
				</td>
					<td class='contentArea'>
						<!-- Contents Area -->
						<div class='page-title'>
							<div class='title'>홍보자료 관리</div>
							<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 게시물관리 <i class='fa fa-chevron-right'></i> <span class='now'>홍보자료 관리</span></div>
						</div>

						<div class="panel panel-default searchBox">
						  <div class="panel-body">
						    	<label class='ttl' for="selSearch" title="검색">
						    	검색
						    	</label>
						    	<select id="selSearch" name="selSearch" class='form-control input-lg w200' title="검색">
						    		  	
						    	<% if(CmmUtil.nvl(pDTO.getSelSearch()).equals("1")) {%>
						    		<option value='1' selected>제목</option>
						    		<option value='2'>내용</option>
						    		<option value='3'>아이디</option>
						    	<%} else if(CmmUtil.nvl(pDTO.getSelSearch()).equals("2")) {%>
						    		<option value='1'>제목</option>
						    		<option value='2' selected>내용</option>
						    		<option value='3'>아이디</option>
						    	<%} else if(CmmUtil.nvl(pDTO.getSelSearch()).equals("3")) {%>
						    		<option value='1'>제목</option>
						    		<option value='2'>내용</option>
						    		<option value='3' selected>아이디</option>
						    	<%} else if(CmmUtil.nvl(pDTO.getSelSearch()).equals("0")) { %>
						    		<option value='1'>제목</option>
						    		<option value='2'>내용</option>
						    		<option value='3'>아이디</option>
						    	<%} %>
						    	</select>


						    	<div class='input-group w300'>
							    	<label for="searchWord" title="검색어 입력">
							    	</label>
							    	<input id="searchWord" type='text' class='form-control input-lg' title="검색어 입력" value="<%=pDTO.getSearchWord() %>">
						    		<div class='input-group-btn'>
						    			<button type="button"  id="searchList" class='btn btn-primary btn-lg'><i class='fa fa-search' title="검색버튼"></i></button>
						    		</div>
						    	</div>
						    	<c:if test="${PROMOTION_AUTH eq '1' or sUserType eq '0'}">
    								<button type='button' class='btn btn-primary btn-lg' onclick='location.href="/promotion/reg.do"'>등록하기</button>
								</c:if>
						  </div>
						</div>
						<div class="panel panel-default listBox">
						  <div class="panel-body">
						  	<div class='listPageNum'>Page <span class='now'><%=curPage %></span>/<%=pDTO.getTotalPage() %></div>
						  	<table class='table table-bordered table-list' summary="홍보자료관리 목록을 나타냅니다.">
						 		<caption style="display:none">공지사항관리 게시판</caption>
						  		<thead>
						  			<tr>
						  				<th scope="col">번호</th>
						  				<th scope="col">제목</th>
						  				<th scope="col">등록일</th>
						  				<th scope="col">등록자</th>
						  				<th scope="col">조회수</th>
						  				<th scope="col">파일</th>
						  				<th scope="col">ID</th>
						  				<th scope="col">항상위</th>
						  			</tr>
						  		</thead>
						  		<tbody>
						  		<% for(int i = 0 ; i < hList.size(); i++){ %>
						  			<tr class="selected">
						  				<td scope="col"><%=pDTO.getTotalCount()-i-((pDTO.getCurPage()-1)*10) %></td>
						  				<td scope="col"><a href="/promotion/detail.do?boardNum=<%=hList.get(i).get("BOARD_NUM") %>&confId=<%=hList.get(i).get("CONF_ID") %>"><%=hList.get(i).get("TITLE") %></a></td>
						  				<td scope="col"><%=hList.get(i).get("REG_DATE") %></td>
						  				<td scope="col"><%=hList.get(i).get("BOARD_WRITER") %></td>
						  				<td scope="col"><%=hList.get(i).get("BOARD_VIEW") %></td>
						  				<td scope="col"><%=hList.get(i).get("FILE_YN") %></td>
						  				<td scope="col"><%=hList.get(i).get("BOARD_NUM") %></td>
						  				<td scope="col"><%=hList.get(i).get("IS_TOP") %></td>
						  			</tr>
						  		<%} %>
						  		</tbody>
						  		<tfoot scope="col"></tfoot>
						  	</table>
						  	<nav aria-label="Page navigation" class='text-center'>
							  <ul class="pagination">
							    <% if((pDTO.getStartPage()-1)==0) {%>
							    <%} else { %>
									<li class='box'>
								    	<a  href="/promotion/list.do?selSearch=<%=pDTO.getSelSearch()%>&searchWord=<%=java.net.URLEncoder.encode(pDTO.getSearchWord(),"UTF-8")%>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-left'></i><i class='fa fa-caret-left'></i></span></a>
								    </li>
								    <li class='box'>
								     	<a href="/promotion/list.do?curPage=<%=pDTO.getStartPage()-5%>&selSearch=<%=pDTO.getSelSearch()%>&searchWord=<%=java.net.URLEncoder.encode(pDTO.getSearchWord(),"UTF-8")%>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-left'></i></span></a>
								    </li>
							     <%} %>

							    <% for(int i =pDTO.getStartPage() ; i<=pDTO.getEndPage();i++ ){ %>
							   		<li><a href="/promotion/list.do?curPage=<%=i%>&selSearch=<%=pDTO.getSelSearch()%>&searchWord=<%=java.net.URLEncoder.encode(pDTO.getSearchWord(),"UTF-8")%>" id="pageNum<%=i%>" class="pageNum"><%=i%></a></li>
								<%} %>
								<%if(pDTO.getTotalPage()==pDTO.getEndPage()) {%>
								<%} else{ %>
									<li class='box'>
								    	<a href="/promotion/list.do?curPage=<%=pDTO.getEndPage()+1%>&selSearch=<%=pDTO.getSelSearch()%>&searchWord=<%=java.net.URLEncoder.encode(pDTO.getSearchWord(),"UTF-8")%>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i></span></a>
								    </li>
								    <li class='box'>
								    	<a href="/promotion/list.do?curPage=<%=pDTO.getTotalPage()%>&selSearch=<%=pDTO.getSelSearch()%>&searchWord=<%=java.net.URLEncoder.encode(pDTO.getSearchWord(),"UTF-8")%>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i><i class='fa fa-caret-right'></i></span></a>
								    </li>
								<%} %>
							  </ul>
							</nav>
						  </div>
						</div>
						<!--/ Contents Area -->
					</td>
			</tr>
		</tbody>
		<tfoot></tfoot>
	</table>
	<script>
		$(function(){
			$("#pageNum<%=curPage%>").addClass("active");
			$("#searchList").click(function(){
				if($('#searchWord').val()==""){
					alert('검색어를 입력해주세요')
					return false;
				}
				location.href="/promotion/list.do?selSearch="+$('#selSearch option:selected').val()+"&searchWord="+encodeURI($('#searchWord').val());
			})
		})
	</script>
</body>
</html>