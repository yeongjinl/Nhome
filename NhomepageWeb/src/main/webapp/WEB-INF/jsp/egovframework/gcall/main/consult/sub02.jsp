<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="egovframework.gcall.util.EncryptUtil" %>
<%@ page import="java.net.URLEncoder" %>

<%-- <% String myURL = request.getScheme() + "://" + request.getServerName(); %>
<% if(!(request.getServerPort() + "").equals("80") && !(request.getServerPort() + "").equals("443")) myURL = myURL + ":" + request.getServerPort(); %>
<%
    NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
    
    String sSiteCode = "BQ266";							// NICE로부터 부여받은 사이트 코드
    String sSitePassword = "";				// NICE로부터 부여받은 사이트 패스워드
    
    // String sRequestNumber = "REQ0000000001";        	// 요청 번호, 이는 성공/실패후에 같은 값으로 되돌려주게 되므로 
                                                    	// 업체에서 적절하게 변경하여 쓰거나, 아래와 같이 생성한다.
    String sRequestNumber = niceCheck.getRequestNO(sSiteCode);
  	session.setAttribute("REQ_SEQ" , sRequestNumber);	// 해킹등의 방지를 위하여 세션을 쓴다면, 세션에 요청번호를 넣는다.
  	
   	String sAuthType = "";      						// 없으면 기본 선택화면, M: 핸드폰, C: 신용카드, X: 공인인증서
   	
   	String popgubun = "N";								// Y : 취소버튼 있음 / N : 취소버튼 없음
	String customize = "";								// 없으면 기본 웹페이지 / Mobile : 모바일페이지
	
	String sGender = ""; 								// 없으면 기본 선택 값, 0 : 여자, 1 : 남자 
	
    // CheckPlus(본인인증) 처리 후, 결과 데이타를 리턴 받기위해 다음예제와 같이 http부터 입력합니다.
	// 리턴url은 인증 전 인증페이지를 호출하기 전 url과 동일해야 합니다. ex) 인증 전 url : http://www.~ 리턴 url : http://www.~
    String sReturnUrl = myURL + "/auth/success.do";      // 성공시 이동될 URL
    String sErrorUrl = myURL + "/auth/fail.do";          // 실패시 이동될 URL

    // 입력될 plain 데이타를 만든다.
    String sPlainData = "7:REQ_SEQ" + sRequestNumber.getBytes().length + ":" + sRequestNumber +
                        "8:SITECODE" + sSiteCode.getBytes().length + ":" + sSiteCode +
                        "9:AUTH_TYPE" + sAuthType.getBytes().length + ":" + sAuthType +
                        "7:RTN_URL" + sReturnUrl.getBytes().length + ":" + sReturnUrl +
                        "7:ERR_URL" + sErrorUrl.getBytes().length + ":" + sErrorUrl +
                        "11:POPUP_GUBUN" + popgubun.getBytes().length + ":" + popgubun +
                        "9:CUSTOMIZE" + customize.getBytes().length + ":" + customize + 
						"6:GENDER" + sGender.getBytes().length + ":" + sGender;
    
    String sMessage = "";
    String sEncData = "";
    
    int iReturn = niceCheck.fnEncode(sSiteCode, sSitePassword, sPlainData);
    if( iReturn == 0 ) sEncData = niceCheck.getCipherData();
    else if( iReturn == -1) sMessage = "암호화 시스템 에러입니다.";
    else if( iReturn == -2) sMessage = "암호화 처리오류입니다.";
    else if( iReturn == -3) sMessage = "암호화 데이터 오류입니다.";
    else if( iReturn == -9) sMessage = "입력 데이터 오류입니다.";
    else sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
    
    if(iReturn != 0) {
    	System.out.println("iReturn : " + iReturn);
        System.out.println("sMessage : " + sMessage);
    }
%> --%>

<%
	//현재 연월일시분초
	Date currentTime = new Date();
	String currentTimeStr = new SimpleDateFormat("yyyyMMddHHmmss").format(currentTime);
	
	// 현재 연월일시분초 => 암호화(AES128)
	String chk = "";
	try {
		chk = URLEncoder.encode(EncryptUtil.encAES128CBC(currentTimeStr), "UTF-8");
	} catch(IndexOutOfBoundsException e) {
		System.out.println("exception occurred!");
		chk = "";
	}
%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		
		<meta name="title" content="채팅상담 | 정부민원안내콜센터">
		<meta name="keywords" content="110, 110콜센터, 채팅상담">

		<title>채팅상담 | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		
		<style>
			.goBtn {
				cursor: pointer
			}
		</style>
		
		<script>
			$(function() {
				
				/* 채팅상담 클릭시 */
				$("#chatBtn").on("click", function(e) {
					
					// 값 체크
					if(!checkValue()) return false;
					if(!checkValue2()) return false;
					
					let telStr = $("#pHeadSelect").val() + "" + $("#pMiddleInput").val() + "" + $("#pLastInput").val();
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/businessChk.do'/>",
						data: {
							ch:'채팅상담'
							,codeType:'URGN_YN'
						},
						success: function(res) {
							res = JSON.parse(res);
							if(res._error == true) {
								alert(res._message);
							}
							if(res._error == false){
								var URL = "https://handspeak.110.go.kr/ch/main?pn=" + telStr + "&chk=" + "<%=chk%>";
								window.open(URL, "popupChk", "width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
								
								frm.submit();
							}
						}
					});
				});
				
				/* 카카오톡상담 클릭시 */
				$("#kakaoBtn").on("click", function(e) {
					
					
					// 값 체크
					if(!checkValue()) return false;
					
					$.ajax({
						type: "POST",
						url: "<c:url value='/consult/businessChk.do'/>",
						data: {
							ch:'카톡상담'
							,codeType:'URGN_YN'
						},
						success: function(res) {
							res = JSON.parse(res);
							if(res._error == true) {
								alert(res._message);
							}
							if(res._error == false){
								kakaotalkOpenFunc();
							}
						}
					});
				});
				
				// 버튼 스크롤
				$(".goBtn").on("click keydown", function(e) {
					if (e.which === 13 || e.type === "click") {
						var scrollPosition = $($(this).attr("data-target")).offset().top;
						console.log(scrollPosition);
						
						$(window).scrollTop(scrollPosition);
					}
				});
			});
			
			function checkValue() {
				
				// 동의 여부 체크
				if(!$("#agree_yn").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 채팅상담 신청이 가능합니다.");
					return false;
				}
				
				return true;
			}
			
			function checkValue2() {
				
				// 전화번호 체크
				if($("#pHeadSelect").val() == "" || $("#pMiddleInput").val() == "" || $("#pLastInput").val() == "") {
					alert("전화번호를 입력해주세요.");
					return false;
				}
				
				return true;
			}
			
			/* function checkValue2() {
							
				// 동의 여부 체크
				if(!$("#agree_yn2").is(":checked")) {
					alert("개인정보 수집 및 이용에 동의하셔야 카카오톡상담 신청이 가능합니다.");
					return false;
				}
				
				return true;
			} */
			
			function kakaotalkOpenFunc() {
				let frmObj = $("<form>", { "id": "frm", "target": "_blank", "method": "POST", "action": "https://bizmessage.kakao.com/chat/open" });
				let inputObj1 = $("<input>", { "name": "uuid", "value": "@국민톡110" });
				let inputObj2 = $("<input>", { "name": "extra", "value": '[{"acrcUserId":""}]' });
				
				frmObj.append(inputObj1);
				frmObj.append(inputObj2);
				
				$(document.body).append(frmObj);
				$("#frm").submit();
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
                    
                        <div class='mainTitle'>채팅상담 <br>
                        <small>(이용문의 : 국번없이 110, 청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5))</small></div>
                        
                        <div class='subContentWrap useGuideTableWrap '>
                            <table class='table useGuideTable table-bordered useGuideTable2'>
								<caption class='blind'>채팅 상담 이용안내 목록</caption>
                                <thead></thead>
                                <tbody>
                                    <tr>
                                        <th>채팅상담</th>
                                        <td class='icon icon3 ' data-target="#chat" >
                                        	<img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon04.png'/>" alt="채팅상담">
                                        </td>
                                        <td class='cont mcenter'>상담시간: 365일 24시간(모바일 접속시 데이터가 부과됨)</td>
                                    </tr>
                                    
                                    <tr>
                                        <th>카카오톡상담</th>
                                        <td class='icon icon8 ' data-target="#chat" >
                                        	<img src="<c:url value='/images/egovframework/gcall/main/common/serviceIcon08.png'/>" alt="카카오톡상담">
                                        </td>
                                        <td class='cont mcenter'>
                                        	상담시간: 365일 24시간<br>
                                        	 <span class='font-blue'>&nbsp;※ "국민톡110" 채널 추가 시, 더 편리하게 상담가능</span><br>
                                        	 &nbsp;<a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림">(채널 바로가기)</a>
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
                        <div class='row'>
                            <div class='col-xs-12 col-md-12'>
                            	<div class='mainTitle' id="chat">채팅 / 카카오톡 상담 신청하기</div>
                                <div class='col-xs-12 subComment'>공공기관 채팅상담 서비스 통합에 따라, 국민권익위원회 국민콜110(정부민원안내)을 통해 서비스 됩니다.</div>
                                <div class='agreeText col-xs-12'>
                                    <b>1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</b><br> 
									국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진<br> 
									목적(채팅 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br> 
									※ 관계법령 등 : 부패방지 및 국민권익위원회의 설치와 운영에 관한 법률 등<br>
                                    <br>
                                    <b>2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</b><br> 
									가-1. 채팅 (필수항목 자동수집) : 연락처, 상담내용, IP(Internet Protocol) 주소<br>
									가-2. 채팅 (선택항목) : 성명<br>
									나-1. 카카오톡 (필수항목 자동수집) : 카카오톡 고객ID, 상담내용<br>
									나-2. 카카오톡 (선택항목) : 연락처, 성명<br>
                                    <br>
                                    <b>3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</b><br> 
									국민콜110은 원칙적으로 개인정보 보존기간(1년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 
									그러하지 않을 수 있습니다.<br>
                                    <br>
                                    <b>4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</b><br> 
									상담신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.<br> 
                                </div>
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
                                <br>
                            </div>
                            
                            <div class='intro110_03 text-center'>※ 채팅상담 신청시에만 전화번호 입력</div>
                            
                            <div class='col-xs-12 col-md-6'>
                                <div class='requestWrap col-xs-12 text-center'>
                                	<button class='btn' type='button' id="chatBtn" title="새창 열림">채팅상담 신청하기</button>
                                </div>
                            </div>
                            <div class='col-xs-12 col-md-6'>
                                <div class='requestWrap col-xs-12 text-center'>
                                	<button class='btn' type='button' id="kakaoBtn" title="새창 열림">카카오톡상담 신청하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

			<c:import url="../common/footer.jsp"/>
		</div>
	</body>
</html>