<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style='width:800px !important; min-width:600px !important;'>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>110콜센터</title>
		<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
	<script type="text/javascript">

		//팝업에서 검색 버튼 클릭시
		function popupClassSearch(){
			console.log("popupClassSearch start!!");
			var popupClassWord = document.getElementById("popupClassWord").value;
			console.log("popupClassWord : " + popupClassWord);
			//업무 구분이랑 검색 단어 같이 보내서 ajax 데이터 호출
			 if(popupClassWord=="undefined"){
				 popupClassWord='';
	 	       }else if (popupClassWord == undefined) {
	 	    	  popupClassWord = '';
	 			}else if (popupClassWord == '') {
	 				popupClassWord = '';
	 			}
			if(popupClassWord == ''){
				alert("검색어를 입력해주세요.");
			}else{
				$.ajax({
					url : "/severdata/classPopup.do",
					method : "GET",
					data : {
						"popupClassWord" : popupClassWord
					},
					success :function(data) {
						console.log("data : " + data);
						$('#popupClassTable').html(data)
					},
					error : function(e) {
					}
				})
			}
			console.log("popupSearch end!!");
		}

		//클릭하면 부모창에 값 넣어주기
		function setParentClass(CLASS1_NM, CLASS2_NM, CLASS3_NM, CLASS1_CD, CLASS2_CD, CLASS3_CD ){
			console.log("setParentClass")
			console.log("CLASS1_nm : "+ CLASS1_NM);
			console.log("CLASS2_nm : "+ CLASS2_NM);
			console.log("CLASS3_nm : "+ CLASS3_NM);
			console.log("CLASS1_nm : "+ CLASS1_CD);
			console.log("CLASS2_nm : "+ CLASS2_CD);
			console.log("CLASS3_nm : "+ CLASS3_CD);

			opener.document.getElementById("CLASS1_CD").innerHTML='<option value="'+CLASS1_CD+'" selected>'+CLASS1_NM+'</option>';
			opener.document.getElementById("CLASS2_CD").innerHTML='<option value="'+CLASS2_CD+'" selected>'+CLASS2_NM+'</option>';
			opener.document.getElementById("CLASS3_CD").innerHTML='<option value="'+CLASS3_CD+'" selected>'+CLASS3_NM+'</option>';

			window.close();
		}

	</script>
</head>
<body class='popup'style='width:800px !important; min-width:600px !important; display: inline-block;' onresize="parent.resizeTo(800,600)" onload="parent.resizeTo(800,600)">
	<div class='contentArea' style="width:100%; padding:30px 15px;">
		<div class="page-title">
			<div class="title">기관 분류</div>
		</div>
		<div class="panel panel-default "  style="margin-bottom: 0px;">
				  <div class="panel-heading">
				  	<span style="font-weight: bold;">기관분류</span>
				  	<input type='text' class="form-control" value="" name="popupClassWord" id="popupClassWord" style="width:300px;">

				  	<div class="btn-right">
				  		<button class="btn btn-white" type="button" onClick="JavaScript:popupClassSearch()"><i class="fa fa-search"></i> 검색</button>
				  	</div>
				  </div>
				  <div class="panel-body" style="padding: 15px 5px;">
			  		<table class="table table-bordered table-list" id="popupClassTable">
					  		<thead>
					  			<tr>
									<th style="width:54px;">번호</th>
									<th style="width:140px;">기관대분류</th>
									<th style="width:165px;">기관중분류</th>
									<th style="width:400px;">기관소분류</th>
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