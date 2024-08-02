<%@page import="java.util.HashMap"%>
<%@page import="egovframework.gcall.dto.ContactDbDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String, Object>> fList = (List<HashMap<String, Object>>)request.getAttribute("fList");
%>
	<table class="table table-bordered table-list" id="popupClassTable">
		<thead>
			<tr>
				<th style="width:54px;">번호</th>
				<th style="width:140px;">업무대분류</th>
				<th style="width:165px;">업무중분류</th>
				<th style="width:400px;">업무소분류</th>
			</tr>
		</thead>
		<tbody class="">
			<%if(fList != null){ %>
				<%for(int i=0; i <fList.size(); i++){ %>
					<tr onClick="JavaScript:setParentText(
					 '<%=fList.get(i).get("CON1_NM")%>',
					 '<%=fList.get(i).get("CON2_NM")%>',
					 '<%=fList.get(i).get("CON3_NM")%>',
					 '<%=fList.get(i).get("CON1_CD")%>',
					 '<%=fList.get(i).get("CON2_CD")%>',
					 '<%=fList.get(i).get("CON3_CD")%>'
					  )">
						<td><%=fList.get(i).get("RN")%></td>
						<td><%=fList.get(i).get("CON1_NM")%></td>
						<td><%=fList.get(i).get("CON2_NM")%></td>
						<td><%=fList.get(i).get("CON3_NM")%></td>
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
