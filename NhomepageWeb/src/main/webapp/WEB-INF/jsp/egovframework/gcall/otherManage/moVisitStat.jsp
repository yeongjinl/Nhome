<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<HashMap<String, Object>> day_list = (List<HashMap<String, Object>>)request.getAttribute("day_list");
	List<HashMap<String, Object>> page_list = (List<HashMap<String, Object>>)request.getAttribute("page_list");
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
	var lastYearDate = (year-1) + "-" + month;
	var YearDate = year + "-" + month;
	//일별 방문자
	document.getElementsByName('startDate')[1].value = nowDate;
	document.getElementsByName('endDate')[1].value = nowDate;
	//페이지별 방문자
	document.getElementsByName('startDate')[0].value = nowDate;
	document.getElementsByName('endDate')[0].value = nowDate;
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
		url : "/other/statRetrieve.do",
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
				contents+='<td style="height:auto; width:20%">'+((key-data.length)*-1)+'</td>';
				contents+='<td style="height:auto; width:30%">'+value.CONNECT_DATE+'</td>';
				contents+='<td style="height:auto; width:20%">'+value.YOIL+'</td>';
				if(sql_id=="time") {
					contents+='<td style="height:auto; width:30%">'+value.CONNECT_TIME+'</td>';
				}
				if(sql_id!="page"){
					if(value.CONNECT_CNT==undefined) {
						contents+='<td style="height:auto; width:30%">-</td>';
					} else {
						contents+='<td style="height:auto; width:30%">'+value.CONNECT_CNT+'</td>';
					}
				} else if(sql_id=="page") {
					if(value.PAGE_NAME==undefined) {
						contents+='<td style="height:auto; width:30%">-</td>';
					} else {
						contents+='<td style="height:auto; width:30%">'+value.PAGE_NAME+'</td>';
					}
				}
				contents+='</tr>';
			});
			if(sql_id=="day")$('#daySearchList').html(contents);
			if(sql_id=="page")$('#pageSearchList').html(contents);
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
				<ul class='leftMenu' id="otherLeftMenu">
				</ul>
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class="title">모바일 방문자통계</div>
				</div>
				<table class='visit' style="width:100%">
					<tr>
						<td>
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 400px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 일별 방문자</div>
								<div class="panel panel-default">
								  <div class="panel-body">
								  	<form class="form-inline text-center" id="day" method="post">
			  							<div class="form-group">
			  								<label for="tStartDate"><span>조회일자 :</span></label>
									    	<div class='input-group input-appand date'>
									    		<input type='text' class='form-control' id='tStartDate'name='startDate' style="width: 110px; pointer-events:none; color:#555; opacity:1;" maxlength="10">
									    		<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
									    	</div>
								    	</div>
			  							<div class="form-group">
									    	<label for="tEndDate"><span> ~ </span></label>
									    	<div class='input-group input-appand date'>
									    		<input type='text' class='form-control' id='tEndDate'name='endDate' style="width: 110px; pointer-events:none; color:#555; opacity:1;" maxlength="10">
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
							  				<th style="height:auto; width:20%">번호</th>
							  				<th style="height:auto; width:30%">방문날짜</th>
							  				<th style="height:auto; width:20%">방문요일</th>
							  				<th style="height:auto; width:30%">방문자수</th>
							  			</tr>
							  		</thead>
						  		</table>
								<div style="width:100%; height:210px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="daySearchList">
										<% for(int i=0; i < day_list.size(); i++) { %>
											<tr class="selected">
												<td style="height:auto; width:20%"><%=day_list.size()-i%></td>
												<td style="height:auto; width:30%"><%=day_list.get(i).get("CONNECT_DATE")%></td>
												<td style="height:auto; width:20%"><%=day_list.get(i).get("YOIL")%></td>
												<td style="height:auto; width:30%"><%=day_list.get(i).get("CONNECT_CNT")%></td>
											</tr>
										<%}%>
								  		</tbody>
								  	</table>
							  	</div>
							  </div>
						  </div>
						</td>
						<td rowspan="2">
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 825px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 페이지별 방문자</div>
								<div class="panel panel-default">
								  <div class="panel-body">
								  	<form class="form-inline text-center" id="page" method="post">
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
								    	<button type='button' class='btn btn-primary search' name="search" value="page"><i class="fa fa-search"></i> 검색</button>
							    	</form>
								  </div>
								</div>
								<table class='table-bordered table-list' style='width: 100%'>
							  		<thead>
							  			<tr>
							  				<th style="height:auto; width:20%">번호</th>
							  				<th style="height:auto; width:30%">방문날짜</th>
							  				<th style="height:auto; width:20%">방문자수</th>
							  				<th style="height:auto; width:30%">방문페이지</th>
							  			</tr>
							  		</thead>
						  		</table>
								<div style="width:100%; height:630px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="pageSearchList">
										<% for(int i=0; i < page_list.size(); i++) { %>
											<tr class="selected">
												<td style="height:auto; width:20%"><%=page_list.size()-i%></td>
												<td style="height:auto; width:30%"><%=page_list.get(i).get("CONNECT_DATE")%></td>
												<td style="height:auto; width:20%"><%=page_list.get(i).get("YOIL")%></td>
												<td style="height:auto; width:30%"><%=page_list.get(i).get("PAGE_NAME")==""?"-":page_list.get(i).get("PAGE_NAME")%></td>
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
							  				<th style="height:auto; width:20%">번호</th>
							  				<th style="height:auto; width:30%">방문날짜</th>
							  				<th style="height:auto; width:20%">방문요일</th>
							  				<th style="height:auto; width:30%">방문자수</th>
							  			</tr>
							  		</thead>
						  		</table>
								<div style="width:100%; height:210px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="monthSearchList">
										<% for(int i=0; i < month_list.size(); i++) { %>
											<tr class="selected">
												<td style="height:auto; width:20%"><%=month_list.size()-i%></td>
												<td style="height:auto; width:30%"><%=month_list.get(i).get("CONNECT_DATE")%></td>
												<td style="height:auto; width:20%"><%=month_list.get(i).get("YOIL")%></td>
												<td style="height:auto; width:30%"><%=month_list.get(i).get("CONNECT_CNT")%></td>
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