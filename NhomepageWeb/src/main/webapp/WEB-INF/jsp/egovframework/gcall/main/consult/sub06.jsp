<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>갑질피해상담 | 정부민원안내콜센터</title>
		
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
				$("#affectBtn").on("click", function(e) {
					// 값 체크
					if(!checkValue()) return false;
					
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/businessChk.do'/>",
						data: {
							ch:'갑질피해상담'
							,codeType:'URGN_YN'
						},
						success: function(res) {
							res = JSON.parse(res);
							if(res._error == true) {
								alert(res._message);
							}
							if(res._error == false){
								window.open("https://handspeak.110.go.kr/ch/main", "chat", "resizable=no, width=396, height=587, top=100, left=100 titlebar=no, status=no");
							}
						}
					});
				});
			});
			
			function checkValue() {
				
				// 동의 여부 체크
				if(!$("#agree_yn").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 갑질피해상담 신청이 가능합니다.");
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
                    
                        <div class='mainTitle'>갑질피해상담 <br>
                        <small>(이용문의 : 국번없이 110, 청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5))</small></div>
                        
                        <div class='subContentWrap useGuideTableWrap'>
                            <table class='table useGuideTable table-bordered useGuideTable2' >
                                <caption class='blind'>갑질피해상담 이용 안내</caption>
                                <thead></thead>
                                <tbody>
                                    <tr>
                                        <th>갑질피해상담</th>
                                        <td class='icon icon4'><img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon02.png'/>" alt="갑질피해상담"></td>
                                        <td class='cont'>상담시간: 365일 24시간 <br>
                                        <span class='font-blue'>&nbsp;※ 카카오톡(채널:국민콜110)으로도 갑질피해상담 가능</span>
                                        &nbsp;<a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림">(채널 바로가기)</a></td>
                                    </tr>
                                    <tr>
                                        <td colspan=3 class='text-center '>피해자 보호를 위해 익명으로 채팅상담 합니다.</td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                        </div>
                    </div>
                </div>
                
                <div class='contentArea'>
                    <div class='limitWrap'>
                        <div class='mainTitle'>갑질 유형 및 사례</div>
                        
                        <div class='subContentWrap'>
                            <div class='col-xs-12 subComment'>
                                공공분야의 민간에 대한 갑질
                            </div>
                            <table class='table table-bordered mb50 example_table'>
                                <caption class='blind'>공공분야의 민간에 대한 갑질의 유형 및 대표 사례</caption>
                                <thead>
                                    <tr>
                                        <th colspan=2>유형</th>
                                        <th>대표사례</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th rowspan=2>이익 추구</th>
                                        <th>공공분야</th>
                                        <td>
                                        • 상위법 배치, 위임범위 일탈 자치법규 및 임의지침 운영<br>
                                        • 계약법규 상 기준보다 하자담보책임기간을 과도하게 설정<br>
                                        • 발주기관 귀책사유로 공사기간 연장 시에도 실비 미지급
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>개인</th>
                                        <td>
                                        • 인허가 승인, 낙찰자 선정 등을 조건으로 금품·향응 수수<br>
                                        • 발주기관 감독이 특정업체와의 하도급 계약을 강요<br>
                                        • 자녀 영어숙제, 하이패스 충전 및 세차 등 사적 심부름
                                        </td>
                                    </tr>
                                    <tr>
                                        <th rowspan=2>불이익 처우</th>
                                        <th>업무적</th>
                                        <td>
                                        • 인·허가 시 부당한 조건 부여 또는 불허, 처리 지연<br>
                                        • 법령상 근거 없는 계약 관련 자체벌점제도 운영 및 행정지도<br>
                                        • 발주기관에 대한 공사 민원을 시공사가 해결하도록 전가
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>인격적</th>
                                        <td>
                                        • 유관단체 여직원에게 술자리 배석 강요, 성폭행<br>
                                        • 가해자가 갑질 피해 신고인에게 신고 철회 종용 등 협박<br>
                                        • 인허가 담당 공무원이 설계사무소 직원에게 반말·협박
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>

                            <div class='col-xs-12 subComment'>
                                공공분야 내부의 갑질
                            </div>
                            
                            <table class='table table-bordered example_table'>
                                <caption class='blind'>공공분야 내부의 갑질의 유형 및 대표 사례</caption>
                                <thead>
                                    <tr>
                                        <th colspan=2>유형</th>
                                        <th>대표사례</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th rowspan=2>이익 추구</th>
                                        <th>공공분야</th>
                                        <td>
                                        • 비공식 인력파견, 인사적체 해소에 산하기관 활용<br>
                                        • 인허가 조건으로 주민편익시설 과다요구 및 비용부담 전가<br>
                                        • 산하기관 시설 무상사용 또는 과소 비용 지급
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>개인</th>
                                        <td>
                                        • 승진·인사를 빌미로 하급자로부터 금품·향응 수수<br>
                                        • 기관장이 인사팀장에게 특정 응시자 합격 지시 및 채용공고 변경<br>
                                        • 기관장 부인 생일행사 등에 공공시설 이용 및 공무원 동원 
                                        </td>
                                    </tr>
                                    <tr>
                                        <th rowspan=2>불이익 처우</th>
                                        <th>업무적</th>
                                        <td>
                                        • 승진 누락, 부당 전보·평정 등 인사권한 남용<br>
                                        • 야근 및 휴일 근무 강요, 업무지시 후 책임 전가<br>
                                        • 70년치 감사자료, 3천장의 대형도면 출력 등 과다한 자료요구
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>인격적</th>
                                        <td>
                                        • 상급기관에서 산하기관 직원에게 폭언·폭행<br>
                                        • 인턴에게 카톡으로 사적만남 요구, 회식자리에서 성추행<br>
                                        • 특수교육실무원 인사명령 시 ‘반납’이라는 표현 사용
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                            <div class='col-xs-12 intro110_01'>
                            	※ 민간분야 내부의 갑질피해 제보 및 상담은 <a href="https://ko-kr.facebook.com/gabjil119" target="_blank" title="새창열림">직장갑질119</a>를 이용해주시기 바랍니다.
                           	</div>
                        </div>
                    </div>
                </div>
                
                <div class='contentArea'>
                    <div class='limitWrap'>
                    
                        <div class='mainTitle'>갑질피해상담 신청하기</div>
                        <div class='col-xs-12 subComment'>
                            	개인정보 수집 및 이용안내 확인 후 동의
                        </div>
                        
                        <div class='row'>
                            <div class='agreeText col-xs-12'>
                                <b>1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</b> <br>
                                국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다.<br> 
                                수집된 개인정보는 정해진 목적(갑질피해 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br>
                                <br>
                                <b>2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</b><br> 
                                가. 필수(자동수집)항목 : 상담내용<br>
                                나. 선택항목 : 성명, 연락처(갑질피해 관련기관 담당자 상담 필요시)<br> 
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
                                <button class='btn' type='button' id="affectBtn" title="새창 열림">상담신청하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>