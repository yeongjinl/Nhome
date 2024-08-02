<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>110콜센터- 공지사항 등록</title>
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
	document.getElementById('BOARD_REG_DATE').value = year+"-"+month+"-"+day;
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
	<table class='layout' summary="공지사항 등록">
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<tbody>
			<tr>
				<td scope="col" class='leftMenuArea'>
					<ul class='leftMenu' id="leftMenu">
					</ul>
				</td>
				<td scope="col"  class='contentArea'>
					<!-- Contents Area -->
					<div class='page-title'>
						<div class='title'>공지사항 관리</div>
						<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 게시물관리 <i class='fa fa-chevron-right'></i> <span class='now'>공지사항	관리</span> <i class='fa fa-chevron-right'></i> <span class='now'>게시물 등록</span></div>
					</div>
					<div class="panel panel-default writeBox">
							<div class="panel-heading">게시물 등록</div>
						  	<div class="panel-body">
								<form  action="/notice/regProc.do" method="post">
							  		<table class='table table-bordered' summary="공지사항 등록을 나타냅니다.">
							  		<caption style="display:none">공지사항관리 등록</caption>
							  			<tbody>
								  			<tr>
								  				<th scope="col"><label for="TITLE" title="제목">제목</label></th>
								  				<td scope="col"  colspan=3>
									  				<input type='text' id="TITLE" name="TITLE"  title="제목" class='form-control' placeholder="제목을 입력해주세요">
								  				</td>
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
								  				<th scope="col"><label for="EMAIL"  title="이메일">이메일</label></th>
								  				<td scope="col"  colspan=3>
													<input type='text' id="EMAIL" name="EMAIL" title="이메일"  value='${fn:escapeXml(sUserEmail)}' class='form-control' placeholder="이메일을 입력해주세요">
								  				</td>
								  			</tr>
							  				<tr>
							  					<th scope="col">내용</th>
												 <td scope="col"  colspan="3">
													 <textarea id="summernote" name="CONTENT"  title="내용" escapeXml="false">
													 </textarea>
  													 <span style="color:red;">※ 원문정보가 있는 콘텐츠는 반드시 출처, 작성자, 작성일을 표시해야 합니다.</span>
												 </td>
							  				</tr>
							  				<tr>
								  				<th scope="col">첨부파일</th>
								  				<td scope="col"  style="width:70%;text-align: center">
												    <div class="box box-primary" style="width: 80%;margin:0 auto">
												        <div class="box-body">
												            <%--첨부파일 영역 추가--%>
												            <div class="form-group">
												            <label for="fileUp" class="fileDrop" title="파일첨부">
												                    <p class="text-center"><i class="fa fa-paperclip"></i> 클릭하면 첨부파일을 등록할 수 있습니다..</p>
							                    					<span>※ 동영상 첨부최대 용량 10MB / 첨부가능 확장자 .wmv .mp4 .avi .webm .ogg</span><br>
 																	<span> 이미지 첨부최대 용량 10MB / 첨부가능 확장자는 .jpeg. png, .gif, .doc, .hwp, .ppt, .pptx, .xlsx, .pdf, .zip</span>
												             </label>
												                <input type="file"  id="fileUp" title="파일첨부" style="display:none"/>
												            </div>
												            <%--첨부파일 영역 추가--%>
												        </div>
												        <div class="box-footer">
												            <ul style="display:-webkit-box;list-style: none;width:100%;overflow:scroll "  class="mailbox-attachments clearfix uploadedFileList"></ul>
												        </div>
												    </div>
											   </td>
							  					<td scope="col">
								  					<label for="isTop">
								  						<input type='checkbox' id="isTop" name="IS_TOP" value="0" title="상단 위치" > 게시물상단에 항상 위치합니다.
								  					</label>
							  					</td>
							  				</tr>
						  			</tbody>
						  			<tfoot></tfoot>
					  		</table>
					  		<input type='hidden' id="CONFID" name="CONFID" value="51"/>
							<input type="hidden" name="USER_ID" value="${fn:escapeXml(sUserId)}"/>
					  		<div id="fileInfo"></div>
					  			<div class='text-right'>
								<!--/ Contents Area -->
								  <div class="box box-primary">
									  <div class="box-footer">
								          <div class="pull-right">
								              <button id="boardRegBtn" class="btn btn-success"><i class="fa fa-save"></i> 등록</button>
								              <button type="button"  class='btn btn-primary' onclick='window.history.go(-1)'>취소</button>
								          </div>
							      	  </div>
								  </div>
								</div>
					  		</form>
					</div>
				</div>
			</td>
		</tr>
	</tbody>
	<tfoot></tfoot>
	</table>
	<div class="wrap-loading display-none">
    <div><img src="<%=request.getContextPath()%>/images/egovframework/gcall/sjsimage/loading.gif" /></div>
	</div>
<%@include file="/WEB-INF/jsp/egovframework/gcall/boardManage/boardCommon/regBottom.jsp" %>
</body>
</html>