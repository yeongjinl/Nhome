<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="java.util.Map"%>
<%@page import="egovframework.gcall.util.CmmUtil"%>
<%@page import="egovframework.gcall.dto.PaginationDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<HashMap<String,Object>> boardReplyList = (List<HashMap<String,Object>>) request.getAttribute("boardReplyList");
   PaginationDTO pDTO = (PaginationDTO) request.getAttribute("pDTO");
   String confId = (String) request.getAttribute("confId");
   String boardNum = (String)request.getAttribute("boardNum");
   int curPage = Integer.parseInt((request.getAttribute("curPage").toString()));
   Map<String, Object> sessionUI = (Map<String, Object>)session.getAttribute("ss_user_info");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글 리스트</title>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/boardReply.js"></script>
</head>
<body>
<!--  -->
	<table class="layout" summary="자유게시판 상세 ">
		<tbody>
			<tr>
				<td scope="col" class="leftMenuArea"></td>
				<td scope="col" class="contentArea">
					<!-- Contents Area -->
					<div class="panel panel-default writeBox">
						<div class="panel panel-default searchBox">
							 <div class="panel-body" style="padding: 0px;">
							   	<label class='ttl' for="selSearch" title="검색">
							   	댓글 검색
							   	</label>
							   	<select id="selSearch" name="selSearch" class='form-control input-lg w200' title="검색">
							   		<option value='1'>댓글 등록자</option>
							   		<option value='2'>댓글 내용</option>
							   	</select>

							   	<div class='input-group w300'>
							    	<label for="searchWord" title="검색어 입력">
							    	</label>
							    	<input id="searchWord" type='text' class='form-control input-lg' title="검색어 입력">
							   		<div class='input-group-btn'>
							   			<button onclick="searchList('<%=confId%>','<%=boardNum%>')" class='btn btn-primary btn-lg'><i class='fa fa-search' title="검색버튼"></i></button>
							   		</div>
							   	</div>
							 </div>
						 </div>
						 <div class="panel panel-default listBox">
							<div class="panel-body">
								<div class='listPageNum'>Page <span class='now'><%=curPage%></span>/<%=pDTO.getTotalPage()%></div>
								<table class='table table-bordered table-list' summary="댓글관리 목록을 나타냅니다.">
									<caption style="display: none">댓글</caption>
										<thead>
								  			<tr>
								  				<th scope="col" style="width:50px">번호</th>
								  				<th scope="col" style="width:720px">내용</th>
								  				<th scope="col" style="width:70px">등록자</th>
								  				<th scope="col" style="width:70px">등록일</th>
								  				<th scope="col" style="width:60px"></th>
								  			</tr>
								  		</thead>
									<tbody>
										<%
											for (int i = 0; i < boardReplyList.size(); i++) {
										%>
										<tr>
											<td class="repSeq"><%=boardReplyList.get(i).get("REPLY_SEQ") %></td>
											<td><div class="replyContentsTd"><%=boardReplyList.get(i).get("REPLY_CONTENTS") %></div></td>
											<td><%=boardReplyList.get(i).get("REPLY_WRITER") %></td>
											<td><%=boardReplyList.get(i).get("BOARD_REG_DATE") %></td>
											<td>
												<div class="btn btn-primary boardReplyUpd">수정</div>
											</td>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
								<nav aria-label="Page navigation" class='text-center'>
								  <ul class="pagination">
								    <% if((pDTO.getStartPage()-1)==0) {%>
								    <%} else { %>
										<li class='box'>
									    	<a onclick="pastPrevReply('<%=confId%>','<%=boardNum%>','<%=pDTO.getSelSearch()%>','<%=CmmUtil.nvl(pDTO.getSearchWord())%>')"  aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-left'></i><i class='fa fa-caret-left'></i></span></a>
									    </li>
									    <li class='box'>
									     	<a onclick="pageReplyMove('<%=confId%>','<%=boardNum %>','<%=pDTO.getPrevPage()%>','<%=pDTO.getSelSearch()%>','<%=CmmUtil.nvl(pDTO.getSearchWord())%>')" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-left'></i></span></a>
										</li>
								     <%} %>

								    <% for(int i =pDTO.getStartPage() ; i<=pDTO.getEndPage();i++ ){ %>
								    	<% if(pDTO.getCurPage()==i){ %>
								    	<li><a id="pageNum<%=i%>" style="background:#55cde2;color:white;" class="pageReplyNum"><%=i%></a></li>
								    	<%} else { %>
								    	<li><a id="pageNum<%=i%>"class="pageReplyNum"><%=i%></a></li>
								    	<%} %>

									<%} %>
									<%if(pDTO.getTotalPage()==pDTO.getEndPage()) {%>
									<%} else{ %>
										<li class='box'>
									    	<a onclick="pageReplyMove('<%=confId%>','<%=boardNum %>','<%=pDTO.getNextPage()%>','<%=pDTO.getSelSearch()%>','<%=CmmUtil.nvl(pDTO.getSearchWord())%>')" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i></span></a>
									    </li>
									    <li class='box'>
									    	<a onclick="pageReplyMove('<%=confId%>','<%=boardNum %>','<%=pDTO.getTotalPage()%>','<%=pDTO.getSelSearch()%>','<%=CmmUtil.nvl(pDTO.getSearchWord())%>')" aria-label="Previous"><span aria-hidden="true"><i class='fa fa-caret-right'></i><i class='fa fa-caret-right'></i></span></a>
									    </li>
									<%} %>
								  </ul>
								</nav>
								<div class="panel-body">
								  	<label class='ttl' style="font-size: 20px"  for="replyInput" title="댓글 입력">
								  	댓글 :
								  	</label>

								  	<input id="replyInput" type='text' onkeyup="fnChkByte(this);" class='form-control input-lg w500'  title="댓글 입력">
								</div>
								<div class="panel-body">
							   		<label class='ttl' style="font-size: 20px;"  for="replyInput" title="댓글 입력">
							    	비밀번호 :
							    	</label>
							    	<input id="replyPwInput" type="password" class='form-control input-lg w200' title="댓글 비밀번호 입력">
								</div>
								<div class="panel-body input-group" style="justify-content: flex-end;display: flex;">
								   	<button onclick="replyInsert('<%=CmmUtil.nvl((String) sessionUI.get("USER_ID")) %>','<%=CmmUtil.nvl((String) sessionUI.get("USER_NAME"))%>','<%=confId%>','<%=boardNum %>')" class='btn btn-primary btn-lg'>댓글 등록</button>
							   	</div>
							</div>
						</div>
					</div>
					<!--/ Contents Area -->
				</td>
			</tr>
		</tbody>
	</table>
<!--  -->
	<script>
	$(function(){
		$('.pageReplyNum').click(function(){
			$.ajax({
				url:"/boardReply/list.do",
				data:{
					"confId":<%=confId%>,
					"boardNum":<%=boardNum%>,
					"curPage":$(this).text(),
					"selSearch":<%=pDTO.getSelSearch()%>,
					"searchWord":"<%=CmmUtil.nvl(pDTO.getSearchWord())%>"
				},
				success:function(data){
					$('#boardReplyListView').html(data);
				}
			})
		})
		//수정
		$('.boardReplyUpd').click(function(){
			var index = $(".boardReplyUpd").index(this);
			$('.boardReplyUpd').not('.boardReplyUpd:eq('+index+')').css('display','none');
			var repCont = $('.replyContentsTd:eq('+index+')').text();
			var repSeq = $('.repSeq:eq('+index+')').text();
			$('.replyContentsTd:eq('+index+')').contents().unwrap().wrap('<div class="form-group "><input class="form-control" id="replyUpdateInput" type="text" value="'+repCont+'" style="margin-top:10px" /></div>');
			$('.boardReplyUpd:eq('+index+')').contents().unwrap().wrap('<div><div onclick="boardReplyUpdate('+repSeq+')" class="btn btn-primary"></div><div onclick="boardReplyCancel()" class="btn btn-danger">취소</div></div>')
		//비밀번호<input class="form-control" id="replyUpdatePwInput" type="password" />
		})
	})
	function boardReplyCancel(){
		pageReplyMove(<%=confId%>,<%=boardNum%>,<%=curPage%>,<%=pDTO.getSelSearch()%>,<%=pDTO.getSearchWord()%>)
	}
	function boardReplyUpdate(repSeq){
		$.ajax({
			url:"/boardReply/update.do",
			method:"POST",
			data:{
				"confId": '${fn:escapeXml(confId)}',
				"boardNum": '${fn:escapeXml(sUserEmail)}',
				"REPLY_CONTENTS":$("#replyUpdateInput").val(),
				/* "REPLY_PW":$("#replyUpdatePwInput").val(), */
				"USER_ID":"${fn:escapeXml(CmmUtil.nvl((String) sessionUI.get("USER_ID")))}",
				"REPLY_WRITER":"${fn:escapeXml(CmmUtil.nvl((String) sessionUI.get("USER_NAME")))}",
			},
			success:function(data){
				if(data == '1'){
					alert('댓글이 수정 되었습니다.');
					pageReplyMove(<%=confId%>,<%=boardNum%>,<%=curPage%>,<%=pDTO.getSelSearch()%>,<%=pDTO.getSearchWord()%>)
				}
			}
		})
	}
	</script>
</body>
</html>