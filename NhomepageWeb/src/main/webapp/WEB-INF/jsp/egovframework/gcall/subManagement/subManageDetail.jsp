<%@page import="egovframework.gcall.dto.PagingDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String, Object>> result = (List<HashMap<String, Object>>)request.getAttribute("result");
	PagingDTO paging = (PagingDTO) request.getAttribute("paging");
	String option = (String) request.getAttribute("option");
	String search = (String) request.getAttribute("search");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<title>110콜센터-서브 관리자 관리</title>
</head>
<body>
	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<tr>
			<td scope="col" class='leftMenuArea'>
				<!-- LeftMenu Area -->
				<ul class='leftMenu' id="subLeftMenu"></ul>
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class='title'>서브 관리자 정보</div>
					<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 서브 관리자<i class='fa fa-chevron-right'></i> 서브 관리자 목록<i class='fa fa-chevron-right'></i> <span class='now'>서브 관리자 정보</span></div>
				</div>
				<div class="panel panel-default writeBox">
					<div class="panel-heading">서브 관리자 정보</div>
				  	<div class="panel-body">
				  		<form action = '/subManage/proc.do' accept-charset="utf-8" name="subUpdate" method = "post">
					  		<table class='table table-bordered'>
					  			<tbody>
					  				<tr>
					  					<th><label for='user_id'>아이디</label></th>
					  					<td><input type='text' id='user_id' name="user_id" class='form-control' style='width:auto; pointer-events:none; background-color:#eee; color:#555; opacity:1;' value='<%=result.get(0).get("USER_ID")%>'></td>
					  				</tr>
					  				<tr>
					  					<th><label for='user_name'>이름</label></th>
					  					<td><input type='text' id='user_name' name="user_name" class='form-control' style='width:auto; pointer-events:none; background-color:#eee; color:#555; opacity:1;' value='<%=result.get(0).get("USER_NAME")%>'></td>
					  				</tr>
					  				<tr>
					  					<th>권한</th>
					  					<td>
					  						<fieldset style='padding:0px 10px 10px 5px;'>
								              <legend> 게시물 관리 </legend>
								              <table>
								                <tr>
								                  <td>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="CONSULT_AUTH" <%=result.get(0).get("CONSULT_AUTH").equals("1")?"checked='checked'":"" %> /> 상담사연관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="BODO_AUTH" <%=result.get(0).get("BODO_AUTH").equals("1")?"checked='checked'":"" %> /> 보도자료관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="NOTICE_AUTH" <%=result.get(0).get("NOTICE_AUTH").equals("1")?"checked='checked'":"" %> /> 공지사항관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="PROMOTION_AUTH" <%=result.get(0).get("PROMOTION_AUTH").equals("1")?"checked='checked'":"" %> /> 홍보자료관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="PHOTO_AUTH" <%=result.get(0).get("PHOTO_AUTH").equals("1")?"checked='checked'":"" %> /> 포토갤러리관리 </label>
								                  </td>
								                </tr>
								                <tr>
								                  <td>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="FREEBOARD_AUTH" <%=result.get(0).get("FREEBOARD_AUTH").equals("1")?"checked='checked'":"" %> /> 자유게시판관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="CONTEST_AUTH" <%=result.get(0).get("CONTEST_AUTH").equals("1")?"checked='checked'":"" %> /> 공모전관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="FAQ_AUTH" <%=result.get(0).get("FAQ_AUTH").equals("1")?"checked='checked'":"" %> /> 자주묻는 질문연관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="STORY110_AUTH" <%=result.get(0).get("STORY110_AUTH").equals("1")?"checked='checked'":"" %> /> 110이야기관리 </label>
								                  </td>
								                </tr>
								              </table>
								            </fieldset>
								            <fieldset style='padding:0px 10px 10px 5px;'>
								              <legend> 공지 관리 </legend>
								              <table>
								                <tr>
								                  <td>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="POPUP_AUTH" <%=result.get(0).get("POPUP_AUTH").equals("1")?"checked='checked'":"" %> /> 팝업관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="POPUPZONE_AUTH" <%=result.get(0).get("POPUPZONE_AUTH").equals("1")?"checked='checked'":"" %> /> 팝업존관리 </label>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="BANNER_AUTH" <%=result.get(0).get("BANNER_AUTH").equals("1")?"checked='checked'":"" %> /> 배너관리 </label>
								                  </td>
								                </tr>
								              </table>
								            </fieldset>
								            <fieldset style='padding:0px 10px 10px 5px;'>
								              <legend> 기타 관리 </legend>
								              <table>
								                <tr>
								                  <td>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="MOBILEVISITOR_AUTH" <%=result.get(0).get("MOBILEVISITOR_AUTH").equals("1")?"checked='checked'":"" %> /> 기타관리 </label>
								                  </td>
								                </tr>
								              </table>
								            </fieldset>
								            <fieldset style='padding:0px 10px 10px 5px;'>
								              <legend> 데이터 관리 </legend>
								              <table>
								                <tr>
								                  <td>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="INTELIGENCE_AUTH" <%=result.get(0).get("INTELIGENCE_AUTH").equals("1")?"checked='checked'":"" %> /> 지식DB관리 </label>
								                  </td>
								                </tr>
								              </table>
								            </fieldset>
								            <fieldset style='padding:0px 10px 10px 5px;'>
								              <legend> 사이트설정 </legend>
								              <table>
								                <tr>
								                  <td>
								                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="CODE_AUTH" <%=result.get(0).get("CODE_AUTH").equals("1")?"checked='checked'":"" %> /> 코드관리 </label>
								                  </td>
								                </tr>
								              </table>
								            </fieldset>
										</td>
					  				</tr>
					  			</tbody>
					  		</table>
					  		<div class='hidden'>
					  			<input type="hidden" id='paging' name='paging' value='<%=paging%>'>
					  			<input type="hidden" id='option' name='option' value='<%=option%>'>
					  			<input type="hidden" id='search' name='search' value='<%=search%>'>
					  		</div>
					  		<div class='text-right'>
						  		<button class='btn btn-primary btn-lg mr20 w100' type='submit' id="update" name="update" value="update" >수정</button>
						  		<button class='btn btn-white btn-lg w100' type='button' onclick='window.history.go(-1)'>취소</button>
					  		</div>
				  		</form>
				  </div>
				</div>
				<!--/ Contents Area -->
			</td>
		</tr>
	</table>
</body>
</html>