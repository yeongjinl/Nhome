<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>예약상담 | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		
		<script>
			$(function() {
				$("#reserveBtn").on("click", function(e) {
					
					// 값 체크
					if(!checkValue()) return false;
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/reserveReg.do'/>",
						data: {
							"name": $("#reserveName").val(),
							"tel": $("#pHeadSelect option:selected").val() + "" + $("#pMiddleInput").val() + "" + $("#pLastInput").val(),
							"time": $("#hourSelect option:selected").val() + "" + $("#minuteSelect option:selected").val(),
							"memo": $("#memo").val()
						},
						dataType: "json",
						success: function(res) {
							alert("신청되었습니다.");
							window.location.reload();
						}, error: function(err) {
							console.log("error : " + JSON.stringify(err));
							alert("[ERROR]" + "\n status : " + err.status + "\n text : " + err.statusText);
						}
					});
				});
			});
			
			function checkValue() {
				
				// 동의 여부 체크
				if(!$("#agree_yn").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 예약상담신청이 가능합니다.");
					return false;
				}
				
				// 이름 입력 체크
				if($("#reserveName").val() == "") {
					alert("이름을 입력해주세요!!");
					return false;
				}
	
				// 전화번호 체크
				if($("#pHeadSelect").val() == "" || $("#pMiddleInput").val() == "" || $("#pLastInput").val() == "") {
					alert("받을 전화번호를 입력해주세요!!");
					return false;
				}

				// 예약시간 체크
				if($("#hourSelect").val() == "" || $("#minuteSelect").val() == "") {
					alert("예약시간을 입력해주세요!!");
					return false;
				}
				
				return true;
			}
		</script>
	</head>
	<body>
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top.jsp"/>
			
			<!-- 탑 서브메뉴 -->
			<c:import url="./common/subMenu.jsp"/>
			
			<div class='contentArea'>
				<div class='limitWrap'>
				
					<div class='mainTitle'>110 예약상담  <small>(이용문의 국번없이 110)</small></div>
					
					
					<div class='subContentWrap useGuideTableWrap'>
						<table class='table useGuideTable table-bordered useGuideTable2'>
							<caption style="display: none;"></caption>
							<thead></thead>
							<tbody>
								<tr>
									<th>예약상담</th>
									<td class='icon icon6' colspan="2"><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon06.png'/>" alt="예약상담"></td>
									<td class='cont mcenter'>상담시간: 365일 24시간</td>
								</tr>
								<tr>
									<td class='text-center btborder' colspan="4">
										원하는 상담시간과 내용을 입력하시면 상담사가 전화를 드립니다.
									</td>
								</tr>
								<tr>
									<td class='text-center w50per font-blue' colspan="2">
										예약상담은 전화량 증가 등에 따라 다소 시간이 걸릴 수 있습니다.
									</td>
									<td class='text-center w50per font-blue' colspan="2">
										빠른 상담을 원하실 경우 110번으로 전화주시기 바랍니다.
									</td>
								</tr>
							</tbody>
							<tfoot></tfoot>
						</table>
					</div>
				</div>
			</div>
			
			<div class='contentArea'>
				<div class='limitWrap'>
				
					<div class='mainTitle'>예약상담 이용하기</div>
					<div class='col-xs-12 subComment'>
					1. 개인정보 수집 및 이용안내 확인 후 동의<br>
					2. 이름, 전화번호, 상담예약시간 입력 후 상담예약하기 버튼 확인<br>
					3. 200자 내외로 문의사항을 남길 수 있습니다.
					</div>
					
					
					<div class='row'>
						
						
						<div class='agreeText col-xs-12'>
							<b>1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</b><br> 
							국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다.<br> 
							수집된 개인정보는 정해진 목적(문자상담 업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br>
							 <br>
							<b>2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</b><br> 
							가. 필수(자동수집)항목 : 성명, 연락처, 상담내용<br>
							 <br>
							<b>3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</b><br> 
							국민콜110은 원칙적으로 개인정보 보존기간(1년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는<br> 
							그러하지 않을 수 있습니다.<br>
							 <br>
							<b>4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</b><br> 
							상담신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.<br> 
						</div>
						
						<div class='agreeCheckWrap col-xs-12'>
							<label><input type='checkbox' id="agree_yn"> 개인정보 수집&middot;이용 동의(필수)</label>
						</div>
						<div class='requestWrap col-xs-12 text-center'>
							
							
							<table style="margin-left: auto; margin-right: auto;">
								<caption style="display: none;"></caption>
								<thead></thead>
								<tbody>
									<tr>
										<th><label for="reserveName">예약자 이름</label></th>
										<td class='text-left'>
											<input type='text' class='form-control mw100per' id="reserveName" maxlength="80">
										</td>
									</tr>
									<tr>
										<th><label for="pHeadSelect">전화번호</label></th>
										<td class='text-left'> 
											<select class='form-control' id="pHeadSelect">
												<option value=''>선택</option>
												<option value='010'>010</option>
												<option value='011'>011</option>
												<option value='016'>016</option>
												<option value='017'>017</option>
												<option value='018'>018</option>
												<option value='019'>019</option>
											</select>
											<label for="pMiddleInput">&nbsp;&nbsp;-</label>
											<input type='text' class='form-control' id="pMiddleInput" maxlength="4">
											<label for="pLastInput">&nbsp;&nbsp;-</label>
											<input type='text' class='form-control' id="pLastInput" maxlength="4">
										</td>
									</tr>
									
									<tr>
										<th><label for="hourSelect">상담시간</label></th>
										<td class='text-left'> 
											<select class='form-control' id="hourSelect">
												<option value="">선택</option>
												<c:forEach var="index" begin="00" end="23">
													<option value="<fmt:formatNumber value='${index}' pattern="00"/>"><fmt:formatNumber value='${index}' pattern="00"/></option>
												</c:forEach>
											</select>
											시
											
											<label for="minuteSelect"></label>
											<select class='form-control' id="minuteSelect">
												<option value="">선택</option>
												<c:forEach var="index" begin="00" end="59">
													<option value="<fmt:formatNumber value='${index}' pattern="00"/>"><fmt:formatNumber value='${index}' pattern="00"/></option>
												</c:forEach>
											</select>
											분
										</td>
									</tr>
									
									<tr>
										<td colspan=2>
											<label for="memo"></label>
											<textarea class='form-control' placeholder='내용을 200자 내외로 입력하세요.' id="memo"></textarea>
										</td>
									</tr>
								</tbody>
								<tfoot></tfoot>
							</table>
							
							<br>
							<button class='btn' type='button' id="reserveBtn">상담신청하기</button>
						</div>
					</div>
				</div>
			</div>
			 <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>