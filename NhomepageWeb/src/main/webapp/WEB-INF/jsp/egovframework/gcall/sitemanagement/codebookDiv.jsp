<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	List<HashMap<String, Object>> codebookList = (List<HashMap<String, Object>>)request.getAttribute("codebookList");
%>

<table class='table-bordered table-list' style='width: 100%'>
	<thead>
		<tr>
			<th style="height:auto; width:36px;">번호</th>
			<th style="height:auto; width:66px;">코드타입</th>
			<th style="height:auto; width:258px;">코드</th>
			<th style="height:auto; width:100px;">코드명</th>
			<th style="height:auto; width:36px;">사용</th>
		</tr>
	</thead>
</table>
<div style="width:100%; height:480px; overflow-y:scroll;">
  	<table style="width:100%" class='table table-bordered table-list'>
  		<tbody id="codeValueList2">
		<% if(codebookList.size() > 0) {%>
			<%for (int i=0; i < codebookList.size(); i++){ %>
 			<tr id="codebook<%=codebookList.get(i).get("ROWNUM")==null?"":codebookList.get(i).get("ROWNUM") %>" onClick="JavaScript:codeBookClick('<%=codebookList.get(i).get("ROWNUM")==null?"":codebookList.get(i).get("ROWNUM") %>')"  class="selected">
 				<td style="height:auto; width:54px; font-size:12px;"><%=codebookList.get(i).get("ROWNUM")==null?"":codebookList.get(i).get("ROWNUM")%></td>
 				<td style="height:auto; width:100px; font-size:12px;"><%=codebookList.get(i).get("CODE_TYPE")==null?"":codebookList.get(i).get("CODE_TYPE") %></td>
 				<td style="height:auto; width:390px; font-size:12px;"><%=codebookList.get(i).get("CODE_ID")==null?"":codebookList.get(i).get("CODE_ID") %></td>
 				<td style="height:auto; width:152px; font-size:12px;"><%=codebookList.get(i).get("CODE_NAME")==null?"":codebookList.get(i).get("CODE_NAME") %></td>
 				<td style="height:auto; width:55px; font-size:12px;"><%=codebookList.get(i).get("USE_YN")==null?"":codebookList.get(i).get("USE_YN") %></td>

 				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("ETC1")==null?"":codebookList.get(i).get("ETC1") %></td>
  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("ETC2")==null?"":codebookList.get(i).get("ETC2") %></td>
  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("ETC3")==null?"":codebookList.get(i).get("ETC3") %></td>
  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("PARENT_ID")==null?"":codebookList.get(i).get("PARENT_ID") %></td>
  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("PARENT_TYPE")==null?"":codebookList.get(i).get("PARENT_TYPE") %></td>
 			</tr>
			<%} %>
		<%} %>
		</tbody>
	</table>
</div>