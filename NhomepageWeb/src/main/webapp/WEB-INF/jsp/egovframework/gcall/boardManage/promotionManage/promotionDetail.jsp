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
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/lightbox.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/custom.css"/>
<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/handlebars.min.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/lightbox.js"></script>
<%@include file="/WEB-INF/jsp/egovframework/gcall/boardManage/boardCommon/detailTop.jsp" %>
<title>110콜센터- 홍보자료 상세</title>
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
<style>
/*fontsize*/
	.note-editable{
	font-size:14px
	}
</style>
</head>
<body>
	<table class='layout' summary="홍보자료 상세 ">
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<caption style="display:none">홍보자료 상세</caption>
		<tbody>
			<tr>
				<td scope="col" class='leftMenuArea'>
					<ul class='leftMenu' id="leftMenu">
					</ul>
				</td>
					<td scope="col" class='contentArea'>
						<!-- Contents Area -->
						<div class='page-title'>
							<div class='title'>홍보자료 관리</div>
							<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 게시물관리 <i class='fa fa-chevron-right'></i> <span class='now'>홍보자료관리</span> <i class='fa fa-chevron-right'></i> <span class='now'>게시물 상세</span></div>
						</div>


						<div class="panel panel-default writeBox">
							<div class="panel-heading">게시물 상세</div>
						  	<div class="panel-body">
							  	<table class='table table-bordered' summary="홍보자료상세">
							  		<caption style="display:none">홍보자료 상세</caption>
							  			<tbody>
							  				<tr>
							  					<th scope="col"  ><label for="title" title="제목">제목</label></th>
							  					<td scope="col" colspan=3>
								  					<input type='text' id="title" name="TITLE" class='form-control' value="<%=CmmUtil.nvl(jsonObj.get("BOARD_TITLE").toString()) %>" readonly="readonly" title="제목">
							  					</td>
							  				</tr>
							  				<tr>
								  				<th scope="col"><label for="BOARD_REG_DATE" title="제목">등록일</label></th>
								  				<td scope="col"  colspan=3>
								  					<div class='input-group input-appand reg-date'>
									  					<input type='text' class='form-control' id='BOARD_REG_DATE'name='BOARD_REG_DATE' style="width: 110px; color:#555; opacity:1;" maxlength="10" readonly="readonly">
									  					<label class="input-group-addon" for="BOARD_REG_DATE" style="pointer-events:none;">
									    					<i class="fa fa-calendar"></i>
									  					</label>
									    			</div>
								  				</td>
								  			</tr>
							  				<tr>
							  					<th scope="col"  ><label for="email" title="이메일">이메일</label></th>
							  					<td scope="col"  colspan=3>
								  					<input type='text' id="email" name="EMAIL" class='form-control'value="<%=CmmUtil.nvl(jsonObj.get("BOARD_EMAIL").toString()) %>" readonly="readonly" title="이메일">
							  					</td>
							  				</tr>
							  				<tr>
							  					<th scope="col">내용</th>
												 <td scope="col"  colspan="3">
													<textarea id="summernote" name="CONTENT"  readonly title="내용">
													 <%=jsonObj.get("BOARD_CONTENTS") %>
													 </textarea>
												 </td>
							  				</tr>
							  				<tr>
							  					<th scope="col">첨부파일</th>
							  					<td scope="col">
							  					  <div class="box box-primary">
											       <div class="box-footer">
											            <ul style="display:-webkit-box;list-style: none;width:100%;overflow:scroll "  class="mailbox-attachments clearfix uploadedFileList"></ul>
											        </div>
											    </div>
							  					</td>
							  					<td scope="col">
								  					<input type='checkbox' id="isTop" name="IS_TOP" value="<%=jsonObj.get("IS_TOP") %>" disabled="disabled" title="상단 위치">
								  					<label for="isTop" title="상단 위치">게시물 상단의 위치합니다.</label>
							  					</td>
							  				</tr>
							  			</tbody>
							  		</table>
							  	</div>
							  </div>
							  		<div class='text-right'>
							  		<c:if test="${PROMOTION_AUTH eq '1' or sUserType eq '0'}">
							  			<a class='btn btn-primary btn-lg mr20 w100' href="/promotion/updateView.do?confId=<%=jsonObj.get("CONF_ID") %>&boardNum=<%=jsonObj.get("BOARD_NUM") %>">수정</a>
									    <a class='btn btn-danger btn-lg mr20 w100' onclick="deleteBoard()">삭제</a>
									    <button type="button" class='btn btn-white btn-lg w100' onclick='window.history.go(-1)'>취소</button>
									</c:if>
									<c:if test="${CONSULT_AUTH ne '1' and sUserType ne '0'}">
									    <button type="button" class='btn btn-white btn-lg w100' onclick='window.history.go(-1)'>돌아가기</button>
									</c:if>
						  		</div>
						<!--/ Contents Area -->
					</td>
			</tr>
		</tbody>
	</table>
	<script>
	function deleteBoard(){
		var result = confirm('삭제하시겠습니까?');
		if(result==true){
			location.href="/promotion/deleteBoard.do?confId=<%=jsonObj.get("CONF_ID")%>&boardNum=<%=jsonObj.get("BOARD_NUM")%>";
		}else{
			return false
		}
	}
	</script>
<%-- 		<%if(PROMOTION_AUTH.equals("1")||sUserType.equals("0")){ %>
		<script>
		//댓글리스트 ajax // 첫화면
		$.ajax({
			url:"/boardReply/list.do",
			data:{
				"confId":<%=jsonObj.get("CONF_ID")%>,
				"boardNum":<%=jsonObj.get("BOARD_NUM")%>,
				"curPage":1
			},
			success:function(data){
				$('#boardReplyListView').html(data);
			}
		})
		</script>
		<div id="boardReplyListView">
		</div>
		<%} %> --%>
</body>
</html>