<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style='width:800px !important; min-width:600px !important;'>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"> 
	<title>110콜센터</title>
		
		<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
		<!-- 자체 라이브러리 -->
		<link rel="stylesheet" href="../css/css.css">
		<link rel="stylesheet" href="../css/checkbox.css">		
		<script src="../js/script.js"></script>

	<script type="text/javascript">
	
		//팝업에서 검색 버튼 클릭시
		function popupSearch(){
			console.log("popupSearch start!!");
			var flag = opener.document.getElementById("FLAG").value;
	 	      if(flag=="undefined"){
	 	    	flag='';
	 	       }else if (flag == undefined) {
	 	    	 flag = '';
	 			}else if (flag == '') {
	 	    	 flag = '';
	 			}
	 	     
			var popupWord = document.getElementById("popupWord").value;
			console.log("flag : " + flag);
			console.log("popupWord : " + popupWord);
			//업무 구분이랑 검색 단어 같이 보내서 ajax 데이터 호출
			 if(popupWord=="undefined"){
				 popupWord='';
	 	       }else if (popupWord == undefined) {
	 	    	  popupWord = '';
	 			}else if (popupWord == '') {
	 				popupWord = '';
	 			}
			if(popupWord == ''){
				alert("검색어를 입력해주세요.");
			}else{
				$.ajax({
					url : "/severdata/popupflag.do",
					method : "GET",
					data : {
						"flag" : flag
						,"popupWord" : popupWord
					},
					success :function(data) {
						console.log("data : " + data);
						$('#popupTable').html(data)
					},
					error : function(e) {
					}
				})
			}
			console.log("popupSearch end!!");
		}
	
		//클릭하면 부모창에 값 넣어주기
		function setParentText(CON1_NM, CON2_NM, CON3_NM, CON1_CD, CON2_CD, CON3_CD ){
			console.log("setParentText")
			console.log("con1_nm : "+ CON1_NM);
			console.log("con2_nm : "+ CON2_NM);
			console.log("con3_nm : "+ CON3_NM);
			console.log("con1_nm : "+ CON1_CD);
			console.log("con2_nm : "+ CON2_CD);
			console.log("con3_nm : "+ CON3_CD);
		
			opener.document.getElementById("CON1_CD").innerHTML='<option value="'+CON1_CD+'" selected>'+CON1_NM+'</option>';
			opener.document.getElementById("CON2_CD").innerHTML='<option value="'+CON2_CD+'" selected>'+CON2_NM+'</option>';
			opener.document.getElementById("CON3_CD").innerHTML='<option value="'+CON3_CD+'" selected>'+CON3_NM+'</option>';
			window.close();
		}
	
	</script>
</head>
<body class='popup' style='width:800px !important; min-width:600px !important; display: inline-block;' onresize="parent.resizeTo(800,600)" onload="parent.resizeTo(800,600)">
	<div class='contentArea' style="width:100%; padding:30px 15px;">
		<div class="page-title">
			<div class="title">업무분류</div>
		</div>
		<div class="panel panel-default" style="margin-bottom: 0px;">
			<div class="panel-heading">
			  	<span style="font-weight: bold;">업무분류</span>
			  	<input type='text' class="form-control" value="" name="popupWord" id="popupWord" style="width:300px;">
			  	<div class="btn-right">
			  		<button class="btn btn-white" type="button" onClick="popupSearch()"><i class="fa fa-search"></i> 검색</button>
			  	</div>
			</div>
			<div class="panel-body" style="padding: 15px 5px;">
		  		<table class="table table-bordered table-list" id="popupTable">
			  		<thead>
			  			<tr>
							<th style="width:54px;">번호</th>
							<th style="width:140px;">업무대분류</th>
							<th style="width:165px;">업무중분류</th>
							<th style="width:400px;">업무소분류</th>
						</tr>
			  		</thead>
			  		<tbody class="">
			  			<tr>
			  				<td></td>
			  				<td></td>
			  				<td></td>
			  				<td></td>
			  			</tr>
			  		</tbody>
			  	</table>							  								  								  	
	  		</div>
	  		<!-- end panel body -->
	  		<button class="btn btn-white float-right" onClick="window.close()" style="margin-top: 10px">닫기</button>
		</div>
	</div>		
</body>

</html>