<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject jsonObj =(JSONObject)request.getAttribute("jsonObj") ;
	JSONArray fList = (JSONArray)request.getAttribute("fList");
	JSONArray newFList = (JSONArray)request.getAttribute("newFList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/lightbox.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/custom.css"/>
<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/fileUpload.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/handlebars.min.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/lightbox.js"></script>
<title>110콜센터- 자유게시판 수정</title>
<script>
$(document).ready(function(){
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth()+1;
	var day = date.getDate();
	if((month+"").length <2) {
		month="0"+month;
	}
	if((day+"").length <2) {
		day="0"+day;
	}
	//시간대별 방문자
	document.getElementById('BOARD_REG_DATE').value = '<%=CmmUtil.nvl(jsonObj.get("BOARD_REG_DATE").toString()) %>'
	console.log('<%=CmmUtil.nvl(jsonObj.get("BOARD_REG_DATE").toString()) %>');
	$(function() {
		$('#BOARD_REG_DATE').datepicker({
			format: "yyyy-mm-dd",
			language: "kr",
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true
		 });
	});
});
</script>
<style type="text/css" >

.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background: rgba(0,0,0,0.2); /*not in ie */
    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
     z-index:999;
}
    .wrap-loading div{ /*로딩 이미지*/
        position: fixed;
        top:50%;
        left:50%;
        margin-left: -21px;
        margin-top: -21px;
    }

    .display-none{ /*감추기*/
        display:none;
    }

    /*fontsize*/
	.note-editable{
	font-size:14px
	}
</style>
</head>
<body>
	<table class='layout' summary="자유게시판 수정">
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
						<div class='title'>자유게시판 관리</div>
						<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 게시물관리 <i class='fa fa-chevron-right'></i> <span class='now'>자유게시판 관리</span> <i class='fa fa-chevron-right'></i> <span class='now'>게시물 수정</span></div>
					</div>
					<div class="panel panel-default writeBox">
						<div class="panel-heading">게시물 수정</div>
						  	<div class="panel-body">
							  	<form id="boardUpdProc" action="/freeBoard/update.do" method="POST">
							  		<table class='table table-bordered' summary="자유게시판 수정">
							  		<caption style="display: none">자유게시판 수정</caption>
							  			<tbody>
							  				<tr>
							  					<th scope="col"><label for="TITLE" title="제목">제목</label></th>
							  					<td colspan=3><input type='text' id="TITLE" name="TITLE" class='form-control' value="<%=CmmUtil.nvl(jsonObj.get("BOARD_TITLE").toString()) %>" ></td>
							  				</tr>
							  				<tr>
								  				<th scope="col"><label for="BOARD_REG_DATE" title="제목">등록일</label></th>
								  				<td scope="col"  colspan=3>
								  					<div class='input-group input-appand reg-date'>
									  					<input type='text' class='form-control' id='BOARD_REG_DATE'name='BOARD_REG_DATE' style="width: 110px; color:#555; opacity:1;" maxlength="10">
									  					<label class="input-group-addon" for="BOARD_REG_DATE">
									    					<i class="fa fa-calendar"></i>
									  					</label>
									    			</div>
								  				</td>
								  			</tr>
							  				<tr>
							  					<th scope="col"><label for="EMAIL" title="이메일">이메일</label></th>
							  					<td colspan=3><input type='text' id="EMAIL" name="EMAIL" class='form-control'value="<%=CmmUtil.nvl(jsonObj.get("BOARD_EMAIL").toString()) %>" readonly="readonly"></td>
							  				</tr>
							  				<tr>
							  					<th scope="col"><label for="summernote" title="내용">내용</label></th>
												 <td colspan="3">
													 <textarea id="summernote" name="CONTENT"  >
													 <%=jsonObj.get("BOARD_CONTENTS") %>
													 </textarea>
												 </td>
							  				</tr>
							  				<tr>
							  				<th scope="col">첨부파일</th>
							  				<td  scope="col" style="width:70%;text-align: center">
											    <div class="box box-primary" style="width: 80%;margin:0 auto">
											        <div class="box-body">
											            <%--첨부파일 영역 추가--%>
											            <div class="form-group">
											            <label for="fileUp" class="fileDrop">
											                    <p class="text-center"><i class="fa fa-paperclip"></i> 클릭하면 첨부파일을 등록할 수 있습니다..</p>
											             </label>
											                <input type="file"  id="fileUp" style="display:none"/>
											            </div>
											        </div>
											       <%--첨부파일 영역 추가--%>
											            <div class="box-footer">
												            <ul style="display:-webkit-box;list-style: none;width:100%;overflow:scroll "  class="mailbox-attachments clearfix uploadedFileList"></ul>
												        </div>
											    </div>
											   </td>
							  					<th scope="col">옵션</th>
							  					<td scope="col">
							  						<input type='checkbox' id="isTop" name="IS_TOP" value="<%=jsonObj.get("IS_TOP")%>" > 게시물상단에 항상 위치합니다.
							  					</td>
							  				</tr>
							  			</tbody>
							  		</table>
							  		<input type='hidden' id="CONFID" name="CONFID" value="7"/>
									<input type="hidden" name="USER_ID" value="${fn:escapeXml(sUserId)}"/>
									<input type='hidden' name="BOARD_NUM" value="${fn:escapeXml(jsonObj.get("BOARD_NUM"))}"/>
						  			<div id="fileInfo"></div>
							  	</form>
						  	</div>
					  	</div>
					  	<div class='text-right'>
					  		<a class='btn btn-primary btn-lg mr20' id="boardUpdBtn">수정 완료</a>
					  		<button type="button"  class='btn btn-white btn-lg w100' onclick='window.history.go(-1)'>취소</button>
				  		</div>
					<!--/ Contents Area -->
				</td>
		</tr>
		</tbody>
	</table>
	<div class="wrap-loading display-none">
    <div><img src="<%=request.getContextPath()%>/images/egovframework/gcall/sjsimage/loading.gif" /></div>
	</div>
<%@include file="/WEB-INF/jsp/egovframework/gcall/boardManage/boardCommon/updateBottom.jsp" %>
</body>
</html>