<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		
		<meta name="title" content="채팅상담 | 정부민원안내콜센터">
		<meta name="keywords" content="110, 110콜센터, 수어상담">

		<title>수어상담 | 정부민원안내콜센터</title>
		
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
				
				// 수어상담
				$("#camBtn").on("click", function(e) {
					
					/*
					//수어상담 중단
					var now = new Date();
					var nowDay = now.getDate().toString();
					var hours = now.getHours().toString();
					var minutes = now.getMinutes().toString();
                    var seconds = now.getSeconds().toString();
                    
                    var nowTime = (hours[1] ? hours : '0'+hours[0])+""+(minutes[1] ? minutes : '0'+minutes[0])+""+(seconds[1] ? seconds : '0'+seconds[0]);
							
					console.log(nowDay+","+nowTime);
					if(nowDay == 10){
						if(nowTime >= 090000 && nowTime <= 180000){
							alert('죄송합니다. 국민콜110은 코로나19 바이러스 감염 위기로 인해 최소 인력이 근무하고 있습니다.\n전화상담 외 수어상담이 금일 중단됩니다.\n서비스 이용에 불편을 드려 대단히 죄송합니다.');
							return;
						}			
					}
					*/
					
					// 값 체크
					if(!checkValue()) return false;
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/businessChk.do'/>",
						data: {
							ch:'수어상담'
							,codeType:'URGN_YN'
						},
						success: function(res) {
							res = JSON.parse(res);
							if(res._error == true) {
								alert(res._message);
							}
							if(res._error == false){
								let telStr = $("#pHeadSelect").val() + "" + $("#pMiddleInput").val() + "" + $("#pLastInput").val();
								
								// 본인인증 팝업 실행
								var frm = createFrm("popupFrm", 'POST', "<c:url value='/consult/camCheck.do'/>", "popupChk2");
								frm = createInput(frm, "telNum", telStr);
								document.body.insertBefore(frm, null);
								
								var popchk = window.open("", "popupChk2", "width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
								if(popchk == null) {
									alert("팝업이 차단되어있습니다.");
									return false;
								}
								
								frm.submit();
							}
						}
					});
				});
			});
			
			function checkValue() {
				
				// 동의 여부 체크
				if(!$("#agree_yn").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 수어상담 신청이 가능합니다.");
					return false;
				}
				
				// 전화번호 체크
				if($("#pHeadSelect").val() == "" || $("#pMiddleInput").val() == "" || $("#pLastInput").val() == "") {
					alert("전화번호를 입력해주세요.");
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
                        <div class='mainTitle'>수어상담 및 기관수어통역 서비스<br>
                        <small>(이용문의 : 국번없이 110, 청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5))</small></div>
                        
                        <div class='subContentWrap useGuideTableWrap '>
                            <table class='table useGuideTable table-bordered useGuideTable2'>
								<caption class='blind'>수어 상담 이용안내</caption>
                                <thead></thead>
                                <tbody>
                                    <tr>
                                        <th>수어상담(청각장애인용)</th>
                                        <td rowspan='2' class='icon icon5'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon03.png'/>" alt="화상수어상담"></td>
                                        <td class='cont mcenter'>
                                            <div style = 'font-size:20px'>[상담채널별 수어상담 이용방법]</div>
                                            ① 모바일 : 110홈페이지 접속 → 수어상담 → 민원인의 핸드폰번호 기입 후 상담신청 → 상담신청 <br>
                                            	<span class='font-blue'>※ 크롬앱 또는 사파리앱 이용, 데이터 이용료 발생 <br></span>
                                            ② PC : 크롬을 통해 110홈페이지 접속  → 수어상담 → 민원인의 핸드폰번호 기입 후 상담신청 → 상담신청 <br>
                                            	<span class='font-blue'>※ 화상카메라 연결 필수<br></span>
                                            ③ 씨토크 영상전화기 : 070-7451-9012,3,5 로 전화<br>
                                            	<span class='font-blue'>※ 씨토크회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됨<br><br></span>                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>기관수어통역(공공기관용)</th>                                        
                                        <td class='cont mcenter'>
                                            <div style = 'font-size:20px'>[기관수어통역 이용방법]</div>
                                            PC : 크롬을 통해 110홈페이지 접속 → 수어상담 → <b>"기관담당자 연락처 기입"</b> 후 상담신청 <br>
                                            	<span class='font-blue'>※ 화상카메라 및 헤드셋 연결 필수 <br></span>
                                            	<br>
                                            	※기관수어통역이란?<br>
                                            	&nbsp;청각장애인이 공공건물 및 공중이용시설을 이용하려는 경우, 시설주는 한국수어 통역 등의 편의를 제공해 민원처리를 진행합니다. 국민콜110은 기관담당자, 청각장애인, 110수어상담사 간의 3자통역 서비스를 제공합니다.<br>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td colspan=3 class='text-center'>
                                        		상담시간 : 평일, 설·추석 09:00~18:00 <br>
                                            	※ 평일 18:00 이후 및 주말·공휴일에는 <a href="https://www.relaycall.or.kr/" target="_blank" title="새창열림">107 손말이음센터</a>를 이용해주시기 바랍니다.                                            
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
                    
                        <div class='mainTitle'>수어상담 신청하기 </div>
                        <div class='col-xs-12 subComment'>공공기관 수어상담 서비스 통합에 따라, 국민권익위원회 국민콜110(정부민원안내)을 통해 서비스됩니다.</div>
                        
                        
                        <div class='row'>
                            <div class='agreeText col-xs-12'>
                                <b>1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</b><br> 
                                국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진<br> 
                                목적(화상수어 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br> 
                                ※ 관계법령 등 : 부패방지 및 국민권익위원회의 설치와 운영에 관한 법률 등<br>
                                <br>
                                <b>2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</b><br> 
                                가. 필수(자동수집)항목 : 연락처, 상담내용, 상담영상, IP(Internet Protocol) 주소<br> 
                                나. 선택항목 : 성명<br>
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
                            	<label>전화번호</label>
                                <!-- <label for="pHeadSelect" class="hiddenLabel">전화번호 앞자리</label> 
                                <select class='form-control' id="pHeadSelect" title='전화번호 앞자리'>
                                    <option value=''>선택</option>
                                    <option value='010'>010</option>
                                    <option value='011'>011</option>
                                    <option value='016'>016</option>
                                    <option value='017'>017</option>
                                    <option value='018'>018</option>
                                    <option value='019'>019</option>
                                </select> -->
                                <label for="pHeadSelect" class="hiddenLabel">전화번호 앞자리</label>
                                <input type='text' class='form-control' style="margin-left: 0px;" id="pHeadSelect" title='전화번호 앞자리' maxlength="3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                -
                                <label for="pMiddleInput" class="hiddenLabel">전화번호 중간자리</label>
                                <input type='text' class='form-control' style="margin-left: 0px;" id="pMiddleInput" title='전화번호 중간자리' maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                -
                                <label for="pLastInput" class="hiddenLabel">전화번호 뒷자리</label>
                                <input type='text' class='form-control' style="margin-left: 0px;" id="pLastInput" title='전화번호 뒷자리' maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                            </div>
                            
                            <div class='requestWrap col-xs-12 text-center'>
                                <button class='btn' type='button' id="camBtn" title="새창 열림">상담신청하기</button>
                                <br><br>
                                <span class='font-blue'>* 윈도우 및 안드로이드 OS의 경우, 크롬 브라우저에 최적화되어 있습니다.</span>
                                <br>
                                <span class='font-blue'>* IOS의 경우, 사파리 브라우저에 최적화되어 있습니다.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>