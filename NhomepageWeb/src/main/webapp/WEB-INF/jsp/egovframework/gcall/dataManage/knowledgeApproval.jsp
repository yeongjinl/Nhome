<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="egovframework.gcall.dto.ContactDbDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%
	ContactDbDTO dDTO = (ContactDbDTO)request.getAttribute("dDTO2");
	JSONArray fList = (JSONArray)request.getAttribute("fList");
	JSONArray newFList = (JSONArray)request.getAttribute("newFList");
%>
<html lang="ko">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>110콜센터</title>
	<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/lightbox.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/custom.css"/>
	<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
	<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/handlebars.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/lightbox.js"></script>
	<%@include file="/WEB-INF/jsp/egovframework/gcall/boardManage/boardCommon/detailTop.jsp" %>
	<script type="text/javascript">
	$(function(){
		 $('#ANSCONTENT').summernote({
			  height:200,
			  toolbar: [],
			  popover:{
				  image:[]
			  }
		  });

		 $('#ANSCONTENT').next().find(".note-editable").attr("contenteditable", false);

		 $('#QUST_CNTN').summernote({
			  height:200,
			  toolbar: [],
			  popover:{
				  image:[]
			  }
		  });

		 $('#QUST_CNTN').next().find(".note-editable").attr("contenteditable", false);
		})

	//승인 거부 버튼 클릭시 상태에 따라 naver 승인 or naver 거부로 이동
	function permissionDenied(status){
		var prove_state = <%=dDTO.getPROVE_STATE()%>;

		//데이터의 현재 상태 , 승인 : 1 , 승인대기 : 0 , 승인 거부 : 9
		//console.log("prove_state  : " + prove_state);

		//어떤 버튼 클릭 했는지 확인 , 승인버튼 : p , 거부버튼 : d , 수정버튼 : u
		//console.log("버튼 클릭 : " + status);

		if(prove_state == 0){
			if(status == "p"){
				//승인 버튼
				console.log("naver insert")
				naverDBupdate();

			}else if(status == "d"){
				//거부 버튼
				console.log("dbupdate")
				dbstatusUpdate();

			}else if(status == "u"){
				//수정 버튼
				console.log("db 글이랑 상태 update")
				writeUpdate();

			}
		}else if (prove_state == 1){
			if(status == "p"){
				//승인 버튼
				alert("이미 승인이 완료된 데이터 입니다.");

			}else if(status == "d"){
				//거부 버튼
				console.log("naver denied");
				status = "9";
				naverDenied(status);

			}else if(status == "u"){
				//수정 버튼
				console.log("db 글이랑 상태 update")
				writeUpdate();

			}
		}else if (prove_state == 9){
			if(status == "p"){
				//승인 버튼
				alert("거부된 데이터 입니다.");

			}else if(status == "d"){
				//거부 버튼
				alert("이미 거부된 데이터 입니다.");

			}else if(status == "u"){
				//수정 버튼
				console.log("db 글이랑 상태 update")
				writeUpdate();

			}
		}
	}

	function naverDBupdate(){
		//승인대기 상태에서 승인 버튼 클릭시 네이버 승인 & DB update(Prove)
		//alert("네이버랑 DB 변경");
		var qust_cntn = document.getElementById("QUST_CNTN").value;
		var anscontent = document.getElementById("ANSCONTENT").value;
		
		$.ajax({
			url : "/severdata/naverProve.do",
			method : "post",
			data : {
				"DB_SEQ" : "<%=CmmUtil.nvl(dDTO.getDB_SEQ())%>",
				"TITLE" : "<%=CmmUtil.nvl(dDTO.getTITLE())%>",
				"QUST_CNTN" : qust_cntn,
				"CONTENT" :anscontent,
				"KEY_WORD" : "<%=CmmUtil.nvl(dDTO.getKEY_WORD()) %>",
				"FLAG_NAME" : "<%=CmmUtil.nvl(dDTO.getFLAG_NAME()) %>",
				"CONTACT_DB_GUBUN_NAME" : "<%=CmmUtil.nvl(dDTO.getCONTACT_DB_GUBUN_NAME()) %>",
				"CON1_NM" : "<%=CmmUtil.nvl(dDTO.getCON1_NM()) %>",
				"CON2_NM" : "<%=CmmUtil.nvl(dDTO.getCON2_NM()) %>",
				"CON3_NM" : "<%=CmmUtil.nvl(dDTO.getCON3_NM()) %>",
				"CLASS1_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS1_NM())%>",
				"CLASS2_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS2_NM())%>",
				"CLASS3_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS3_NM())%>",
				"POST_NAME" : "<%=CmmUtil.nvl(dDTO.getPOST_NAME())%>",
				"PROVE_STATE" : "1"
			},
			success : function(data) {
				data = JSON.parse(data);
				//location.href="/top/redirect.do?url="+data.url+"&msg="+data.msg;
				
				if(data.code == "200") location.href="/top/redirect.do?url=/severdata/list.do&msg="+data.msg;
				else alert(data.msg);
			},
			error: function(e) {
				alert(e);
			}
		})
	};

	//1. 승인대기중 데이터 거부 시 상태만 업데이트 하기
	function dbstatusUpdate(){
		var qust_cntn = document.getElementById("QUST_CNTN").value;
		var anscontent = document.getElementById("ANSCONTENT").value;
		console.log("qust_cntn" + qust_cntn)
		//alert("DB 상태 거부로 변경");
		$.ajax({
			url : "/severdata/dbupdate.do",
			method : "post",
			data : {
				"DB_SEQ" : "<%=CmmUtil.nvl(dDTO.getDB_SEQ())%>",
				"TITLE" : "<%=CmmUtil.nvl(dDTO.getTITLE())%>",
				"QUST_CNTN" : qust_cntn,
				"CONTENT" : anscontent,
				"KEY_WORD" : "<%=CmmUtil.nvl(dDTO.getKEY_WORD()) %>",
				"FLAG_NAME" : "<%=CmmUtil.nvl(dDTO.getFLAG_NAME()) %>",
				"CONTACT_DB_GUBUN_NAME" : "<%=CmmUtil.nvl(dDTO.getCONTACT_DB_GUBUN_NAME()) %>",
				"CON1_NM" : "<%=CmmUtil.nvl(dDTO.getCON1_NM()) %>",
				"CON2_NM" : "<%=CmmUtil.nvl(dDTO.getCON2_NM()) %>",
				"CON3_NM" : "<%=CmmUtil.nvl(dDTO.getCON3_NM()) %>",
				"CLASS1_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS1_NM())%>",
				"CLASS2_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS2_NM())%>",
				"CLASS3_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS3_NM())%>",
				"POST_NAME" : "<%=CmmUtil.nvl(dDTO.getPOST_NAME())%>",
				"PROVE_STATE" : "9"
			},
			success : function(data){
				data = JSON.parse(data);
				location.href="/top/redirect.do?url="+data.url+"&msg="+data.msg;
			},
			error : function(e){
				alert(e);
			}
		})
	};

	//승인 완료된 데이터 거부 시 네이버 삭제, DB 상태 업데이트 하기
	function naverDenied(){
		//alert("네이버 거부 DB 삭제");
		var qust_cntn = document.getElementById("QUST_CNTN").value;
		var anscontent = document.getElementById("ANSCONTENT").value;
		$.ajax({
			url : "/severdata/naverDenied.do",
			method : "post",
			data : {
				"DB_SEQ" : "<%=CmmUtil.nvl(dDTO.getDB_SEQ())%>",
				"TITLE" : "<%=CmmUtil.nvl(dDTO.getTITLE())%>",
				"QUST_CNTN" : qust_cntn,
				"CONTENT" : anscontent,
				"KEY_WORD" : "<%=CmmUtil.nvl(dDTO.getKEY_WORD()) %>",
				"FLAG_NAME" : "<%=CmmUtil.nvl(dDTO.getFLAG_NAME()) %>",
				"CONTACT_DB_GUBUN_NAME" : "<%=CmmUtil.nvl(dDTO.getCONTACT_DB_GUBUN_NAME()) %>",
				"CON1_NM" : "<%=CmmUtil.nvl(dDTO.getCON1_NM()) %>",
				"CON2_NM" : "<%=CmmUtil.nvl(dDTO.getCON2_NM()) %>",
				"CON3_NM" : "<%=CmmUtil.nvl(dDTO.getCON3_NM()) %>",
				"CLASS1_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS1_NM())%>",
				"CLASS2_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS2_NM())%>",
				"CLASS3_NM" : "<%=CmmUtil.nvl(dDTO.getCLASS3_NM())%>",
				"POST_NAME" : "<%=CmmUtil.nvl(dDTO.getPOST_NAME())%>",
				"PROVE_STATE" : "9"
			},
			success : function(data){
				//data = JSON.parse(data);
				//location.href="/top/redirect.do?url="+data.url+"&msg="+data.msg;
				location.href="/top/redirect.do?url=/severdata/list.do&msg="+data;
			},
			error : function(e){
				alert(e);
			}
		});
	}


	// 1. 승인대기 데이터 수정시 (글 상태 수정); 2.숭인완료된 데이터 수정시 3. 승인거부된 데이터 수정시
	function writeUpdate(){
		//alert("글이랑 상태 수정");
		location.href="/severdata/updateknowdb.do?DB_SEQ="+<%=CmmUtil.nvl(dDTO.getDB_SEQ())%>
	}

	//이력보기
	function hisList(){

		location.href="/severdata/getHislist.do?DB_SEQ="+<%=CmmUtil.nvl(dDTO.getDB_SEQ())%>+"&page=1";
		<%-- $.ajax({
			url : "/severdata/getHislist.do",
			method : "post",
			data : {
				"DB_SEQ" : "<%=CmmUtil.nvl(dDTO.getDB_SEQ())%>"
			},
			success : function(data){
				console.log(data);
				$("#tableDiv").html(data);
			},
			error : function(e){
				alert(e);
			}
		}); --%>
	}
	</script>
</head>
	<body>
		<table class='layout'>
			<%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>;
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
							<i class='fa fa-home'></i>
							<i class='fa fa-chevron-right'></i> 데이터관리
							<i class='fa fa-chevron-right'></i>
							<span class='now'>지식DB 승인(QA)</span>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							게시물내용
							<button class='btn btn-white w100' style="" onclick="JavaScript:hisList();">이력보기</button>
						</div>
					  	<div class="panel-body" id="tableDiv">
					  		<table class='table table-bordered' >
					  			<tbody>
					  				<%if (dDTO != null){ %>
						  				<tr>
						  					<th>질문제목</th>
						  					<td colspan=3>
						  					<%=CmmUtil.nvl(dDTO.getTITLE()) %>
						  					</td>
						  				</tr>
						  				<tr>
						  					<th>질문내용</th>
						  					<td colspan=3>
						  						<textarea id="QUST_CNTN" name="QUST_CNTN" readonly title="내용" escapeXml="false">
													<%=CmmUtil.nvl(dDTO.getQUST_CNTN()) %>
												</textarea>
						  					</td>

						  				</tr>
						  				<tr>
						  					<th>내용</th>
						  					<td colspan=3>
						  						<textarea id="ANSCONTENT" name="CONTENT"  readonly title="내용" escapeXml="false">
													<%=CmmUtil.nvl(dDTO.getCONTENT()) %>
												</textarea>

						  					</td>
						  				</tr>
						  				<tr>
						  					<th>키워드</th>
						  					<td colspan=3>
						  						<%=CmmUtil.nvl(dDTO.getKEY_WORD()) %>
						  					</td>
						  				</tr>
						  				<tr>
						  					<th>업무구분</th>
						  					<td>
						  						<%=CmmUtil.nvl(dDTO.getFLAG_NAME()) %>
					  						</td>
						  					<th>지식DB구분</th>
						  					<td>
						  						<%=CmmUtil.nvl(dDTO.getCONTACT_DB_GUBUN_NAME()) %>
				  							</td>
						  				</tr>
						  				<tr>
						  					<th>업무분류</th>
						  					<td colspan=3>
						  						<%=CmmUtil.nvl(dDTO.getCON1_NM()) %>,
						  						<%=CmmUtil.nvl(dDTO.getCON2_NM()) %>,
						  						<%=CmmUtil.nvl(dDTO.getCON3_NM()) %>
						  					</td>
						  				</tr>
						  				<tr>
						  					<th>기관분류</th>
						  					<td colspan=3>
						  						<%=CmmUtil.nvl(dDTO.getCLASS1_NM()) %>,
						  						<%=CmmUtil.nvl(dDTO.getCLASS2_NM()) %>,
						  						<%=CmmUtil.nvl(dDTO.getCLASS3_NM()) %>
						  					</td>
						  				</tr>
						  				<tr>
						  					<th>처리부서</th>
						  					<td colspan=3>
						  						<%=CmmUtil.nvl(dDTO.getPOST_NAME()) %>
						  					</td>
						  				</tr>
					  				<%} %>
					  				<tr>
					  					<th scope="col">첨부파일</th>
					  					<td scope="col">
					  					  <div class="box box-primary">
									       <div class="box-footer">
									            <ul style="display:-webkit-box;list-style: none;width:100%;overflow:scroll "  class="mailbox-attachments clearfix uploadedFileList"></ul>
									        </div>
									    </div>
					  					</td>
					  				</tr>
					  			</tbody>
					  		</table>
					  		<div class='text-right'>
						  		<button class='btn btn-primary btn-lg mr20 w100' onclick="JavaScript:permissionDenied('u')">수정</button>
						  		<button class='btn btn-white btn-lg w100' type='button' onclick="JavaScript:permissionDenied('p')">승인</button>
						  		<button class='btn btn-white btn-lg w100' type='button' onclick="JavaScript:permissionDenied('d')">거부</button>
						  		<button class='btn btn-white btn-lg w100' type='button' onclick='JavaScript:window.history.go(-1);'>닫기</button>
					  		</div>
					  </div>
					</div>
					<!--/ Contents Area -->
				</td>
			</tr>
		</table>
	</body>
</html>