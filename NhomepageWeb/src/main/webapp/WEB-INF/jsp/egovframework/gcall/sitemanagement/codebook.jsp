<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	List<HashMap<String, Object>> codetypeList = (List<HashMap<String, Object>>)request.getAttribute("codetypeList");
	List<HashMap<String, Object>> codebookList = (List<HashMap<String, Object>>)request.getAttribute("codebookList");
%>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<title>110콜센터-사이트 관리</title>
<%@include file="/WEB-INF/jsp/egovframework/gcall/sitemanagement/codebookJs.jsp" %>
<style type="text/css">
 .select {
 	background-color: #edf5f9;
 }
</style>
<script type="text/javascript">
	$(document).on("change","#code",function(){
		var code = $('#code').val();
		var codeType = $('#codeType').val();
		console.log("code : " + $('#code').val());
		console.log("codeType : " + codeType);
		if(code == "all" || code == undefined || code == "") {
			code ="";
		}
		$.ajax({
			type : 'POST',
			url : "/site/getCodeBook.do",
			dataType: "text",
			data: {
				"code" : code,
				"codeType" : codeType
			},
			success : function(res){

				console.log(res)
		         $("#codebookDiv").html(res);

		         //선택된거 색 변하기
		            $("#"+codeType).addClass("select");                      //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
		            $("#"+codeType).siblings().removeClass("select");
		            $("#codeValueList2 tr:nth-child(1)").addClass("select");

		            //왼쪽 하단 코드타입 코드명 값 변경
		            var ctype = $("#"+codeType +" td:nth-child(2)").html();
		             var cname = $("#"+codeType +" td:nth-child(3)").html();
		             var other = $("#"+codeType +" td:nth-child(4)").html();
		             $("#codeType").val(ctype);
		             $("#codeTypeName").val(cname);
		             $("#codeTypeOther").val(other);

		             //오른쪽 하단 코드북 값 변경
		             var bcode = $("#codeValueList2 tr:nth-child(1) td:nth-child(3)").text();
		             var bname = $("#codeValueList2 tr:nth-child(1) td:nth-child(4)").text();
		             var buse  = $("#codeValueList2 tr:nth-child(1) td:nth-child(5)").text();
		             var etc1 = $("#codeValueList2 tr:nth-child(1) td:nth-child(6)").text();
		             var etc2 = $("#codeValueList2 tr:nth-child(1) td:nth-child(7)").text();
		             var etc3 = $("#codeValueList2 tr:nth-child(1) td:nth-child(8)").text();
		             var parent_id = $("#codeValueList2 tr:nth-child(1) td:nth-child(9)").text();
		             var parent_type = $("#codeValueList2 tr:nth-child(1) td:nth-child(10)").text();

		             console.log("ctype : " +ctype);
		         $("#bookView>form>input").val(ctype);
		             $("#code_id").val(bcode);
		             $("#code_name").val(bname);

		             $("#etc1").val(etc1);
		             $("#etc2").val(etc2);
		             $("#etc3").val(etc3);

		             $("#parent_id").val(parent_id);
		             $("#parent_type").val(parent_type);

		             if(buse == 'O'){
		                $('#use_y').prop("checked", true);
		             }else if (buse == 'X'){
		                $('#use_n').prop("checked", true);
		             }
			}
		})
	})
</script>
</head>

<body>
	<table class='layout'>
		<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
		<tr>
			<td class='leftMenuArea' rowspan="2">
				<!-- LeftMenu Area -->
				<ul class='leftMenu' id="siteLeftMenu"></ul>
				<!--/ LeftMenu Area -->
			</td>
			<td class='contentArea'>
				<!-- Contents Area -->
				<div class='page-title'>
					<div class="title">코드관리</div>
					<div class='navi'><i class='fa fa-home'></i> <i class='fa fa-chevron-right'></i> 사이트설정 <i class='fa fa-chevron-right'></i> <span class='now'>코드관리</span></div>
				</div>
				<table class='visit' style="width:100%">
					<tr>
						<td colspan="2">
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 100px;">
	  							<div class="panel-heading">
							    	사용 :
							    	<select id="code" name="code" class='form-control w80' title="구분">
							    		<option value='all'>전체</option>
							    		<option value='O'>사용</option>
							    		<option value='X'>미사용</option>
							    	</select>
								</div>
							  </div>
						  </div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="panel panel-default listBox"style="margin-right:0px; width:100%; overflow:hidden">
							  <div class="panel-body" style="height:600px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 코드타입</div>
							  	<div id="codeTypeDiv">
								  	<table class='table-bordered table-list' style='width: 100%'>
								  		<thead>
								  			<tr>
								  				<th style="height:auto; width:50px">번호</th>
								  				<th style="height:auto; width:100px">코드타입</th>
								  				<th style="height:auto; width:115px">코드명</th>
								  			</tr>
								  		</thead>
							  		</table>
							  		<div style="margin: 0px; width:100%; height:630px; overflow:hidden;">
							  			<table style="width:100%; overflow-y:hidden" class='table table-bordered table-list'>
							  				<tbody id="codeTypeList">
								  			<% if(codetypeList.size() > 0) {%>
									  			<%for (int i=0; i < codetypeList.size(); i++){ %>
										  			<tr id="<%=codetypeList.get(i).get("CODE_TYPE")==null?"":codetypeList.get(i).get("CODE_TYPE") %>" onClick="JavaScript:codeBookDiv('<%=codetypeList.get(i).get("CODE_TYPE")==null?"":codetypeList.get(i).get("CODE_TYPE") %>');" class="selected">
										  				<td style="height:auto; width:50px; font-size:12px;"><%=codetypeList.get(i).get("ROWNUM")==null?"":codetypeList.get(i).get("ROWNUM") %></td>
										  				<td style="height:auto; width:100px; font-size:12px;"><%=codetypeList.get(i).get("CODE_TYPE")==null?"":codetypeList.get(i).get("CODE_TYPE")%></td>
										  				<td style="height:auto; width:115px; font-size:12px;"><%=codetypeList.get(i).get("CODE_TYPE_NAME")==null?"":codetypeList.get(i).get("CODE_TYPE_NAME")%></td>
										  				<td style="height:auto; width:0px; display:none" ><%=codetypeList.get(i).get("ETC")==null?"":codetypeList.get(i).get("ETC") %></td>
										  			</tr>
									  			<%} %>
									  		<%} %>
									  		</tbody>
								  		</table>
							  		</div>
							  	</div>
							  </div>
						  </div>
						</td>
						<td>
							<div class="panel panel-default listBox">
							  <div class="panel-body" style="height: 600px;">
							  	<div style="padding-bottom:5px; font-size:18px;"><i class='fa fa-chevron-right'></i> 코드값</div>
								<div id="codebookDiv" style="overflow-y:auto; height:95%">
									<table class='table-bordered table-list' style='width: 100%'>
								  		<thead>
								  			<tr>
								  				<th style="height:auto; width:36px;">번호</th>
								  				<th style="height:auto; width:66px;">코드타입</th>
								  				<th style="height:auto; width:258px;">코드</th>
								  				<th style="height:auto; width:100px;">코드명</th>
								  				<th style="height:auto; width:36px;">사용</th>
								  			</tr>
								  		</thead>
							  		</table>
									<div style="width:100%; height:480px; overflow:scroll;">
									  	<table style="width:100%" class='table table-bordered table-list'>
									  		<tbody id="codeValueList">
								  			<% if(codebookList.size() > 0) {%>
									  			<%for (int i=0; i < codebookList.size(); i++){ %>
										  			<tr id="codebook<%=codebookList.get(i).get("ROWNUM") %>" style="width:100%;" onClick="JavaScript:codeBookClick('<%=codebookList.get(i).get("ROWNUM") %>')" class="selected">
										  				<td style="height:auto; width:54px; font-size:12px;"><%=codebookList.get(i).get("ROWNUM")==null?"":codebookList.get(i).get("ROWNUM") %></td>
										  				<td style="height:auto; width:100px; font-size:12px;"><%=codebookList.get(i).get("CODE_TYPE")==null?"":codebookList.get(i).get("CODE_TYPE") %></td>
										  				<td style="height:auto; width:390px; font-size:12px;"><%=codebookList.get(i).get("CODE_ID")==null?"":codebookList.get(i).get("CODE_ID") %></td>
										  				<td style="height:auto; width:152px; font-size:12px;"><%=codebookList.get(i).get("CODE_NAME")==null?"":codebookList.get(i).get("CODE_NAME") %></td>
										  				<td style="height:auto; width:55px; font-size:12px;"><%=codebookList.get(i).get("USE_YN")==null?"":codebookList.get(i).get("USE_YN") %></td>
										  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("ETC1")==null?"":codebookList.get(i).get("ETC1") %></td>
										  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("ETC2")==null?"":codebookList.get(i).get("ETC2") %></td>
										  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("ETC3")==null?"":codebookList.get(i).get("ETC3") %></td>
										  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("PARENT_ID")==null?"":codebookList.get(i).get("PARENT_ID") %></td>
										  				<td style="height:auto; width:0px; display:none;"><%=codebookList.get(i).get("PARENT_TYPE")==null?"":codebookList.get(i).get("PARENT_TYPE") %></td>
										  			</tr>
									  			<%} %>
									  		<%} %>
									  		</tbody>
								  		</table>
							  		</div>
								</div>
								<div style="width:100%; height:210px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="daySearchList">
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
							  <div id="typeView" class="panel-body codeTypeBox" style="height: 250px;">
			  					<form action="/site/insertCodeType.do" method="POST" id="codetypeForm">
								  	<table class='table-bordered table-list' style='width: 100%'>
								  		<tbody>
									  			<tr>
									  				<td style="height:auto; width:59px">* 코드타입</td>
									  				<td style="height:auto; width:116px">
									  					<input type="text" id="codeType" name="cType" value="" class='form-control' readonly/>
									  				</td>
									  			</tr>
									  			<tr>
									  				<td style="height:auto; width:59px">* 코드명</td>
									  				<td style="height:auto; width:116px">
									  					<input type="text" id="codeTypeName" name="cName" class='form-control'/>
									  				</td>
									  			</tr>
									  			<tr>
									  				<td style="height:auto; width:59px">기타</td>
									  				<td style="height:auto; width:116px">
									  					<input type="text" id="codeTypeOther" name="other" class='form-control'/>
									  				</td>
									  			</tr>
									  			<tr style="display:none;">
									  				<td style="height:auto; width:59px">상태</td>
									  				<td style="height:auto; width:116px">
									  					<input type="text" id="codeTypeStatus" name="status"/>
									  				</td>
									  			</tr>
									  			<tr>
									  				<td style="height:auto; width:59px"></td>
									  				<td style="height:auto; width:116px; text-align:right">
								  						<button type="button" class="btn btn-primary" type="button" onClick="JavaScript:typeReg();">등록</button>
														<button type="button" class="btn btn-success" type="button" onClick="JavaScript:typeInsert();">저장</button>
														<button type="button" class="btn btn-danger" type="button" onClick="JavaScript:typeDel();">삭제</button>
									  				</td>
									  			</tr>
								  		</tbody>
							  		</table>
			  					</form>
							  </div>
							</div>
						</td>
						<td>
							<div class="panel panel-default listBox">
							  <div id="bookView" class="panel-body" style="height: 250px;">
							  	<form action="/site/insertCodebook.do" method="POST" id="codebookForm">
								  	<table class='table-bordered table-list' style='width: 100%'>
								  		<tbody>
								  			<tr>
								  				<th style="height:auto; width:59px">* 코드</th>
								  				<td colspan="5" style="height:auto; width:116px">
								  					<input type="text" value="" id="code_id" name="code_id" class='form-control' readonly style="width:100%"/>
								  				</td>
								  			</tr>
								  			<tr>
								  				<th style="height:auto; width:59px">* 코드명</th>
								  				<td colspan="5" style="height:auto; width:116px">
								  					<input type="text" id="code_name" name="code_name" class='form-control'/>
								  				</td>
								  			</tr>
								  			<tr>
								  				<th style="height:auto; width:59px">기타1</th>
								  				<td style="height:auto; width:116px">
								  					<input type="text" id="etc1" name="etc1" class='form-control' class='form-control' maxlength="20"/>
								  				</td>
								  				<th style="height:auto; width:59px">기타2</th>
								  				<td style="height:auto; width:116px">
								  					<input type="text" id="etc2" name="etc2" class='form-control' class='form-control' maxlength="20"/>
								  				</td>
								  				<th style="height:auto; width:59px">기타3</th>
								  				<td style="height:auto; width:116px">
								  					<input type="text" id="etc3"name="etc3" class='form-control' class='form-control' maxlength="80"/>
								  				</td>
								  			</tr>
								  			<tr>
								  				<th style="height:auto; width:59px">부모코드</th>
								  				<td style="height:auto; width:116px">
								  					<input type="text" style="width:100%" id="parent_id" name="parent_id" class='form-control' maxlength="10"/>
								  				</td>
								  				<th style="height:auto; width:59px">부모타입</th>
								  				<td style="height:auto; width:116px" >
								  					<input type="text" id="parent_type" name="parent_type" class='form-control' maxlength="14"/>
								  				</td>
								  				<th style="height:auto; width:59px">사용여부</th>
								  				<td style="height:auto; width:116px">
								  					<label><input type="radio" id="use_y" name="use_yn" value="1"/> 사용 </label>
								                    <label><input type="radio" id="use_n" name="use_yn" value="0"/> 미사용 </label>
								  				</td>
								  			</tr>
								  			<tr style="display:none;">
								  				<th style="height:auto; width:59px">status</th>
								  				<td style="height:auto; width:116px">
								  					<input type="text" id="codeStatus" name="status" value="1"/>
								  				</td>
								  			</tr>
								  			<tr>
								  				<td colspan="5" style="height:auto; width:59px; border-style:none;"></td>
								  				<td style="height:auto; width:116px; border-style:none; text-align:right;">
													<button type="button" class="btn btn-primary" type="button" onClick="JavaScript:codeReg();">등록</button>
													<button type="button" class="btn btn-success" type="button" onClick="JavaScript:codeSubmit();">저장</button>
								  				</td>
								  			</tr>
								  		</tbody>
							  		</table>
							  		<input type="hidden" value="" name="code_type"/>
							  	</form>
								<div style="width:100%; height:210px; overflow:auto">
								  	<table style="width:100%" class='table table-bordered table-list'>
								  		<tbody id="monthSearchList">
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