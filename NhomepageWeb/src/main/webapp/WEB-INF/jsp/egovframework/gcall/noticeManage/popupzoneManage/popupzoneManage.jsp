<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>110콜센터</title>
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<style>
.contentArea .table-list.table-bordered .zoneList tr td{overflow: hidden;text-overflow:ellipsis;white-space: nowrap;}
</style>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/lightbox.css"/>
<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/handlebars.min.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/fileUpload.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/lightbox.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#summernote').summernote();
	document.getElementById("UPDATE").value = "insert"
	$.ajax({
		type : 'POST',
		url : "/popup/popupList.do",
		dataType: "json",
		data: {
			"use" : "",
			"ALARM_TYPE" : "2"
		},
		success : function(data){
			var contents = '';
			$.each(data, function(key,value){
 				contents+='<tr onclick="javascript:popupDetail(\''+value.ALARM_ID+'\')" class="selected"">';
				contents+='<td>'+value.ALARM_ID+'</td>';
				contents+='<td>'+value.ALARM_TITLE+'</td>';
				if(value.ALARM_REAL_PATH == "") {
					contents+='<td></td>';
				} else {
					contents+='<td><img style="width: 240px; height: 150px;" src="https://www.110.go.kr'+value.ALARM_REAL_PATH+'" alt="'+value.ALARM_ID+'"></td>';
				}
				contents+='<td>'+value.ALARM_LINK_URL+'</td>';
				if(value.ALARM_TARGET==null||value.ALARM_TARGET==undefined||value.ALARM_TARGET=='') {contents+='<td>-</td>';} else {contents+='<td>'+value.ALARM_TARGET+'</td>';}
				if(value.ALARM_USE=="1") {contents+='<td>O</td>';} else {contents+='<td>X</td>';}
				if(value.REG_ID=="admin") {contents+='<td>관리자</td>';} else {contents+='<td>'+value.REG_ID+'</td>';}
				contents+='</tr>';
			});
			$('.zoneList').html(contents);
		}
	})

	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth()+1;
	var day = date.getDate();
	if((day+"").length <2) {
		day="0"+day;
	}
	var nowDate = year + "-" + month + "-" + day;
	//게시날짜
	document.getElementById("tStartDate").value = nowDate
	document.getElementById("tEndDate").value = nowDate
	$(function() {
		$('.input-appand.date').not('.month').datepicker({
			format: "yyyy-mm-dd",
			language: "kr",
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true
		 });
	})
})
function popupDetail(seq) {
	if(document.getElementsByClassName('uploadedFileList')[0].childElementCount>1){
		var pImg = document.getElementsByClassName('uploadedFileList')[0];
		pImg.removeChild(document.getElementById("regImg2"))
		pImg.removeChild(document.getElementById("file_name"))
		pImg.removeChild(document.getElementById("req_file_name"))
		pImg.removeChild(document.getElementById("req_real_path"))
	}
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
			document.getElementById("tStartDate").value = data[0].ALARM_START_DATE.substring(0,4)+"-"+data[0].ALARM_START_DATE.substring(4,6)+"-"+data[0].ALARM_START_DATE.substring(6,8)
			document.getElementById("tEndDate").value = data[0].ALARM_END_DATE.substring(0,4)+"-"+data[0].ALARM_END_DATE.substring(4,6)+"-"+data[0].ALARM_END_DATE.substring(6,8)
			document.getElementById("ALARM_LINK_URL").value = data[0].ALARM_LINK_URL
			if(data[0].ALARM_TARGET==''||data[0].ALARM_TARGET==null||data[0].ALARM_TARGET==undefined){
				$("#ALARM_TARGET").val('0').prop("selected", true);
			} else {
				$("#ALARM_TARGET").val(data[0].ALARM_TARGET).prop("selected", true);
			}
			//use
			if(data[0].ALARM_USE == "1") {
				document.getElementsByName("ALARM_USE")[0].checked = true;
			} else {
				document.getElementsByName("ALARM_USE")[1].checked = true;
			}
			document.getElementById("ALARM_ORIGINAL_NAME").value = data[0].ALARM_ORIGINAL_NAME
			document.getElementById("ALARM_REAL_PATH").value = data[0].ALARM_REAL_PATH
 			document.getElementById("regImg").src = "https://www.110.go.kr"+data[0].ALARM_REAL_PATH
			document.getElementById("regImg").alt = data[0].ALARM_ID
			document.getElementById("UPDATE").value = "update"
		}
	})
}
function clearButton() {
	//초기화
	document.getElementById("ALARM_ID").value = ""
	document.getElementById("ALARM_TITLE").value = ""
	document.getElementById("ALARM_LINK_URL").value = ""
	document.getElementsByName("ALARM_USE")[0].checked = true;
	document.getElementById("ALARM_ORIGINAL_NAME").value = ""
	document.getElementById("ALARM_REAL_PATH").value = ""
	document.getElementById("regImg").src = ""
	document.getElementById("regImg").alt = ""
	document.getElementById("UPDATE").value = "insert"
}

$(document).on("change","#selUse",function(){
	$.ajax({
		type : 'POST',
		url : "/popup/popupList.do",
		dataType: "json",
		data: {
			"use" : this.value,
			"ALARM_TYPE" : "2"
		},
		success : function(data){
			var contents = '';
			$.each(data, function(key,value){
 				contents+='<tr onclick="javascript:popupDetail(\''+value.ALARM_ID+'\')" class="selected">';
				contents+='<td>'+value.ALARM_ID+'</td>';
				contents+='<td>'+value.ALARM_TITLE+'</td>';
				contents+='<td><img style="width: 240px; height: 150px;" src="https://www.110.go.kr'+value.ALARM_REAL_PATH+'" alt="'+value.ALARM_ID+'" class="h100"></td>';
				contents+='<td>'+value.ALARM_LINK_URL+'</td>';
				if(value.ALARM_TARGET==null||value.ALARM_TARGET==undefined||value.ALARM_TARGET=='') {contents+='<td>-</td>';} else {contents+='<td>'+value.ALARM_TARGET+'</td>';}
				if(value.ALARM_USE=="1") {contents+='<td>O</td>';} else {contents+='<td>X</td>';}
				if(value.REG_ID=="admin") {contents+='<td>관리자</td>';} else {contents+='<td>'+value.REG_ID+'</td>';}
				contents+='</tr>';
			});
			$('.zoneList').html(contents);
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
		} else if(document.getElementById("tStartDate").value == "") {
			alert("시작 날짜를 입력해주세요.")
			return false
		} else if(document.getElementById("tEndDate").value == "") {
			alert("종료 날짜를 입력해주세요.")
			return false
		} else if(document.getElementById("ALARM_LINK_URL").value == "") {
			alert("링크을 입력해주세요.")
			return false
		} else {
			$('#codetypeForm').submit();
		}
	}
</script>
</head>
<body>

	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>;
		<tr>
			<td class='leftMenuArea'>
				<!-- LeftMenu Area -->
					<ul class='leftMenu' id="noticeLeftMenu"></ul>
				<!--/ LeftMenu Area -->
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class='title'>팝업존 관리</div>
					<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 공지관리 <i class='fa fa-chevron-right'></i> <span class='now'>팝업존 관리</span></div>
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
				  		<div class='scroll-body'>
						  	<table class='table table-bordered table-list' style="table-layout:fixed;">
						  		<thead>
						  			<tr>
										<th style="width: 80px;">번호</th>
										<th style="width: 350px;">제목</th>
										<th style="width: 250px;">이미지</th>
										<th style="width: 220px;">배너링크</th>
										<th style="width: 60px;">유형</th>
										<th style="width: 50px;">사용</th>
										<th style="width: 65px;">등록자</th>
						  			</tr>
						  		</thead>
						  		<tbody class='zoneList'></tbody>
						  	</table>
					  	</div>
					  	<h3>팝업존 관리</h3>
			  			<form  action="/popup/regProc.do" id="codetypeForm" method="post">
			  				<div class='hidden'>
			  					<input type='hidden' id="CONFID" name="CONFID" value="91"/>
			  					<input type='hidden' id="UPDATE" name="UPDATE" value="insert"/>
			  					<input type='hidden' id="ALARM_ID" name="ALARM_ID" value=""/>
			  					<input type='hidden' id="ALARM_TYPE" name="ALARM_TYPE" value="2"/>
		  					</div>
					  		<table class='table table-bordered'>
					  			<tbody>
					  				<tr>
					  					<th><label for='ALARM_TITLE'>* 팝업제목</label></th>
					  					<td colspan=2><input type='text' id='ALARM_TITLE' name='ALARM_TITLE' class='form-control'></td>
					  				</tr>
					  				<tr>
					  					<th>팝업세부설정</th>
					  					<td class='popupzone_detail'>
					  						<table>
					  							<tbody>
					  								<tr>
						  								<th><label for='tStartDate'>* 게시날짜 :</label></th>
						  								<td colspan=3>
						  									<div class='input-group'>
														    	<div class='input-group input-appand date' style='float:left;'>
														    		<input type='text' class='form-control' id='tStartDate'name='tStartDate' style="width: 110px; color:#555; opacity:1;" maxlength="10">
														    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
														    	</div>
														    	<div class='input-group input-appand date' style='float:left;'>
														    		<input type='text' class='form-control' id='tEndDate'name='tEndDate' style="width: 110px; color:#555; opacity:1;" maxlength="10">
														    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
														    	</div>
													    	</div>
						  								</td>
					  								</tr>
					  								<tr>
						  								<th><label for='ALARM_LINK_URL'>* 링크 :</label></th>
						  								<td colspan=3><input type='text' id='ALARM_LINK_URL' name='ALARM_LINK_URL' class='form-control'></td>
					  								</tr>
					  								<tr>
						  								<th><label for='ALARM_TARGET'>링크유형 :</label></th>
						  								<td colspan=3>
						  									<select class='form-control' id='ALARM_TARGET' name='ALARM_TARGET'>
													    		<option value='0'>선택</option>
													    		<option value='_blank'>_blank</option>
													    		<option value='_parent'>_parent</option>
													    		<option value='_self'>_self</option>
												    		</select>
						  								</td>
					  								</tr>
					  								<tr>
						  								<th>사용여부 :</th>
						  								<td colspan=3>
						  									<label for='use' class='mr20'><input type='radio' id='use' name='ALARM_USE' value='1' checked> 사용</label>
						  									<label for='unuse'><input type='radio' id='unuse' name='ALARM_USE' value='0'> 미사용</label>
						  								</td>
					  								</tr>
					  								<tr>
						  								<th><label for='ALARM_ORIGINAL_NAME'>원본이름 :</label></th>
						  								<td><input type='text' id='ALARM_ORIGINAL_NAME' name='ALARM_ORIGINAL_NAME' style='width:auto; pointer-events:none; background-color:#eee; color:#555; opacity:1;' class='form-control'></td>
						  								<th><label for='ALARM_REAL_PATH'>실경로 :</label></th>
						  								<td><input type='text' id='ALARM_REAL_PATH' style='width:auto; pointer-events:none; background-color:#eee; color:#555; opacity:1;' name='ALARM_REAL_PATH' class='form-control'></td>
					  								</tr>
					  								<tr>
						  								<th><label for='img'>이미지 :</label></th>
						  								<td colspan=3>
											                <input type="file" id="fileUp" title="사진추가" style="display:none" accept="image/*"/>
												            <div class="form-group" style="margin-bottom: 0px;">
													            <label for="fileUp"  class="fileDrop" title="사진추가" style="margin-bottom: 0px;">
												                    <span id='img_add' name='img_add' class="btn btn-white">사진 추가하기 </span>
													             </label>
												            </div>
						  								</td>
					  								</tr>
					  							</tbody>
					  						</table>
					  					</td>
					  					<td class='w300 uploadedFileList'>
					  						<img style="width:100%;" src="" id="regImg" name="regImg" class="img-responsive" onload='regButton()' alt="">
					  					</td>
					  				</tr>
					  			</tbody>
					  		</table>
				  		<div class='text-center'>
					  		<button class='btn btn-primary btn-lg mr20 w100' type="button" onclick='effectiveness()'>저장</button>
					  		<button class='btn btn-white btn-lg w100' type="reset" onclick='clearButton()'>취소</button>
				  		</div>
			  		</form>
				  </div>
				</div>
				<!--/ Contents Area -->
			</td>
		</tr>
	</table>
	<script id="fileTemplate" type="text/x-handlebars-template">
        <img style="width:100%;" src="https://www.110.go.kr{{{imgSrc}}}" id="regImg2" name="regImg" class="img-responsive" onload='regButton()' alt="이미지">
		<input type='hidden' id='file_name' name='FILE_NAME'value={{{fileName}}}>
		<input type='hidden' id='req_file_name' name='ORIGINAL_FILE_NAME' value={{{originalFileName}}}>
		<input type='hidden' id='req_real_path' name='REAL_PATH' value={{{realPath}}}>
	</script>
	<script>
	//Handlebars 파일템플릿 컴파일
	var fileTemplate = Handlebars.compile($("#fileTemplate").html());
	var fileDropDiv = $(".fileDrop");
	</script>
	<script>
	function regButton() {
		document.getElementById("ALARM_ORIGINAL_NAME").value = document.getElementById("req_file_name").value
		document.getElementById("ALARM_REAL_PATH").value = document.getElementById("req_real_path").value +"/"+document.getElementById("file_name").value
		console.log("이미지 Load");
	}
	$(document).on("change","#fileUp",function(){
		if(this.value.length>0) {
			var pImg = document.getElementsByClassName('uploadedFileList')[0];
			document.getElementById("ALARM_ORIGINAL_NAME").value = ""
			document.getElementById("ALARM_REAL_PATH").value = ""
			document.getElementById("regImg").src = ""
			document.getElementById("regImg").alt = ""
			pImg.removeChild(document.getElementById("regImg2"))
			pImg.removeChild(document.getElementById("file_name"))
			pImg.removeChild(document.getElementById("req_file_name"))
			pImg.removeChild(document.getElementById("req_real_path"))
		}
	})
	</script>
</body>
</html>