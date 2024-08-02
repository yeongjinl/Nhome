<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/subManageCheck.js"></script>
<title>110콜센터-서브 관리자 관리</title>
<script>
	$(document).ready(function() {
		// hide/show password
		$("#pwShow").mousedown(function() {
			$("#user_pw").attr("type", "text");
		});
		$("#pwShow").mouseup(function() {
			$("#user_pw").attr("type", "password");
		});
	});
</script>
<script type="text/javascript">
	function effectiveness() {
		// 유효성 검사
		if(document.getElementById("user_id").value == "") {
			alert("아이디를 입력해주세요.")
			return false
		} else if(document.getElementById("user_pw").value == "") {
			alert("비밀번호를 입력해주세요.")
			return false
		} else {
			$('#codetypeForm').submit();
		}
	}
</script>
</head>
<body>
	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<script>
			subManageSessionCheck("${fn:escapeXml(sUserType)}");
		</script>
		<tr>
			<td class='leftMenuArea'>
				<!-- LeftMenu Area -->
				<ul class='leftMenu'>
					<li>서브  관리자</li>
					<li class="active"><a href='/consult/list.do'>서브 관리자 목록</a></li>
				</ul> <!--/ LeftMenu Area -->
			</td>
				<td class='contentArea'>
					<!-- Contents Area -->
					<div class='page-title'>
						<div class='title'>서브 관리자 목록</div>
						<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 서브 관리자<i class='fa fa-chevron-right'></i> <span class='now'>서브 관리자 목록</span></div>
					</div>
					<div class="panel panel-default writeBox">
						<div class="panel-heading">서브 관리자 등록</div>
					  	<div class="panel-body">
					  		<form action = '/subManage/proc.do' accept-charset="utf-8" id="codetypeForm" name="subSignUp" method = "post">
						  		<table class='table table-bordered'>
						  			<tbody>
						  				<tr>
						  					<th><label for="user_id">아이디</label></th>
						  					<td><input type='text' id='user_id' name='user_id' class='form-control' style='width:auto;' placeholder='아이디'></td>
						  				</tr>
						  				<tr>
						  					<th><label for="user_pw">비밀번호</label></th>
						  					<td><input type="password" id='user_pw' name='user_pw' class='form-control' style='width:auto;' placeholder='비밀번호'><span id='pwShow' style='padding:10px;'><i class='fa fa-eye'></i></span></td>
						  				</tr>
						  				<tr>
						  					<th><label for='user_dept'>부서</label></th>
											 <td>
												 <select id='user_dept' name='user_dept' class='form-control'>
												 	<option value="부서1">부서1</option>
												 	<option value="부서2">부서2</option>
												 	<option value="부서3">부서3</option>
												 </select>
											 </td>
						  				</tr>
						  				<tr>
						  					<th>권한</th>
						  					<td>
						  						<fieldset style='padding:0px 10px 10px 5px;'>
									              <legend> 게시물 관리 </legend>
									              <table>
									                <tr>
									                  <td>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="CONSULT_AUTH"/> 상담사연관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="BODO_AUTH"/> 보도자료관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="NOTICE_AUTH"/> 공지사항관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="PROMOTION_AUTH"/> 홍보자료관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="PHOTO_AUTH"/> 포토갤러리관리 </label>
									                  </td>
									                </tr>
									                <tr>
									                  <td>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="FREEBOARD_AUTH"/> 자유게시판관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="CONTEST_AUTH"/> 공모전관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="FAQ_AUTH"/> 자주묻는 질문연관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="STORY110_AUTH"/> 110이야기관리 </label>
									                  </td>
									                </tr>
									              </table>
									            </fieldset>
									            <fieldset style='padding:0px 10px 10px 5px;'>
									              <legend> 공지 관리 </legend>
									              <table>
									                <tr>
									                  <td>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="POPUP_AUTH"/> 팝업관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="POPUPZONE_AUTH"/> 팝업존관리 </label>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="BANNER_AUTH"/> 배너관리 </label>
									                  </td>
									                </tr>
									              </table>
									            </fieldset>
									            <fieldset style='padding:0px 10px 10px 5px;'>
									              <legend> 기타 관리 </legend>
									              <table>
									                <tr>
									                  <td>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="MOBILEVISITOR_AUTH"/> 기타관리 </label>
									                  </td>
									                </tr>
									              </table>
									            </fieldset>
									            <fieldset style='padding:0px 10px 10px 5px;'>
									              <legend> 데이터 관리 </legend>
									              <table>
									                <tr>
									                  <td>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="INTELIGENCE_AUTH"/> 지식DB관리 </label>
									                  </td>
									                </tr>
									              </table>
									            </fieldset>
									            <fieldset style='padding:0px 10px 10px 5px;'>
									              <legend> 사이트설정 </legend>
									              <table>
									                <tr>
									                  <td>
									                    <label style='padding:0px 10px 10px 5px; font-size:14px;'><input type="checkbox" name="user_auth" value="CODE_AUTH"/> 코드관리 </label>
									                  </td>
									                </tr>
									              </table>
									            </fieldset>
											</td>
						  				</tr>
						  				<tr>
						  					<th><label for='user_note'>비고</label></th>
											<td><input type='text' id='user_note' name='user_note' class='form-control'></td>
						  				</tr>
						  			</tbody>
						  		</table>
						  		<div class='text-right'>
							  		<button class='btn btn-primary btn-lg mr20 w100' type='button' onclick='effectiveness()'>저장</button>
							  		<button class='btn btn-white btn-lg w100' type="reset" onclick='document.location="notice.html"'>취소</button>
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