<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="egovframework.gcall.util.EncryptUtil" %>
<%@ page import="java.net.URLEncoder" %>

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

		<!-- 검색 수집용 -->
		<meta name='keywords' content='정부민원안내콜센터, 국민콜110, 국민권익위원회, 카카오톡상담, 채팅상담, 전화상담, 수어상담, 갑질피해상담'>
		<meta name='description' content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.' />
		<meta name='copyright' content='© Copyright 2006-2022 국민콜110(정부민원안내) All Rights Reserved.' />
		<meta name='robots' content='index,follow' />
		<meta name='viewport' content='width=480, maximum-scale=1.0, user-scalable=no' />
		<meta property='og:url'                content='https://www.110.go.kr/' />
		<meta property='og:type'               content='website' />
		<meta property='og:title'              content='정부민원안내콜센터' />
		<meta property='og:description'        content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.' />
		<meta property='og:image'              content='/images/egovframework/gcall/main_new/kakao.jpg' />
		<meta name='twitter:card' content='summary'>
		<meta name='twitter:title' content='정부민원안내콜센터'>
		<meta name='twitter:url' content='https://www.110.go.kr/'>
		<meta name='twitter:image' content='/images/egovframework/gcall/main_new/kakao.jpg'>
		<meta name='twitter:description' content='국민권익위원회가 운영하는 정부민원안내콜센터(110)는 정부민원에 대한 전화상담, 카카오톡 상담, 온라인(화상수어, 채팅, SNS) 상담을 제공합니다.'/>
		
		<!-- favicon-->
		<link rel = "shortcut icon" href = "/images/egovframework/gcall/main_new/favicon.jpg">
				
		<title>정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="/plugin/font/font.css">
		<link rel="stylesheet" href="/plugin/fontawesome/css/all.css">
		<link rel="stylesheet" href="/plugin/themify/themify-icons.css" >

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/base.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/grid.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/common.css">
		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/jquery-ui.css">

		<link rel="stylesheet" href="/css/egovframework/gcall/main_new/css.css">
		
		<!-- js 라이브러리 -->
		<script src="/js/egovframework/gcall/main/jquery-3.4.1.min.js"></script>
		<script src="/js/egovframework/gcall/main/jquery-ui.js"></script>
		<script src="/js/egovframework/gcall/main/scriptN.js"></script>
		<script type="text/javascript">
			var navUrl = "chat";
			
			
			function fn_openChatbotPop() {
			    var _oPopup = window.open("", "chatbot_popup", "width=10, height=10");
			    _oPopup.location.href = "https://chatbot.ips.go.kr/chatbotPop.ndo?bnrId=aKjplsjoeU3ZofF#none";
			}
		</script>
		<style>
			.goBtn {
				cursor: pointer
			}
		</style>
		
		<script>
			function fnpopup(){
				window.open("<c:url value='/consult/popupN.do'/>",'popup', "width=450, height=500, top=100, left=800, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
			}
		
			$(function() {
				
				/* 채팅상담 클릭시 */
				$("#chatBtn").on("click", function(e) {
					
// 					window.open("<c:url value='/consult/popupN.do'/>",'popup', "width=450, height=500, top=100, left=800, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
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
			
		<c:import url="../common/top_new.jsp"/>

            
		<main class='mainWrap'>
				<c:import url="../common/sideMenu.jsp"/>
				<!-- quick_wrap -->
               <div class='contentArea' id='contentArea'>
						<div class="sub-visual subv-1">
							<h2 tabindex="24" onmouseover="fn_mouseOver('24','상담안내')" onmouseout="fn_mouseOut('24')">상담안내</h2>  
							<p tabindex="25" onmouseover="fn_mouseOver('25','국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('25')">국민의 행복을 함께 만들어 갑니다.</p> 
							<div class="sub-depth-1">  
								<ul> 
									<li tabindex="26" onmouseover="fn_mouseOver('26','상담이용안내')" onmouseout="fn_mouseOut('26')"><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>
									<li class='active' tabindex="27" onmouseover="fn_mouseOver('27','채팅상담')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/consult/chat.do'/>" title="채팅상담 선택됨">채팅상담</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','문자상담')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','수어상담')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li tabindex="30" onmouseover="fn_mouseOver('30','갑질피해상담')" onmouseout="fn_mouseOut('30')"><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>
									<li class='active'><a href="<c:url value='/consult/chat.do'/>" title="채팅상담 선택">채팅상담</a></li>
									<li><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>  
						</div> 


                    <div class='consultTop bg01'>
						
						<div class='limitWrap'>
						<div tabindex="31" onmouseover="fn_mouseOver('31','국민콜110 국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('31')" class='visual-text'><strong>국민콜110</strong> 국민의 행복을 <br class='mobile__itemView'>함께 만들어 갑니다.</div>
                    	<div class='row'>
								<div class='col-xs-12 col-md-4 text-center'><img src="../images/egovframework/gcall/main_new/consult/illi_01.png" alt="채팅상담 일러스트" /></div>
								<div class='col-xs-12 col-md-8'>

										<div class='title-area'>
											<h3 tabindex="32" onmouseover="fn_mouseOver('32','채팅상담')" onmouseout="fn_mouseOut('32')" class='mainTitle'>채팅상담 </h3>
											<div tabindex="33" onmouseover="fn_mouseOver('33','이용문의 국번없이 110 청각장애인의 경우 씨토크 영상전화 070-7451-9012,3,5')" onmouseout="fn_mouseOut('33')" class='info'>
											<strong>이용문의 : 국번없이 110	</strong><br>
											청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5)
											</div>
										</div><!-- title-area -->

										<div class='text-area' style='padding:30px 0;'>
											<div class='row'>
													<div class='col-xs-12 col-md-6 chat first'>
															
															<h4 tabindex="34" onmouseover="fn_mouseOver('34','채팅상담')" onmouseout="fn_mouseOut('34')" class='lineH50'><img src="../images/egovframework/gcall/main_new/consult/icon_chat_small.png" alt="채팅상담 아이콘"> 채팅상담</h4>
															<div class='mgl-10'>
															상담시간: 365일 24시간 <div tabindex="35" onmouseover="fn_mouseOver('35','상담시간: 365일 24시간 모바일 접속시 데이터가 부과됨')" onmouseout="fn_mouseOut('35')" class="tcolor_orange fontS-0">※ 모바일 접속시 데이터가 부과</div>
															<div class='mgt-20'>
																<a  tabindex="36" onmouseover="fn_mouseOver('36','채팅상담 바로가기')" onmouseout="fn_mouseOut('36')" href="#chat" title="채팅상담바로가기" class='btn btn-small-xs btn-green'>채팅상담 바로가기</a>	</div>
															</div>
															<span tabindex="37" onmouseover="fn_mouseOver('37','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('37')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은<br>
																<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
																	<i class='ti-new-window' "></i>
																</a>
																을 이용해보세요.
															</span>
													</div>
													<div class='col-xs-12 col-md-6 chat'>
																			
															<h4 tabindex="38" onmouseover="fn_mouseOver('38','카카오톡상담')" onmouseout="fn_mouseOut('38')" class='lineH50'><img src="../images/egovframework/gcall/main_new/consult/icon_kakao_small.png" alt="카카오톡상담 아이콘"> 카카오톡상담</h4>
															<div class='mgl-10'>
																상담시간: 365일 24시간
																 <div tabindex="39" onmouseover="fn_mouseOver('39','상담시간 365일 24시간 국민톡110 채널로 더 편리하게 상담가능합니다.')" onmouseout="fn_mouseOut('39')" class='tcolor_orange fontS-0'>※ "국민톡110" 채널로 더 편리하게 상담가능</div>
																 <div tabindex="40" onmouseover="fn_mouseOver('40','카카오톡 채널 바로가기')" onmouseout="fn_mouseOut('40')" class='mgt-20'><a href="http://pf.kakao.com/_xjCpTT" target="_blank" title="새창열림" class='btn btn-small-xs btn-gray kakao'>카카오톡 채널 바로가기</a></div>
															</div>
															<span tabindex="41" onmouseover="fn_mouseOver('41','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('41')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은<br>
																<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
																	<i class='ti-new-window' "></i>
																</a>
																을 이용해보세요.
															</span>
													</div>
											</div><!-- row -->

										</div><!-- text-area -->

								</div><!-- col -->
                        </div><!-- row -->
						</div>
				
                    </div><!-- consultTop -->

				
				<div class='container'>


                    <div class='limitWrap'>

							<h3 tabindex="42" onmouseover="fn_mouseOver('42','채팅 카카오톡 상담 신청하기')" onmouseout="fn_mouseOut('42')" class='mainTitle' id="chat">채팅 / 카카오톡 상담 신청하기</h3>
							<h4 tabindex="43" onmouseover="fn_mouseOver('43','공공기관 채팅상담 서비스 통합에 따라, 국민권익위원회 국민콜110 정부민원안내을 통해 서비스 됩니다.')" onmouseout="fn_mouseOut('43')" class='subTitle'>공공기관 채팅상담 서비스 통합에 따라, 국민권익위원회 국민콜110(정부민원안내)을 통해 서비스 됩니다.</h4>

                                <div class='agreeText'>
                                    <h5 tabindex="44" onmouseover="fn_mouseOver('44','1 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)')" onmouseout="fn_mouseOut('44')">1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</h5>
									<p  tabindex="45" onmouseover="fn_mouseOver('45','국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진 목적(채팅 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다 관계법령 등 부패방지 및 국민권익위원회의 설치와 운영에 관한 법률 등')" onmouseout="fn_mouseOut('45')"class='txt fontS-1'>국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진<br class='pc__itemView'> 
									목적(채팅 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br class='pc__itemView'> 
									※ 관계법령 등 : 부패방지 및 국민권익위원회의 설치와 운영에 관한 법률 등</p>
                                    
                                    <h5 tabindex="46" onmouseover="fn_mouseOver('46','2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)')" onmouseout="fn_mouseOut('46')">2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</h5>
									<ul>
										<li tabindex="47" onmouseover="fn_mouseOver('48','가. 채팅 (필수항목) : 연락처, 상담내용, 아이피 주소(자동수집)')" onmouseout="fn_mouseOut('48')">가. 채팅(필수항목) : 연락처, 상담내용, IP주소(자동수집)</li>
										<li tabindex="50" onmouseover="fn_mouseOver('50','나. 카카오톡(필수항목) : 카카오톡 아이디(자동수집), 상담내용')" onmouseout="fn_mouseOut('50')">나. 카카오톡(필수항목) : 카카오톡ID(자동수집), 상담내용</li>
									</ul>


                                    <h5 tabindex="51" onmouseover="fn_mouseOver('51','3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)')" onmouseout="fn_mouseOut('51')">3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</h5>
									<p tabindex="52" onmouseover="fn_mouseOver('52','국민콜110은 원칙적으로 개인정보 보존기간(5년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다')" onmouseout="fn_mouseOut('52')" class='txt fontS-1'>국민콜110은 원칙적으로 개인정보 <span style="text-decoration-line: underline;font-weight:bold;">보존기간(5년)</span>이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다.<br class='pc__itemView'> 
									다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다.</p>


                                    <h5 tabindex="53" onmouseover="fn_mouseOver('53','4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)')" onmouseout="fn_mouseOut('53')">4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</h5>
									<p tabindex="54" onmouseover="fn_mouseOver('54','상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다')" onmouseout="fn_mouseOut('54')" class='txt fontS-1'>상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나<br class='pc__itemView'> 
									최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.
									</p>
                                
                            </div>

							<form action="#" name="##">
								<fieldset>
									<legend>채팅상담신청</legend>

												<div tabindex="55" onmouseover="fn_mouseOver('55','(필수) 위 내용을 이해하였으며, 개인정보 수집 이용에 동의합니다.')" onmouseout="fn_mouseOut('55')" class='agreeCheckWrap'>
													<input type='checkbox' id="agree_yn"><label for="agree_yn">(필수) 위 내용을 이해하였으며, 개인정보 수집&middot;이용에 동의합니다.</label>
												</div>
												
												<div class='requestWrap row'>
																		
													<div tabindex="56" onmouseover="fn_mouseOver('56','(필수) 전화번호')" onmouseout="fn_mouseOut('56')" class='col-xs-12 col-md-2'>
														<h5 class='tcolor_blue fontS-2'>(필수) 전화번호</h5>

													</div>
													<div class='col-xs-12 col-md-10'>
														
															<label for="pHeadSelect" class="hiddenLabel">전화번호 앞자리</label>
															<input type='text' class='form-control' style="margin-left: 0px;" id="pHeadSelect" title='전화번호 앞자리' maxlength="3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
															-
															<label for="pMiddleInput" class="hiddenLabel">전화번호 중간자리</label>
															<input type='text' class='form-control' style="margin-left: 0px;" id="pMiddleInput" title='전화번호 중간자리' maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
															-
															<label for="pLastInput" class="hiddenLabel">전화번호 뒷자리</label>
															<input type='text' class='form-control' style="margin-left: 0px;" id="pLastInput" title='전화번호 뒷자리' maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
															<div tabindex="57" onmouseover="fn_mouseOver('57','채팅상담 신청시에만 전화번호 입력')" onmouseout="fn_mouseOut('57')" class='tcolor_blue2 fontS-1 mgt-10'>※ 채팅상담 신청시에만 전화번호 입력</div>
															<div tabindex="58" onmouseover="fn_mouseOver('58','채팅상담시 음성안내가 필요할 경우는 여기를 클릭해주세요')" onmouseout="fn_mouseOut('58')" class='tcolor_blue2 fontS-1 mgt-10'>※ 채팅상담시 음성안내가 필요할 경우는 <a href="javascript:fnpopup();" title="새창열림"  class='linkbtn'>
																	여기를 클릭 
																	<i class='ti-new-window'></i>
																</a>해 주세요</div>
													
													</div>								

												</div><!-- row -->
												
												
												
												<div class='btnWrap'>
													<button tabindex="59" onmouseover="fn_mouseOver('59','채팅상담 신청하기')" onmouseout="fn_mouseOut('59')" class='btn btn-big btn-blue' type='button' id="chatBtn" title="새창 열림">채팅상담 신청하기</button>
													<button tabindex="60" onmouseover="fn_mouseOver('60','카카오톡상담 신청하기')" onmouseout="fn_mouseOut('60')" class='btn btn-big btn-blue' type='button' id="kakaoBtn" title="새창 열림">카카오톡상담 신청하기</button>
												</div>
     								</fieldset>
							</form>
							<!-- //채팅상담신청 -->

                    </div><!-- limitWrap -->
                </div></div><!-- contentArea -->

            </main>

			
            <c:import url="../common/foot_top.jsp"/>
			<c:import url="../common/foot_new.jsp"/>

		</div>
	</body>
</html>
<script>
	function fn_openChatbotPop() {		
	    var _oPopup = window.open("", "chatbot_popup", "width=10, height=10");
	    _oPopup.location.href = "https://chatbot.ips.go.kr/chatbotPop.ndo?bnrId=aKjplsjoeU3ZofF#none";
	}
</script>