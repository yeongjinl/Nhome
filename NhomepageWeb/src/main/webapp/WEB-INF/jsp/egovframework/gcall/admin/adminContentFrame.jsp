<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String, Object>> time_list = (List<HashMap<String, Object>>)request.getAttribute("time_list");
	List<HashMap<String, Object>> day_list = (List<HashMap<String, Object>>)request.getAttribute("day_list");
	List<HashMap<String, Object>> month_list = (List<HashMap<String, Object>>)request.getAttribute("month_list");
	List<HashMap<String, Object>> list = (List<HashMap<String, Object>>)request.getAttribute("list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<title>110콜센터-서브 관리자 관리</title>
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
	var nowDate = year + "-" + month + "-" + day;
	var firstDayDate = year + "-" + month + "-01"
	var lastYearDate = (year-1) + "-" + month;
	var YearDate = year + "-" + month;
	//시간대별 방문자
	document.getElementsByName('startDate')[0].value = nowDate;
	document.getElementsByName('endDate')[0].value = nowDate;
	//일별 방문자
	document.getElementsByName('startDate')[1].value = firstDayDate;
	document.getElementsByName('endDate')[1].value = nowDate;
	//월별 방문자
	document.getElementsByName('startDate')[2].value = lastYearDate;
	document.getElementsByName('endDate')[2].value = YearDate;
	$(function() {
		$('.input-appand.date').not('.month').datepicker({
			format: "yyyy-mm-dd",
			language: "kr",
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true
		 });
		$('.month').datepicker({
			format: "yyyy-mm",
			language: "kr",
			startView: 1,
			minViewMode: 1,
			maxViewMode: 1,
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true,
		 });
	})
	/*  */
	var timeCall = document.getElementById("time").childNodes[5];
	var dayCall = document.getElementById("day").childNodes[5];
	var monthCall = document.getElementById("month").childNodes[5];

	startCall(timeCall);
	startCall(dayCall);
	startCall(monthCall);

	function startCall(index) {
		console.log(index);
		var form = document.getElementById(index.value);
		var sql_id = index.value;
		var start_date = document.getElementById(index.value)[0].value;
		var end_date = document.getElementById(index.value)[1].value;
		$.ajax({
			type : 'POST',
			url : "/g110/statRetrieve.do",
			data : {
				'sql_id' : sql_id,
				'start_date' : start_date,
				'end_date' : end_date
			},
			dataType: "json",
			success : function(data){
				var contents="";
	 			$.each(data, function(key,value){
					contents+='<tr class="selected">';
					contents+='<td style="height:auto; width:59px">'+((key-data.length)*-1)+'</td>';
					contents+='<td style="height:auto; width:116px">'+value.CONNECT_DATE+'</td>';
					contents+='<td style="height:auto; width:97px">'+value.YOIL+'</td>';
					if(sql_id=="time") {
						contents+='<td style="height:auto; width:98px">'+value.CONNECT_TIME+'</td>';
					}
					contents+='<td style="height:auto; width:99px">'+value.CONNECT_CNT+'</td>';
					contents+='</tr>';
				});
				if(sql_id=="time")$('#timeSearchList').html(contents);
				if(sql_id=="day")$('#daySearchList').html(contents);
				if(sql_id=="month")$('#monthSearchList').html(contents);
			}
		})
	}
	/*  */
});



</script>
<script>
$(document).on( "click", ".search", function(){
	var form = document.getElementById(this.value);
	var sql_id = this.value;
	var start_date = document.getElementById(this.value)[0].value;
	var end_date = document.getElementById(this.value)[1].value;
	$.ajax({
		type : 'POST',
		url : "/g110/statRetrieve.do",
		data : {
			'sql_id' : sql_id,
			'start_date' : start_date,
			'end_date' : end_date
		},
		dataType: "json",
		success : function(data){
			var contents="";
 			$.each(data, function(key,value){
				contents+='<tr class="selected">';
				contents+='<td style="height:auto; width:59px">'+((key-data.length)*-1)+'</td>';
				contents+='<td style="height:auto; width:116px">'+value.CONNECT_DATE+'</td>';
				contents+='<td style="height:auto; width:97px">'+value.YOIL+'</td>';
				if(sql_id=="time") {
					contents+='<td style="height:auto; width:98px">'+value.CONNECT_TIME+'</td>';
				}
				contents+='<td style="height:auto; width:99px">'+value.CONNECT_CNT+'</td>';
				contents+='</tr>';
			});
			if(sql_id=="time")$('#timeSearchList').html(contents);
			if(sql_id=="day")$('#daySearchList').html(contents);
			if(sql_id=="month")$('#monthSearchList').html(contents);
		}
	})
});
</script>
<style>
.contentArea .visit .table-list.table-bordered tbody tr td{
    padding: 6px 8px !important;
}
</style>
</head>
<body>
	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<tr>
			<td class='leftMenuArea' rowspan="2">
				<!-- LeftMenu Area -->
				<ul class='leftMenu'>
					<li class='ttl'>정부민원안내콜센터</li>
					<li class="active"><a href='/subManage/list.do'>홈페이지 방문자 통계</a></li>
				</ul>
				<!--/ LeftMenu Area -->
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class="title">홈페이지 방문자 통계</div>
				</div>
				<table class='visit' style="width:100%">
					<tr>
						<td rowspan="2">
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 825px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 시간대별 방문자</div>
								<div class="panel panel-default">
								  <div class="panel-body">
								  	<form class="form-inline text-center" id="time" method="post">
			  							<div class="form-group">
			  								<label for="tStartDate"><span>조회일자 :</span></label>
									    	<div class='input-group input-appand date'>
									    		<input type='text' class='form-control' id='tStartDate'name='startDate' style="width: 110px; /* pointer-events:none */; color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
			  							<div class="form-group">
									    	<label for="tEndDate"><span> ~ </span></label>
									    	<div class='input-group input-appand date'>
									    		<input type='text' class='form-control' id='tEndDate'name='endDate' style="width: 110px; /* pointer-events:none; */ color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
								    	<button type='button' class='btn btn-primary search' name="search" value="time"><i class="fa fa-search"></i> 검색</button>
							    	</form>
								  </div>
								</div>
							  	<table class='table-bordered table-list' style='width: 100%'>
							  		<thead>
							  			<tr>
							  				<th style="height:auto; width:59px">번호</th>
							  				<th style="height:auto; width:116px">방문날짜</th>
							  				<th style="height:auto; width:97px">방문요일</th>
							  				<th style="height:auto; width:98px">방문시간대</th>
							  				<th style="height:auto; width:99px">방문자수</th>
							  			</tr>
							  		</thead>
						  		</table>
								<div style="width:100%; height:630px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="timeSearchList">
										<% for(int i=0; i < time_list.size(); i++) { %>
											<tr class="selected">
												<td style="height:auto; width:59px"><%=time_list.size()-i%></td>
												<td style="height:auto; width:116px"><%=time_list.get(i).get("CONNECT_DATE")%></td>
												<td style="height:auto; width:97px"><%=time_list.get(i).get("YOIL")%></td>
												<td style="height:auto; width:98px"><%=time_list.get(i).get("CONNECT_TIME")%></td>
												<td style="height:auto; width:99px"><%=time_list.get(i).get("CONNECT_CNT")%></td>
											</tr>
										<%}%>
								  		</tbody>
								  	</table>
							  	</div>
							  </div>
						  </div>
						</td>
						<td>
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 400px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 일별 방문자</div>
								<div class="panel panel-default">
								  <div class="panel-body">
								  	<form class="form-inline text-center" id="day" method="post">
			  							<div class="form-group">
									    	<label for="dStartDate"><span>조회일자 :</span></label>
									    	<div class='input-group input-appand date'>
									    		<input type='text' class='form-control' id='dStartDate' name='startDate' style="width: 110px; pointer-events:none; color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
			  							<div class="form-group">
									    	<label for="dEndDate"><span> ~ </span></label>
									    	<div class='input-group input-appand date'>
									    		<input type='text' class='form-control' id='dEndDate'name='endDate' style="width: 110px; pointer-events:none; color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
								    	<button type='button' class='btn btn-primary search' name="search" value="day"><i class="fa fa-search"></i> 검색</button>
							    	</form>
								  </div>
								</div>
								<table class='table-bordered table-list' style='width: 100%'>
							  		<thead>
							  			<tr>
							  				<th style="height:auto; width:59px">번호</th>
							  				<th style="height:auto; width:116px">방문날짜</th>
							  				<th style="height:auto; width:97px">방문요일</th>
							  				<th style="height:auto; width:99px">방문자수</th>
							  			</tr>
							  		</thead>
						  		</table>
								<div style="width:100%; height:210px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="daySearchList">
										<% for(int i=0; i < day_list.size(); i++) { %>
											<tr class="selected">
												<td style="height:auto; width:59px"><%=day_list.size()-i%></td>
												<td style="height:auto; width:116px"><%=day_list.get(i).get("CONNECT_DATE")%></td>
												<td style="height:auto; width:97px"><%=day_list.get(i).get("YOIL")%></td>
												<td style="height:auto; width:99px"><%=day_list.get(i).get("CONNECT_CNT")%></td>
											</tr>
										<%}%>
								  		</tbody>
								  	</table>
							  	</div>
							  </div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 400px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 월별 방문자</div>
								<div class="panel panel-default">
								  <div class="panel-body">
								  	<form class="form-inline text-center" id="month" method="post">
			  							<div class="form-group">
									    	<label for="mStartDate"><span>조회일자 :</span></label>
									    	<div class='input-group input-appand date month'>
									    		<input type='text' class='form-control' id='mStartDate'name='startDate' style="width: 110px; pointer-events:none; color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
			  							<div class="form-group">
									    	<label for="mEndDate"><span> ~ </span></label>
									    	<div class='input-group input-appand date month'>
									    		<input type='text' class='form-control' id='mEndDate'name='endDate' style="width: 110px; pointer-events:none; color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
								    	<button type='button' class='btn btn-primary search' name="search" value="month"><i class="fa fa-search"></i> 검색</button>
							    	</form>
								  </div>
								</div>
							  	<table class='table-bordered table-list' style='width: 100%'>
							  		<thead>
							  			<tr>
							  				<th style="height:auto; width:59px">번호</th>
							  				<th style="height:auto; width:116px">방문날짜</th>
							  				<th style="height:auto; width:97px">방문요일</th>
							  				<th style="height:auto; width:99px">방문자수</th>
							  			</tr>
							  		</thead>
						  		</table>
								<div style="width:100%; height:210px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="monthSearchList">
										<% for(int i=0; i < month_list.size(); i++) { %>
											<tr class="selected">
												<td style="height:auto; width:59px"><%=month_list.size()-i%></td>
												<td style="height:auto; width:116px"><%=month_list.get(i).get("CONNECT_DATE")%></td>
												<td style="height:auto; width:97px"><%=month_list.get(i).get("YOIL")%></td>
												<td style="height:auto; width:99px"><%=month_list.get(i).get("CONNECT_CNT")%></td>
											</tr>
										<%}%>
								  		</tbody>
								  	</table>
							  	</div>
							  </div>
							</div>
						</td>
					</tr>
				</table>
				<!--/ Contents Area -->
			</td>
		</tr>
	</table>
</body>
</html>