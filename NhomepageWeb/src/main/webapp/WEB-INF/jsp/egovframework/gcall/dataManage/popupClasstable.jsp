<%@page import="java.util.HashMap"%>
<%@page import="egovframework.gcall.dto.ContactDbDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String, Object>> cList = (List<HashMap<String, Object>>)request.getAttribute("cList");
%>
	<table class="table table-bordered table-list" id="popupClassTable">
		<thead>
			<tr>
				<th style="width:54px;">번호</th>
				<th style="width:140px;">기관대분류</th>
				<th style="width:165px;">기관중분류</th>
				<th style="width:400px;">기관소분류</th>
			</tr>
		</thead>
		<tbody class="">
			<%if(cList != null){ %>
				<%for(int i=0; i <cList.size(); i++){ %>
					<tr onClick="JavaScript:setParentClass(
					 '<%=cList.get(i).get("CLASS1_NM")%>',
					 '<%=cList.get(i).get("CLASS2_NM")%>',
					 '<%=cList.get(i).get("CLASS3_NM")%>',
					 '<%=cList.get(i).get("CLASS1_CD")%>',
					 '<%=cList.get(i).get("CLASS2_CD")%>',
					 '<%=cList.get(i).get("CLASS3_CD")%>'
					  )">
						<td><%=cList.get(i).get("RN")%></td>
						<td><%=cList.get(i).get("CLASS1_NM")%></td>
						<td><%=cList.get(i).get("CLASS2_NM")%></td>
						<td><%=cList.get(i).get("CLASS3_NM")%></td>
					</tr>
				<%} %>
			<%}else { %>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<%} %>
		</tbody>
	</table>
