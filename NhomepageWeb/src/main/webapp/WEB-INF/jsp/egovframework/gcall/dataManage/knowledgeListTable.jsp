<%@page import="egovframework.gcall.dto.ContactDbDTO"%>
<%@page import="egovframework.gcall.dto.PagingDTO"%>
<%@page import="java.util.List"%>
<%@page import="egovframework.gcall.util.CmmUtil"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ContactDbDTO> proveViewArr = (List<ContactDbDTO>) request.getAttribute("proveViewArr");
	PagingDTO paging = (PagingDTO) request.getAttribute("paging");

	System.out.println(paging.getStartPage());

	int prevPage = paging.getStartPage()-5;
	int nextPage = paging.getEndPage()+1;
%>
      <table class='table table-bordered table-list'>
	      <thead>
	         <tr>
	            <th>번호</th>
	            <th>제목</th>
	            <th>업무구분</th>
	            <th>최종변경일시</th>
	            <th>변경회수</th>
	            <th>DB구분</th>
	            <th>등록자</th>
	            <th>변경자</th>
	         </tr>
	      </thead>
	      <tbody>
	         <%if(proveViewArr==null){ %>
	         <%} else{ %>
	            <%for(int i = 0 ; i < proveViewArr.size(); i++){ %>
	                <tr onClick="JavaScript:listDetail(<%=CmmUtil.nvl(proveViewArr.get(i).getDB_SEQ()) %>);" class="selected">
	                <!-- 로우넘 넣어야됨  -->
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getDB_SEQ()) %></td>
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getTITLE()) %></td>
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getFLAG_NAME())%></td>
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getLST_DAY()) %></td>
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getUPDATE_CNT()) %></td>
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getCONTACT_DB_GUBUN_NAME()) %></td>
	                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getUSER_NM())%></td>
	                  <td>
	                  		<%if(String.valueOf(proveViewArr.get(i).getLST_UPDATE_ID()).equals("admin") ){%>
								관리자
							<%}else if(String.valueOf(proveViewArr.get(i).getLST_UPDATE_ID()).equals("")) {%>
								<%=CmmUtil.nvl(proveViewArr.get(i).getUSER_NM())%>
							<%}else {%>
								<%=CmmUtil.nvl(proveViewArr.get(i).getUPDATE_NM())%>
							<%} %>
	                  </td>
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
				if(paging.getStartPage() != 0 ) {
				for(int i = paging.getStartPage(); i <= paging.getEndPage(); i++) {
					if(paging.getPage()==i) {
				%>
				<li><a href="#" class="paging <%=i %> active"><%=i %></a></li>
				<%} else{%>
				<li><a href="#" class="paging <%=i %>"><%=i %></a></li>
				<%}}%>
				<% if(paging.isNext()==true){ %>
				<li class='box'><a href="#" class="paging <%=nextPage %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i></span></a></li>
				<li class='box'><a href="#" class="paging <%=paging.getPageCnt() %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i><i class='fa fa-caret-right'></i></span></a></li>
				<%}}%>
			</ul>
		</nav>
		<!-- /페이징 -->