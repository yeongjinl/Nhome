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
	document.getElementById("UPDATE").value = "insert"
	$.ajax({
		type : 'POST',
		url : "/other/counselList.do",
		dataType: "json",
		data: {
			"use" : ""
		},
		success : function(data){
			var contents = '';
			var index = 1;
			$.each(data, function(key,value){
 				contents+='<tr onclick="javascript:popupDetail(\''+value.SIGNMGT_NUM+'\')" class="selected"">';
				contents+='<td>'+changeDateFromet(value.OFDAY)+'</td>';
				contents+='<td>'+changeTimeFromet(value.BEGINHR)+'</td>';
				contents+='<td>'+changeTimeFromet(value.ENDHR)+'</td>';
				contents+='<td>'+value.REGISTDQF+'</td>';
				if(value.USE_YN=="01") {contents+='<td>O</td>';} else {contents+='<td>X</td>';}
				if(value.REGISTER=="admin") {contents+='<td>관리자</td>';} else {contents+='<td>'+value.REGISTER+'</td>';}
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
	if((month+"").length <2) {
		month="0"+month;
	}
	var nowDate = year + "-" + month + "-" + day;
	//게시날짜
	document.getElementById("OFDAY").value = nowDate
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
	$.ajax({
		type : 'POST',
		url : "/other/counselDetail.do",
		dataType: "json",
		data: {"SIGNMGT_NUM" : seq},
		success : function(data){
			document.getElementById("SIGNMGT_NUM").value = data[0].SIGNMGT_NUM
			document.getElementById("OFDAY").value = changeDateFromet(data[0].OFDAY)
			document.getElementById("REGISTDQF").value = data[0].REGISTDQF
			
			if(data[0].BEGINHR==''||data[0].BEGINHR==null||data[0].BEGINHR==undefined){
				$("#BEGINHR").val('01').prop("selected", true);
			} else {
				$("#BEGINHR").val(data[0].BEGINHR).prop("selected", true);
			}
			if(data[0].ENDHR==''||data[0].ENDHR==null||data[0].ENDHR==undefined){
				$("#ENDHR").val('01').prop("selected", true);
			} else {
				$("#ENDHR").val(data[0].ENDHR).prop("selected", true);
			}
			//use
			if(data[0].USE_YN == "01") {
				document.getElementsByName("USE_YN")[0].checked = true;
			} else {
				document.getElementsByName("USE_YN")[1].checked = true;
			}

			document.getElementById("UPDATE").value = "update"
		}
	})
} 

function rdayCheck() {
	
}

function clearButton() {
	//초기화
	document.getElementById("SIGNMGT_NUM").value = ""
	document.getElementById("OFDAY").value = ""
	document.getElementById("BEGINHR").value = ""
	document.getElementById("ENDHR").value = ""
	document.getElementById("REGISTDQF").value = ""
	document.getElementsByName("USE_YN")[0].checked = true;
	document.getElementById("UPDATE").value = "insert"
	document.getElementById("RDAY").value = ""
}

$(document).on("change","#selUse",function(){
	$.ajax({
		type : 'POST',
		url : "/other/counselList.do",
		dataType: "json",
		data: {
			"use" : this.value
		},
		success : function(data){
			var contents = '';
			$.each(data, function(key,value){
 				contents+='<tr onclick="javascript:popupDetail(\''+value.SIGNMGT_NUM+'\')" class="selected"">';
				contents+='<td>'+changeDateFromet(value.OFDAY)+'</td>';
				contents+='<td>'+changeTimeFromet(value.BEGINHR)+'</td>';
				contents+='<td>'+changeTimeFromet(value.ENDHR)+'</td>';
				contents+='<td>'+value.REGISTDQF+'</td>';
				if(value.USE_YN=="01") {contents+='<td>O</td>';} else {contents+='<td>X</td>';}
				if(value.REGISTER=="admin") {contents+='<td>관리자</td>';} else {contents+='<td>'+value.REGISTER+'</td>';}
				contents+='</tr>';
			});
			$('.zoneList').html(contents);
		}
	})
});

$(document).on("change",".time-set",function(){
	if((Number(document.getElementById("BEGINHR").value)>=Number(document.getElementById("ENDHR").value))) {
		$("#BEGINHR").val('01').prop("selected", true);
		$("#ENDHR").val('01').prop("selected", true);
		alert("시간 설정을 확인해주세요.");
	}
});

function changeTimeFromet(hour){
	return hour+":00";
}

function changeDateFromet(date) {
	return date.substring(0,4)+"-"+date.substring(4,6)+"-"+date.substring(6,8)
}

</script>
<script type="text/javascript">
	function effectiveness() {
		// 유효성 검사
		if(document.getElementById("OFDAY").value == "") {
			alert("근무 일시를 입력해주세요.")
			return false
		}else if(document.getElementById("BEGINHR").value == "") {
			alert("시작 시간을 입력해주세요.")
			return false
		}else if(document.getElementById("ENDHR").value == "") {
			alert("종료 시간을 입력해주세요.")
			return false
		}else if((Number(document.getElementById("BEGINHR").value)>=Number(document.getElementById("ENDHR").value))) {
			alert("시간 설정을 확인해주세요.");
			return false
		}else {
			var ofday = $("#OFDAY").val();
			var updateState = $("#UPDATE").val();
			$.ajax({
				type : 'POST',
				url : "/other/bdayCheck.do",
				dataType: "json",
				data: {"OFDAY" : ofday},
				success : function(data){
					if(data!="0"){
						alert("상담 APP에 휴일로 설정되어 있습니다.");
					}else{
						$.ajax({
							type : 'POST',
							url : "/other/rdayCheck.do",
							dataType: "json",
							data: {"OFDAY" : ofday},
							success : function(data){
								if(data=="0"||updateState=="update"){
									$('#codetypeForm').submit();
								}else{
									alert("해당 일자가 이미 등록되어 있습니다.");
								}
							}
						});
					}
				}
			});
		}
	}
</script>

</head>
<body>

	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<tr>
			<td class='leftMenuArea' rowspan="2">
				<ul class='leftMenu' id="otherLeftMenu">
				</ul>
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class='title'>상담시간 관리</div>
					<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 기타관리 <i class='fa fa-chevron-right'></i> <span class='now'>상담시간 관리</span></div>
				</div>
				<div class="panel panel-default writeBox">
  					<div class="panel-heading">
				    	사용 :
				    	<select id="selUse" name="selUse" class='form-control w80' title="검색">
				    		<option value=''>전체</option>
				    		<option value='01'>사용</option>
				    		<option value='00'>미사용</option>
				    	</select>
					</div>
				  <div class="panel-body">
				  		<div class='scroll-body'>
						  	<table class='table table-bordered table-list' style="table-layout: fixed;">
						  		<thead>
						  			<tr>
										<th style="width: 150px;">상담일</th> 
										<th style="width: 100px;">시작시간</th>
										<th style="width: 100px;">종료시간</th>
										<th style="width: 300px;">등록사유</th>
										<th style="width: 50px;">사용여부</th>
										<th style="width: 150px;">등록자</th>
						  			</tr>
						  		</thead>
						  		<tbody class='zoneList'></tbody>
						  	</table>
					  	</div>
					  	<h3>상담시간 관리</h3>
			  			<form  action="/other/regCounsel.do" id="codetypeForm" method="post">
			  				<div class='hidden'>
			  					<input type='hidden' id="CONFID" name="CONFID" value="91"/>
			  					<input type='hidden' id="UPDATE" name="UPDATE" value="insert"/>
			  					<input type='hidden' id="SIGNMGT_NUM" name="SIGNMGT_NUM" value=""/>
			  					<input type='hidden' id="ALARM_TYPE" name="ALARM_TYPE" value="2"/>
			  					<input type='hidden' id="tEndDate" name="tEndDate"/>
			  					<input type='hidden' id="RDAY" name="RDAY" value=""/>
		  					</div>
					  		<table class='table table-bordered'>
					  			<tbody>
					  				<tr>
					  					<th>세부설정</th>
					  					<td class='popupzone_detail'>
					  						<table>
					  							<tbody>
					  								<tr>
						  								<th><label for='OFDAY'>* 근무일시 :</label></th>
						  								<td colspan=3>
						  									<div class='input-group'>
														    	<div class='input-group input-appand date' style='float:left;'>
														    		<input type='text' class='form-control' id='OFDAY'name='OFDAY' style="width: 110px; color:#555; opacity:1;" maxlength="10">
														    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
														    	</div>
														    	<div class='input-group input-appand date' style='float:left;display: none;'>
														    		<input type='text' class='form-control' id='tEndDate'name='tEndDate' style="width: 110px; color:#555; opacity:1;" maxlength="10">
														    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
														    	</div>
													    	</div>
						  								</td>
					  								</tr>
					  								<tr>
						  								<th><label for='BEGINHR'>* 시작시간 :</label></th>
						  								<td colspan="1">
						  									<select class='form-control' id='BEGINHR' name='BEGINHR'>
													    		<option value='01'>01:00</option>
													    		<option value='02'>02:00</option>
													    		<option value='03'>03:00</option>
													    		<option value='04'>04:00</option>
													    		<option value='05'>05:00</option>
													    		<option value='06'>06:00</option>
													    		<option value='07'>07:00</option>
													    		<option value='08'>08:00</option>
													    		<option value='09'>09:00</option>
													    		<option value='10'>10:00</option>
													    		<option value='11'>11:00</option>
													    		<option value='12'>12:00</option>
													    		<option value='13'>13:00</option>
													    		<option value='14'>14:00</option>
													    		<option value='15'>15:00</option>
													    		<option value='16'>16:00</option>
													    		<option value='17'>17:00</option>
													    		<option value='18'>18:00</option>
													    		<option value='19'>19:00</option>
													    		<option value='20'>20:00</option>
													    		<option value='21'>21:00</option>
													    		<option value='22'>22:00</option>
													    		<option value='23'>23:00</option>
												    		</select>
						  								</td>
						  								<th><label for='ENDHR'>* 종료시간 :</label></th>
						  								<td>
						  									<select class='form-control time-set' id='ENDHR' name='ENDHR'>
													    		<option value='01'>01:00</option>
													    		<option value='02'>02:00</option>
													    		<option value='03'>03:00</option>
													    		<option value='04'>04:00</option>
													    		<option value='05'>05:00</option>
													    		<option value='06'>06:00</option>
													    		<option value='07'>07:00</option>
													    		<option value='08'>08:00</option>
													    		<option value='09'>09:00</option>
													    		<option value='10'>10:00</option>
													    		<option value='11'>11:00</option>
													    		<option value='12'>12:00</option>
													    		<option value='13'>13:00</option>
													    		<option value='14'>14:00</option>
													    		<option value='15'>15:00</option>
													    		<option value='16'>16:00</option>
													    		<option value='17'>17:00</option>
													    		<option value='18'>18:00</option>
													    		<option value='19'>19:00</option>
													    		<option value='20'>20:00</option>
													    		<option value='21'>21:00</option>
													    		<option value='22'>22:00</option>
													    		<option value='23'>23:00</option>
													    		
												    		</select>
						  								</td>
					  								</tr>
					  								<tr>
						  								<th><label for='REGISTDQF'>등록사유 :</label></th>
						  								<td colspan=3><input type='text' id='REGISTDQF' name='REGISTDQF' class='form-control' maxlength="50"></td>
					  								</tr>
					  								
					  								<tr>
						  								<th>사용여부 :</th>
						  								<td colspan=3>
						  									<label for='use' class='mr20'><input type='radio' id='use' name='USE_YN' value='01' checked> 사용</label>
						  									<label for='unuse'><input type='radio' id='unuse' name='USE_YN' value='00'> 미사용</label>
						  								</td>
					  								</tr>
					  							
					  							</tbody>
					  						</table>
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
	
</body>
</html>