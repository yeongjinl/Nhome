<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>110콜센터</title>
<%@include file="/WEB-INF/jsp/egovframework/gcall/index/library.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.css"/>
<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/fileUpload.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#summernote').summernote();

	$.ajax({
		type : 'POST',
		url : "/popup/popupList.do",
		dataType: "json",
		data: {
			"use" : "",
			"ALARM_TYPE" : "3"
		},
		success : function(data){
			var contents = '';
			$.each(data, function(key,value){
 				contents+='<tr class="selected">';
				contents+='<td>'+value.ALARM_ID+'</td>';
				contents+='<td onclick="javascript:popupDetail(\''+value.ALARM_ID+'\')">'+value.ALARM_TITLE+'</td>';
				if(value.ALARM_USE=="1") {contents+='<td>O</td>';} else {contents+='<td>X</td>';}
				if(value.REG_ID=="admin") {contents+='<td>관리자</td>';} else {contents+='<td>'+value.REG_ID+'</td>';}
				contents+='</tr>';
			});
			$('.popupList').html(contents);
		}
	})
})
function popupDetail(seq) {
	// 초기화
	$('#summernote').summernote('code', "");
	document.getElementById("top").value = "";
	document.getElementById("left").value = "";
	document.getElementById("UPDATE").value = "update";

	$.ajax({
		type : 'POST',
		url : "/popup/popupDetail.do",
		dataType: "json",
		data: {"ALARM_ID" : seq},
		success : function(data){
			//id
			document.getElementById("ALARM_ID").value = data[0].ALARM_ID
			//title
			document.getElementById("ALARM_TITLE").value = data[0].ALARM_TITLE
			//contents
			$('#summernote').summernote('code', data[0].ALARM_CONTENT);
			// position
			if(data[0].ALARM_POSITION!=null) {
				var postion = data[0].ALARM_POSITION.split(',');
				document.getElementById("top").value = postion[0]
				document.getElementById("left").value = postion[1]
			}
			//use
			if(data[0].ALARM_USE == "1") {
				document.getElementsByName("ALARM_USE")[0].checked = true;
			} else {
				document.getElementsByName("ALARM_USE")[1].checked = true;
			}
		}
	})
}
function clearButton() {
	$('#summernote').summernote('code', "");
	document.getElementById("UPDATE").value = "insert";
}

$(document).on("change","#selUse",function(){
	$.ajax({
		type : 'POST',
		url : "/popup/popupList.do",
		dataType: "json",
		data: {
			"use" : this.value,
			"ALARM_TYPE" : "3"
		},
		success : function(data){
			var contents = '';
			$.each(data, function(key,value){
 				contents+='<tr class="selected">';
				contents+='<td>'+value.ALARM_ID+'</td>';
				contents+='<td onclick="javascript:popupDetail(\''+value.ALARM_ID+'\')">'+value.ALARM_TITLE+'</td>';
				if(value.ALARM_USE=="1") {contents+='<td>O</td>';} else {contents+='<td>X</td>';}
				if(value.REG_ID=="admin") {contents+='<td>관리자</td>';} else {contents+='<td>'+value.REG_ID+'</td>';}
				contents+='</tr>';
			});
			$('.popupList').html(contents);
		}
	})
})
</script>
<script type="text/javascript">
	function effectiveness() {
		// 유효성 검사
		if(document.getElementById("ALARM_TITLE").value == "") {
			alert("제목을 입력해주세요.")
			return false
		} else {
			$('#codetypeForm').submit();
		}
	}
</script>
</head>
<body>
	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp"%>;
		<tr>
			<td class='leftMenuArea'>
				<ul class='leftMenu' id="noticeLeftMenu"></ul>
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class='title'>팝업 관리</div>
					<div class='navi'>
						<i class='fa fa-home'></i>
						<i class='fa fa-chevron-right'></i>
						공지관리
						<i class='fa fa-chevron-right'></i>
						<span class='now'>팝업관리</span>
					</div>
				</div>
				<div class="panel panel-default writeBox">
					<div class="panel-heading">
				    	사용 :
				    	<select id="selUse" name="selUse" class='form-control w80' title="검색">
				    		<option value=''>전체</option>
				    		<option value='1'>사용</option>
				    		<option value='0'>미사용</option>
				    	</select>
					</div>
					<div class="panel-body">
						<div class='col-xs-5 '>
							<div class='scroll-body' style='height: 72vh;'>
								<table class='table table-bordered table-list'>
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>사용</th>
											<th>등록자</th>
										</tr>
									</thead>
									<tbody class='popupList'>
									</tbody>
								</table>
							</div>
							<div class='helpBox'>
								공지사항은 5개가 최대입니다.<br> 오른쪽 에디터에 공지사항에 해당하는 내용을 작성하시면 됩니다.<br>
								화면위치를 설정하지 않을 경우 화면 가운데에 위치하게 됩니다.
							</div>
						</div>
						<div class='col-xs-7'>
							<form  action="/popup/regProc.do" id="codetypeForm" method="post" enctype="multipart/form-data">
								<div class='hidden'>
									<input type='hidden' id="CONFID" name="CONFID" value="90"/>
									<input type='hidden' id="UPDATE" name="UPDATE" value="insert"/>
									<input type='hidden' id="ALARM_ID" name="ALARM_ID" value=""/>
									<input type='hidden' id="ALARM_TYPE" name="ALARM_TYPE" value="3"/>
								</div>
								<table class='table table-bordered'>
									<tbody class='popupDetail'>
										<tr>
											<th><label for='title'>제목</label></th>
											<td colspan=3><input type='text' id='ALARM_TITLE' name='ALARM_TITLE' class='form-control'></td>
										</tr>
										<tr>
											<th><label for='contents'>내용</label></th>

											<td colspan=3>
												<textarea id="summernote" name="ALARM_CONTENT" title="내용"></textarea>
											</td>
										</tr>
										<tr>
											<th>위치</th>
											<td>
												<label for='top'>TOP :</label>
												<input type='text' id='top' name='ALARM_POSITION' class='form-control w80'>
												<label for='left'>LEFT	:</label>
												<input type='text' id='left' name='ALARM_POSITION' class='form-control w80'>
											</td>
											<th>사용여부</th>
											<td style="vertical-align: middle;">
												<input type='radio' id='use'  name='ALARM_USE' value='1'checked> <label for='use'>사용</label>
												<input type='radio' id='unuse' name='ALARM_USE' value='0'> <label for='unuse'>미사용</label>
											</td>
										</tr>
									</tbody>
								</table>
								<div class='text-right'>
									<button class='btn btn-primary btn-lg mr20 w100' type="button" onclick='effectiveness()'>저장</button>
									<button class='btn btn-white btn-lg w100' type="reset" onclick='clearButton()'>취소</button>
								</div>
							</form>
						</div>
					</div>
				</div> <!--/ Contents Area -->
			</td>
		</tr>
	</table>

</body>
</html>