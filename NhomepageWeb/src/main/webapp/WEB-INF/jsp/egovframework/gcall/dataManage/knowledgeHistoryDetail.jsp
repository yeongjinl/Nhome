<%@page import="egovframework.gcall.dto.ContactDbDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%
	ContactDbDTO hDTO = (ContactDbDTO)request.getAttribute("hDTO2");
%>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<title>110콜센터</title>
		<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
		<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.css"/>
		
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
			
			
			function confirmAlert(){
			alert("이력은 해당 기능을 사용할 수 없습니다.");
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
						<div class='title'>이력상세보기</div>
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
						</div>
					  	<div class="panel-body" id="tableDiv">
					  		<table class='table table-bordered'>
								<tbody>
									<%if (hDTO != null){ %>
										<tr>
											<th>질문제목</th>
											<td colspan=3>
												<%=CmmUtil.nvl(hDTO.getTITLE().toString()) %>
											</td>
										</tr>
										<tr>
											<th>질문내용</th>
											<td colspan=3>
												<textarea id="QUST_CNTN" name="QUST_CNTN" readonly title="내용" escapeXml="false">
													<%=hDTO.getQUST_CNTN()%>
												</textarea>
											</td>
										</tr>
										<tr>
											<th>내용</th>
											<td colspan=3>
												<textarea id="ANSCONTENT" name="CONTENT"  readonly title="내용" escapeXml="false">
													<%=hDTO.getCONTENT()%>
												</textarea>
											</td>
										</tr>
										<tr>
											<th>키워드</th>
											<td colspan=3>
												<%=CmmUtil.nvl(hDTO.getKEY_WORD().toString()) %>
											</td>
										</tr>
										<tr>
											<th>업무구분</th>
											<td>
												<%=CmmUtil.nvl(hDTO.getFLAG_NAME().toString()) %>
											</td>
											<th>지식DB구분</th>
											<td>
												<%=CmmUtil.nvl(hDTO.getCONTACT_DB_GUBUN_NAME().toString()) %>
											</td>
										</tr>
										<tr>
											<th>업무분류</th>
											<td colspan=3>
												<%=CmmUtil.nvl(hDTO.getCON1_NM().toString()) %>,
												<%=CmmUtil.nvl(hDTO.getCON2_NM().toString()) %>,
												<%=CmmUtil.nvl(hDTO.getCON3_NM().toString()) %>
											</td>
										</tr>
										<tr>
											<th>기관분류</th>
											<td colspan=3>
												<%=CmmUtil.nvl(hDTO.getCLASS1_NM().toString()) %>,
												<%=CmmUtil.nvl(hDTO.getCLASS2_NM().toString()) %>,
												<%=CmmUtil.nvl(hDTO.getCLASS3_NM().toString()) %>
											</td>
										</tr>
										<tr>
											<th>처리부서</th>
											<td colspan=3>
												<%=CmmUtil.nvl(hDTO.getPOST_NAME().toString()) %>
											</td>
										</tr>
									<%} %>
								</tbody>
							</table>
					  		<div class='text-right'>
						  		<button class='btn btn-primary btn-lg mr20 w100' onclick="JavaScript:confirmAlert();">수정</button>
						  		<button class='btn btn-white btn-lg w100' type='button' onclick="JavaScript:confirmAlert();">승인</button>
						  		<button class='btn btn-white btn-lg w100' type='button' onclick="JavaScript:confirmAlert();">거부</button>
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