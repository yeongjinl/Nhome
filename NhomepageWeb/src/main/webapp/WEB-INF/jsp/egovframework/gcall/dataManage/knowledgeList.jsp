<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="egovframework.gcall.dto.ContactDbDTO"%>
<%@page import="egovframework.gcall.dto.PagingDTO"%>
<%@page import="java.util.List"%>
<%@page import="egovframework.gcall.util.CmmUtil"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>110콜센터</title>
<%@include file="/WEB-INF/jsp/egovframework/gcall/index/library.jsp"%>
<%
	List<ContactDbDTO> proveViewArr = (List<ContactDbDTO>) request.getAttribute("proveViewArr");
	ContactDbDTO cbDTO = (ContactDbDTO) request.getAttribute("cbDTO");
	PagingDTO paging = (PagingDTO) request.getAttribute("paging");
	int prevPage = paging.getStartPage()-5;
	int nextPage = paging.getEndPage()+1;

%>
</head>
<body>
	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp"%>
		<tr>
			<td class='leftMenuArea' rowspan="2">
				<ul class='leftMenu' id="dataLeftMenu">
				</ul>
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class='title'>지식DB 승인(QA)</div>
					<div class='navi'>
						<i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i>
						데이터관리 <i class='fa fa-chevron-right'></i> <span class='now'>지식DB
							승인(QA)</span>
					</div>
				</div>
				<div class='panel-tab'>
					<input type="hidden" id="PROVE_STATE" value="<%=cbDTO.getPROVE_STATE()%>" style="display: none;">
					<button class='btn btn-default btn-lg prove' style="color:#333;" onclick="proveView('0')">승인대기중</button>
					<button class='btn btn-default btn-lg prove' style="color:#333;" onclick="proveView('1')">승인완료</button>
					<button class='btn btn-default btn-lg prove' style="color:#333;" onclick="proveView('9')">승인거부</button>
				</div>
				<div class="panel panel-default searchBox">
					<div class="panel-body">
						<table class='table table-bordered db_search_area'>
							<tbody>
								<tr>
									<th>요청날짜</th>
									<td colspan=3>
										<div class='input-group w500'>
											<span class='input-group input-appand date'>
												<input type='text' class='form-control input-lg'id='tStartDate' name='startDate'style="pointer-events: none; color: #555; opacity: 1;"maxlength="10">
												<span class='input-group-addon'>
												<i class='far fa-calendar fa-2x'></i></span>
											</span>
											<span class='input-group-addon'>~</span>
											<span class='input-group input-appand date'>
												<input type='text' class='form-control input-lg'id='tEndDate' name='endDate'style="pointer-events: none; color: #555; opacity: 1;"maxlength="10">
												<span class='input-group-addon'>
													<i class='far fa-calendar fa-2x'></i>
												</span>
											</span>
										</div>
									</td>
								</tr>
								<tr>
									<th>DB 구분</th>
									<td>
										<select id="CONTACT_DB_GUBUN" onchange="dbGubun('CONTACT_DB_GUBUN','')" class='form-control input-lg w100per'>
											<%if(CmmUtil.nvl(cbDTO.getCONTACT_DB_GUBUN())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCONTACT_DB_GUBUN()%>"selected></option>
											<%} %>
										</select>
									</td>
									<th>업무구분</th>
									<td>
										<div class='input-group w100per'>
											<select class='form-control input-lg' id="FLAG" onchange="flagGubun()"name='FLAG'>
											<%if(CmmUtil.nvl(cbDTO.getFLAG())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getFLAG()%>"selected>전체</option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<div class='input-group-btn'>
												<button type='button' class='btn btn-white btn-lg' onclick="search(1)">
													<i class='fa fa-search'></i> 검색
												</button>
											</div>
											<span class='input-group-addon'></span>
										</div>
									</td>
								</tr>
								<tr>
									<th>업무분류</th>
									<td colspan=3>
										<div class='input-group w100per'>
											<select id="CON1_CD" onchange="conGubunL1()" class='form-control input-lg'>
											<%if(CmmUtil.nvl(cbDTO.getCON1_CD())==""){%>

												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCON1_CD()%>"selected></option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<select id="CON2_CD" onchange="conGubunM1()" class='form-control input-lg'>
											<%if(CmmUtil.nvl(cbDTO.getCON2_CD())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCON2_CD()%>"selected></option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<select	id="CON3_CD" onchange="conGubunS1()" class='form-control input-lg'>
											<%if(CmmUtil.nvl(cbDTO.getCON3_CD())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCON3_CD()%>"selected></option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<div class='input-group-btn'>
												<button type='button' class='btn btn-white btn-lg' onclick="popup()">
			                                       <i class='fa fa-search'></i>
			                                    </button>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th>기관분류</th>
									<td colspan=3>
										<div class='input-group w100per'>
											<select id="CLASS1_CD" onchange="classGubunL1()" class='form-control input-lg '>
											<%if(CmmUtil.nvl(cbDTO.getCLASS1_CD())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCLASS1_CD()%>"selected></option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<select	id="CLASS2_CD" onchange="classGubunM1()" class='form-control input-lg '>
											<%if(CmmUtil.nvl(cbDTO.getCLASS2_CD())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCLASS2_CD()%>"selected></option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<select id="CLASS3_CD" onchange="classGubunS1()" class='form-control input-lg '>
											<%if(CmmUtil.nvl(cbDTO.getCLASS3_CD())==""){%>
												<option value=""selected>전체</option>
											<%} else{%>
												<option value="<%=cbDTO.getCLASS3_CD()%>"selected></option>
											<%} %>
											</select>
											<span class='input-group-addon'></span>
											<div class='input-group-btn'>
												<button type='button' class='btn btn-white btn-lg' onclick="popupClass()">
			                                       <i class='fa fa-search'></i>
			                                    </button>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div id="knowledgeTableList" style="width:100%;" >
					      <table class='table table-bordered table-list'>
					      <thead>
					         <tr>
					            <th>번호</th>
					            <th>제목</th>
					            <th>업무구분</th>
					            <th>최종변경일시</th>
					            <th>변경회수</th>
					            <th>DB구분</th>
					            <th>등록자</th>
					            <th>변경자</th>
					         </tr>
					      </thead>
					      <tbody>
					         <%if(proveViewArr!=null){ %>
					            <%for(int i = 0 ; i < proveViewArr.size(); i++){ %>
      						        <tr onClick="JavaScript:listDetail(<%=CmmUtil.nvl(proveViewArr.get(i).getDB_SEQ()) %>);" class="selected">
					            	
					                <!-- 로우넘 넣어야됨  -->
					                  <td><%=(paging.getListCnt()-i-((paging.getPage()-1)*10)) %></td>
					                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getTITLE()) %></td>
					                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getFLAG_NAME())%></td>
					                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getLST_DAY()) %></td>
					                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getUPDATE_CNT()) %></td>
					                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getCONTACT_DB_GUBUN_NAME()) %></td>
					                  <td><%=CmmUtil.nvl(proveViewArr.get(i).getUSER_NM())%></td>
					                  <td>
					                  		<%if(String.valueOf(proveViewArr.get(i).getLST_UPDATE_ID()).equals("admin") ){%>
												관리자
											<%}else if(String.valueOf(proveViewArr.get(i).getLST_UPDATE_ID()).equals("")) {%>
												<%=CmmUtil.nvl(proveViewArr.get(i).getUSER_NM())%>
											<%}else {%>
												<%=CmmUtil.nvl(proveViewArr.get(i).getUPDATE_NM())%>
											<%} %>
					                  </td>
					                </tr>
					            <%} %>
					         <%} %>
					      </tbody>
				      </table>

						<!-- 페이징 -->
						<nav aria-label="Page navigation" class='text-center' style="width: 100%; margin-right: 0px;">
							<ul class="pagination">

								<% if(paging.isPrev() ==true) {	%>
								<li class='box'><a href="#" class="paging 1" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-caret-left"></i><i class="fa fa-caret-left"></i></span></a></li>
								<li class='box'><a href="#" class="paging <%=prevPage %>" aria-label="Previous"><span aria-hidden="true"><i class="fa fa-caret-left"></i></span></a></li>
								<%}
								if(paging.getStartPage() != 0 ) {
								for(int i = paging.getStartPage(); i <= paging.getEndPage(); i++) {
									if(paging.getPage()==i) {
								%>
								<li><a href="#" class="paging <%=i %> active"><%=i %></a></li>
								<%} else{%>
								<li><a href="#" class="paging <%=i %>"><%=i %></a></li>
								<%}}%>
								<% if(paging.isNext()==true){ %>
								<li class='box'><a href="#" class="paging <%=nextPage %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i></span></a></li>
								<li class='box'><a href="#" class="paging <%=paging.getPageCnt() %>" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i><i class='fa fa-caret-right'></i></span></a></li>
								<%}}%>
							</ul>
						</nav>
						<!-- /페이징 -->
						</div>
					</div>
				</div> <!--/ Contents Area -->
			</td>
		</tr>
	</table>
</body>
<script>
	//달력
	$(document).ready(function() {
		//일별 방문자
		var yesterDate = "<%=cbDTO.gettStartDate()%>"
		var nowDate= "<%=cbDTO.gettEndDate()%>"

		document.getElementById('tStartDate').value = yesterDate;
		document.getElementById('tEndDate').value = nowDate;
		$(function() {
			$('.input-appand.date').datepicker({
				format : "yyyy-mm-dd",
				language : "kr",
				calendarWeeks : false,
				todayHighlight : true,
				autoclose : true
			});
		})
		var index = <%=cbDTO.getPROVE_STATE()%>==9?2:<%=cbDTO.getPROVE_STATE()%>
		document.getElementsByClassName("prove")[index].style.backgroundColor = "#54b8cf";
		document.getElementsByClassName("prove")[index].style.color = "#fff";
		dbGubun('CONTACT_DB_GUBUN', "");
		classGubunL1();
		flagGubun();
		conGubunL1();
	});
	//클릭 승인대기중 , 승인완료 , 승인거부
	function proveView(PROVE_STATE) {
		var yesterDate = document.getElementById('tStartDate').value;
		var nowDate = document.getElementById('tEndDate').value;
		/*
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		var Yday = date.getDate()-1;
		if ((month + "").length < 2) {
			month = "0" + month;
		}
		if ((day + "").length < 2) {
			day = "0" + day;
		}
		if ((Yday + "").length < 2) {
			Yday = "0" + Yday;
		}
		var nowDate = year + "-" + month + "-" + day;
		var yesterDate = year + "-" + month + "-" + Yday;
		*/
		var FLAG = "";
		var CONTACT_DB_GUBUN = "";
		var CON1_CD = "";
		var CON2_CD = "";
		var CON3_CD = "";
		var CLASS1_CD = "";
		var CLASS2_CD = "";
		var CLASS3_CD = "";
		var indexNum = "";
		document.getElementById("PROVE_STATE").value = PROVE_STATE;
		//검색버튼 클릭시만 조회되게 변경
		//location.href="/severdata/list.do?PROVE_STATE="+PROVE_STATE+"&tStartDate="+yesterDate+"&tEndDate="+nowDate+"&pageno=1";
		//탭버튼 style초기화
		for(var i=0;i<3;i++){
			document.getElementsByClassName("prove")[i].style.backgroundColor = "";
			document.getElementsByClassName("prove")[i].style.color = "black";
		}
		//승인거부
		if(PROVE_STATE==9){
			indexNum = 2;
		//그외
		} else {
			indexNum = PROVE_STATE
		}
		document.getElementsByClassName("prove")[indexNum].style.backgroundColor = "#54b8cf";
		document.getElementsByClassName("prove")[indexNum].style.color = "#fff";
	}

	//DB 구분
	function dbGubun(CODE_TYPE, PARENT_ID) {
		var CODE_ID = $('#CONTACT_DB_GUBUN option:selected').val();
		if (CODE_ID == "" || CODE_ID == null || CODE_ID == undefined) {
			CODE_ID = '';
		}

		$.ajax({
			url : "/severdata/dbGubun.do",
			method : "GET",
			data : {
				"CODE_TYPE" : CODE_TYPE,
				"PARENT_ID" : PARENT_ID,
				"CODE_ID" : CODE_ID
			},
			success : function(data) {
				data = JSON.parse(data);
				var dbGubunCont = "";
				$.each(data,function(index, item) {
					if(item.CODE_NAME=="FAQ"||item.CODE_NAME=="상담사례"||item.CODE_NAME=="전체"){
                        if(item.SELECTED=='1'){
							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined) {
								dbGubunCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
							} else {
								dbGubunCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
							}
						}else{
							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined) {
								dbGubunCont+='<option value="">'+item.CODE_NAME+'</option>'
							} else {
								dbGubunCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
							}
                        }
                     }
				})
				$('#CONTACT_DB_GUBUN').html(dbGubunCont);
			},
			error : function(e) {
			}
		})
	}
	// 변수 목록
	var FLAG;
	var CLASS1_CD;
	var CLASS2_CD;
	var CLASS3_CD;
	var CON1_CD;
	var CON2_CD;
	var CON3_CD;
	var POST_CD;
	//기관 대분류
	function classGubunL1() {
		console.log()
		CLASS1_CD = $('#CLASS1_CD option:selected').val();
		if (CLASS1_CD == "" || CLASS1_CD == null || CLASS1_CD == undefined) {
			CLASS1_CD = '';
		}
		$.ajax({
			url : "/severdata/classGubunL.do",
			method : "GET",
			data : {
				"CLASS1_CD" : CLASS1_CD
			},
			success : function(data) {
				data = JSON.parse(data);
				var classGubunLCont = "";
				$.each(data,function(index, item) {
					if (item.SELECTED == '1') {
						if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
							classGubunLCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
						}else{
							classGubunLCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
						}
					} else {
						if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
							classGubunLCont += '<option value="">'+ item.CODE_NAME+ '</option>'
						}else{
							classGubunLCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
						}
					}
				})
				classGubunM1();
				$('#CLASS1_CD').html(classGubunLCont);

			}
		})
	}
	//기관 중분류
	function classGubunM1() {
		CLASS2_CD = $('#CLASS2_CD option:selected').val();
		if (CLASS2_CD == "" || CLASS2_CD == null || CLASS2_CD == undefined) {
			CLASS2_CD = '';
		}
		$.ajax({
			url : "/severdata/classGubunM.do",
			method : "GET",
			data : {
				"CLASS1_CD" : CLASS1_CD,
				"CLASS2_CD" : CLASS2_CD
			},
			success : function(data) {
				data = JSON.parse(data);
				var classGubunMCont = "";
				$.each(data,function(index, item) {
					if (item.SELECTED == '1') {
						if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
							classGubunMCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
						} else {
							classGubunMCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
						}
					} else {
						if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
							classGubunMCont += '<option value="">'+ item.CODE_NAME+ '</option>'
						}else{
							classGubunMCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
						}
					}
				})
				classGubunS1();
				$('#CLASS2_CD').html(classGubunMCont);
			}
		})
	}
	//기관 소분류
	function classGubunS1() {
		CLASS3_CD = $('#CLASS3_CD option:selected').val();
		if (CLASS3_CD == "" || CLASS3_CD == null || CLASS3_CD == undefined) {
			CLASS3_CD = '';
		}
		$.ajax({
			url : "/severdata/classGubunS.do",
			method : "GET",
			data : {
				"CLASS1_CD" : CLASS1_CD,
				"CLASS2_CD" : CLASS2_CD,
				"CLASS3_CD" : CLASS3_CD
			},
			success : function(data) {
				data = JSON.parse(data);
				var classGubunSCont = "";
				$.each(data,function(index, item) {
					if (item.SELECTED == '1') {
						if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
							classGubunSCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
						}else{
							classGubunSCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
						}
					} else {
						if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
							classGubunSCont += '<option value="">'+ item.CODE_NAME+ '</option>'
						}else{
							classGubunSCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
						}
					}
				})
				$('#CLASS3_CD').html(classGubunSCont);
			}
		})
	}
	//업무 대분류
	function conGubunL1() {
		 FLAG = $('#FLAG option:selected').val();
		 console.log("업무 대분류 : " + FLAG);
  	     if(FLAG=="" || FLAG==null || FLAG == undefined){
  	         FLAG='';
		}
		CON1_CD = $('#CON1_CD option:selected').val();
		if (CON1_CD == "" || CON1_CD == null || CON1_CD == undefined) {
			CON1_CD = '';
		}
			if(FLAG!=''){
				$.ajax({
					url : "/severdata/conGubunL.do",
					method : "GET",
					data : {
						"CON1_CD" : CON1_CD,
						"CODE_ID": FLAG
					},
					success : function(data) {
						data = JSON.parse(data);
						console.log("congubun:"+data)
						var conGubunLCont = "";
						$.each(data,function(index, item) {
							if (item.SELECTED == '1') {
								if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
									conGubunLCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
								}else{
									conGubunLCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
								}
							} else {
								if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
									conGubunLCont += '<option value="">'+ item.CODE_NAME+ '</option>'
								}else{
									conGubunLCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
								}
							}
						})
						conGubunM1();
						$('#CON1_CD').html(conGubunLCont);
					}
				})
			}

	}
	//업무 중분류
	function conGubunM1() {
		CON2_CD = $('#CON2_CD option:selected').val();
		var conGubunMCont = "";
		var conGubunSCont = "";
		if (CON2_CD == "" || CON2_CD == null || CON2_CD == undefined) {
			CON2_CD = '';
		}
		if (CON1_CD == "") {
			conGubunMCont = "<option value='' selected>전체</option>";
			$('#CON2_CD').html(conGubunMCont);
			conGubunSCont = "<option value='' selected>전체</option>";
			$('#CON3_CD').html(conGubunSCont);
		} else {
			$.ajax({
				url : "/severdata/conGubunM.do",
				method : "GET",
				data : {
					"CON1_CD" : CON1_CD,
					"CON2_CD" : CON2_CD
				},
				success : function(data) {
					data = JSON.parse(data);

					$.each(data, function(index, item) {
						if (item.SELECTED == '1') {
							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
								conGubunMCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
							}else{
								conGubunMCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
							}
						} else {
							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
								conGubunMCont += '<option value="">'+ item.CODE_NAME+ '</option>'
							}else{
								conGubunMCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
							}
						}
					})
					conGubunS1();
					$('#CON2_CD').html(conGubunMCont);
				}
			})
		}

	}
	//업무 소분류
	function conGubunS1() {
		CON3_CD = $('#CON3_CD option:selected').val();
		var conGubunSCont = "";
		if (CON3_CD == "" || CON3_CD == null || CON3_CD == undefined) {
			CON3_CD = '';
		}
		if (CON1_CD == "" || CON2_CD == "") {
			conGubunSCont = "<option value='' selected>전체</option>";
			$('#CON3_CD').html(conGubunSCont);
		} else {
			$.ajax({
				url : "/severdata/conGubunS.do",
				method : "GET",
				data : {
					"CON1_CD" : CON1_CD,
					"CON2_CD" : CON2_CD,
					"CON3_CD" : CON3_CD
				},
				success : function(data) {
					data = JSON.parse(data);
					$.each(data,function(index, item) {
						if (item.SELECTED == '1') {
							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
								conGubunSCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
							}else{
								conGubunSCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
							}
						} else {
							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
								conGubunSCont += '<option value="">'+ item.CODE_NAME+ '</option>'
							}else{
								conGubunSCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
							}
						}
					})
					$('#CON3_CD').html(conGubunSCont);
				}
			})
		}
	}
    //업무구분
    function flagGubun(){
   	   FLAG = $('#FLAG option:selected').val();
   	    if(FLAG=="" || FLAG==null || FLAG == undefined){
   	         FLAG='';
   		}
   	    if(FLAG==""){
   	     $('#CON1_CD').html('<option value="" seleted>전체</option>');
   	   	 $('#CON2_CD').html('<option value="" seleted>전체</option>');
   	   	 $('#CON3_CD').html('<option value="" seleted>전체</option>');
   	   	 }else{

   	   	 }
    	//로그인한 사용자가  admin이면 업무구분 레벨 1 , 사용자면 TEAM_CD 맞는 업무구분
    	var sUserId = '${fn:escapeXml(sUserId)}';

    	if(sUserId == "admin"){
    			$.ajax({
          	         url:"/severdata/flagGubun.do",
          	         method:"GET",
          	         data:{
          	            "POST_CD": 'admin',
          	            "CODE_ID": FLAG
          	         },
          	         success:function(data){
          	              data = JSON.parse(data);
          	              console.log(data);
          	                 var flagGubunCont = "";
          	                 $.each(data,function(index,item){
          	                    if(item.SELECTED=='1'){
          							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	          	                       flagGubunCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
          							}else{
	          	                       flagGubunCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
          							}
          	                    }else{
          							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	          	                       flagGubunCont+='<option value="">'+item.CODE_NAME+'</option>'
          							}else{
	          	                       flagGubunCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
          							}
          	                    }
          	                 })
          	            $('#FLAG').html(flagGubunCont);
          	             conGubunL1();
          	         }
          	      })
    	}else{
   		 $.ajax({
   	         url:"/severdata/flagGubun.do",
   	         method:"GET",
   	         data:{
   	          "POST_CD": '${fn:escapeXml(sUserPost)}',
   	         },
   	         success:function(data){
   	              data = JSON.parse(data);
   	                 var flagGubunCont = "";
   	                 $.each(data,function(index,item){
   	                    if(item.SELECTED=='1'){
   							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
   	                       		flagGubunCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
   							}else{
   	                       		flagGubunCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
   							}
   	                    }else{
   							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
   	                       		flagGubunCont+='<option value="">'+item.CODE_NAME+'</option>'
   							}else{
   	                       		flagGubunCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
   							}
   	                    }
   	                 })
   	            $('#FLAG').html(flagGubunCont);
   	              conGubunL1();

   	         }
   	      })
   		}
    };
	//페이징
	$(document).on( "click", ".paging", function(){
	var pageno =  this.classList[1];
	search(pageno);
	});
	//검색
	function search(pageno) {
		var PROVE_STATE = document.getElementById("PROVE_STATE").value
		var tStartDate = document.getElementById("tStartDate").value
		var tEndDate = document.getElementById("tEndDate").value
		//DB구분, 업무구분
		var FLAG = document.getElementById("FLAG").value
		var CONTACT_DB_GUBUN = document.getElementById("CONTACT_DB_GUBUN").value
		//업무분류
		var CON1_CD = document.getElementById("CON1_CD").value
		var CON2_CD = document.getElementById("CON2_CD").value
		var CON3_CD = document.getElementById("CON3_CD").value
		//기관분류
		var CLASS1_CD = document.getElementById("CLASS1_CD").value
		var CLASS2_CD = document.getElementById("CLASS2_CD").value
		var CLASS3_CD = document.getElementById("CLASS3_CD").value

		if(FLAG == "" || FLAG == null || FLAG == undefined) {
			FLAG = ""
		}
		if(CONTACT_DB_GUBUN == "" || CONTACT_DB_GUBUN == null || CONTACT_DB_GUBUN == undefined) {
			CONTACT_DB_GUBUN = ""
		}
		if(CON1_CD == "" || CON1_CD == null || CON1_CD == undefined) {
			CON1_CD = ""
		}
		if(CON2_CD == "" || CON2_CD == null || CON2_CD == undefined) {
			CON2_CD = ""
		}
		if(CON3_CD == "" || CON3_CD == null || CON3_CD == undefined) {
			CON3_CD = ""
		}
		if(CLASS1_CD == "" || CLASS1_CD == null || CLASS1_CD == undefined) {
			CLASS1_CD = ""
		}
		if(CLASS2_CD == "" || CLASS2_CD == null || CLASS2_CD == undefined) {
			CLASS2_CD = ""
		}
		if(CLASS3_CD == "" || CLASS3_CD == null || CLASS3_CD == undefined) {
			CLASS3_CD = ""
		}
		//전송
		location.href="/severdata/list.do?PROVE_STATE="+PROVE_STATE+"&tStartDate="+tStartDate+"&tEndDate="+tEndDate+"&pageno="+pageno+"&FLAG="+FLAG+"&CONTACT_DB_GUBUN="+CONTACT_DB_GUBUN+"&CON1_CD="+CON1_CD+"&CON2_CD="+CON2_CD+"&CON3_CD="+CON3_CD+"&CLASS1_CD="+CLASS1_CD+"&CLASS2_CD="+CLASS2_CD+"&CLASS3_CD="+CLASS3_CD;
	}

	//
	//상세보기
     function listDetail(DB_SEQ){
         location.href="/severdata/listDetail.do?DB_SEQ="+DB_SEQ;
     }
   //업무구분 대중소 불러오기 팝업
     function popup(){
       console.log("popup start");
       var FLAG = $('#FLAG option:selected').val();
       console.log("FLAG : "+ FLAG);
            if(FLAG=="undefined"){
               FLAG='';
            }else if (FLAG == undefined) {
               FLAG = '';
           }else if (FLAG == '') {
               FLAG = '';
           }
            if(FLAG != ''){
          //업무 구분이 공백이 아니면
               var url = "/severdata/popup.do";
               var name = "popup test";
               var option = "width = 650, height = 600, top = 0, right = 0, location = no, resizable=no"
               window.open(url, name, option);
            }else{
               //업무 구분이 공백이면
               alert("업무구분을 선택해주세요.");
            }

     }

     function popupClass(){
       console.log("popupClass start");
        var url = "/severdata/popupClass.do";
        var name = "popupClass";
        var option = "width = 650, height = 600, top = 0, right = 0, location = no, resizable=no"
        window.open(url, name, option);
    }
</script>
</html>