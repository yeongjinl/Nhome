<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		
		<meta name="title" content="채팅상담 | 정부민원안내콜센터">
		<meta name="keywords" content="110, 110콜센터, 채팅상담">

		<title>문자상담 | 정부민원안내콜센터</title>
		
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
				
				//글자수 카운트
				$('#contentTextArea').keyup(function (e){
					var content = $(this).val();
					$('#counter').html(content.length);
					
					if(content.length > 1000){
						alert("최대 1000자까지 입력 가능합니다.");
						$(this).val(content.substring(0,1000));
						$('#counter').html("1000");
					}
				});	  
				
				$("#smsBtn").on("click", function(e) {
					
					// 값 체크
					if(!checkValue()) return false;
					
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/businessChk.do'/>",
						data: {
							ch:'문자상담'
							,codeType:'URGN_YN'
						},
						success: function(res) {
							res = JSON.parse(res);
							if(res._error == true) {
								alert(res._message);
							}
							if(res._error == false){
								$.ajax({
									type: "POST",
									url: "<c:url value='/consult/smsReg.do'/>",
									data: {
										"contents": $("#contentTextArea").val(),
										"tel": $("#pHeadSelect option:selected").val() + "" + $("#pMiddleInput").val() + "" + $("#pLastInput").val()
									},
									dataType: "json",
									success: function(res) {
										if(res._error == true) {
											alert(res._message);
										}
										if(res._error == false){
											alert("신청되었습니다.");
											window.location.reload();
										}
									}, error: function(err) {
										console.log("error : " + JSON.stringify(err));
										alert("[ERROR]" + "\n status : " + err.status + "\n text : " + err.statusText);
									}
								});
							}
						}
					});
				});
			});
			
			function checkValue() {
				
				// 동의 여부 체크
				if(!$("#agree_yn").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 문자상담 신청이 가능합니다.");
					return false;
				}

				// 전화번호 체크
				if($("#pHeadSelect").val() == "" || $("#pMiddleInput").val() == "" || $("#pLastInput").val() == "") {
					alert("받을 전화번호를 입력해주세요!!");
					return false;
				}			
				
				return true;
			}
			
		</script>
    </head>
    
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>
			
			<!-- 탑메뉴 -->
			<c:import url="../common/top.jsp"/>
			
			<!-- 탑 서브메뉴 -->
			<c:import url="./common/subMenu.jsp"/>
            
            <main>
                <div class='contentArea' id='contentArea'>
                    <div class='limitWrap'>
                    
                        <div class='mainTitle'>문자상담 <br>
                        <small>(이용문의 : 국번없이 110, 청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5))</small></div>
                        
                        <div class='subContentWrap useGuideTableWrap'>
                            <table class='table useGuideTable table-bordered useGuideTable2' style='margin-bottom:-1px'>
								<caption class='blind'>110문자상담 안내</caption>
                                <thead class='blind'><tr><th colspan="3">110문자상담 안내</th></tr></thead>
                                <tbody>
                                    <tr>
                                        <th>문자상담</th>
                                        <td class='icon icon2'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon05.png'/>" alt="문자상담"></td>
                                        <td class='cont'>
                                            <div class='mfont18 mmb20 mcenter mblock'>상담시간: 365일 24시간</div>
                                            <span class='mfont12'>
                                            	이용방법: 휴대폰 또는 홈페이지 이용
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                            <table class='table useGuideTable table-bordered useGuideTable2 fixed'>
								<caption class='blind'>110문자상담 휴대폰 및 홈페이지 이용 안내</caption>
                                <thead class='blind'><tr><th colspan="2">110문자상담 휴대폰 및 홈페이지 이용 안내</th></tr></thead>
                                <tbody>
                                    <tr>
                                        <td class='text-center  w50per'>
                                            <b>휴대폰</b> (별도 이용료 발생)<br>
                                            	문자메세지 작성 후 110번호로 문자 전송
                                        </td>
                                        <td class='text-center  w50per'>
                                            <b>홈페이지</b> (무료)<br>
                                            	"문자상담 이용하기" 메뉴 이용
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
                        <div class='mainTitle'>문자상담 이용하기</div>
                        <div class='col-xs-12 subComment'>
                        1. 개인정보 수집 및 이용안내 확인 후 동의<br>
                        2. 상담신청내용 및 전화번호 입력 후 상담신청하기 버튼 클릭
                        </div>
                        <div class='row'>
                            <div class='agreeText col-xs-12'>
                                <b>1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</b><br> 
                                국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다.<br> 
                                수집된 개인정보는 정해진 목적(문자상담 업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br>
                                <br>
                                <b>2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</b><br> 
                                가. 필수(자동수집)항목 : 연락처, 상담내용<br>
                                <br>
                                <b>3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</b><br> 
                                국민콜110은 원칙적으로 개인정보 보존기간(1년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 
                                그러하지 않을 수 있습니다.<br>
                                <br>
                                <b>4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</b><br> 
                                상담신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.<br> 
                            </div>
                            
                            <div class='agreeCheckWrap col-xs-12'>
                                <input type='checkbox' id="agree_yn"><label for="agree_yn">개인정보 수집&middot;이용 동의(필수)</label>
                            </div>
                            <div class='requestWrap col-xs-12 text-center'>
                                <label for="contentTextArea">상담신청내용</label> 
                                <textarea class='form-control' placeholder='내용을 입력하세요.' id="contentTextArea"></textarea>
                            	<div align='right' style="font-size:14px;"><span style="color:#aaa;font-size:14px" id="counter">0</span> / 최대 1000자</div>
								<br>
                            	<label>전화번호</label>
                                <label for="pHeadSelect" class="hiddenLabel">전화번호 앞자리</label> 
                                <select class='form-control' id="pHeadSelect" title='전화번호 앞자리'>
                                    <option value=''>선택</option>
                                    <option value='010'>010</option>
                                    <option value='011'>011</option>
                                    <option value='016'>016</option>
                                    <option value='017'>017</option>
                                    <option value='018'>018</option>
                                    <option value='019'>019</option>
                                </select>
                                -
                                <label for="pMiddleInput" class="hiddenLabel">전화번호 중간자리</label>
                                <input type='text' class='form-control' style="margin-left: 0px;" id="pMiddleInput" title='전화번호 중간자리' maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                -
                                <label for="pLastInput" class="hiddenLabel">전화번호 뒷자리</label>
                                <input type='text' class='form-control' style="margin-left: 0px;" id="pLastInput" title='전화번호 뒷자리' maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                <br>
                                <button class='btn' type='button' id="smsBtn">상담신청하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>