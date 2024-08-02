<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

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
			var navUrl = "cam";
		</script>
		<script>
			function fnpopup(){
				window.open("<c:url value='/consult/popupN.do'/>",'popup', "width=450, height=500, top=100, left=800, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
			}
		
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
									<li tabindex="27" onmouseover="fn_mouseOver('27','채팅상담')" onmouseout="fn_mouseOut('27')"><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li tabindex="28" onmouseover="fn_mouseOver('28','문자상담')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li class='active' tabindex="29" onmouseover="fn_mouseOver('29','수어상담')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/consult/cam.do'/>" title="수어상담 선택됨">수어상담</a></li>
									<li tabindex="30" onmouseover="fn_mouseOver('30','갑질피해상담')" onmouseout="fn_mouseOut('30')"><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>
									<li><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li class='active'><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>  
						</div> 



                      <div class='consultTop bg03'>
						
						<div class='limitWrap'>
						<div tabindex="31" onmouseover="fn_mouseOver('31','국민콜110 국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('31')" class='visual-text'><strong>국민콜110</strong> 국민의 행복을 <br class='mobile__itemView'>함께 만들어 갑니다.</div>
                    	<div class='row'>
								<div class='col-xs-12 col-md-3 cam_mobile'>
										 <div class='text-center'><img src="../images/egovframework/gcall/main_new/consult/illi_03.png" alt="수어상담 일러스트" /> </div>
										 <div class='camcall'>
											    <h5 tabindex="32" onmouseover="fn_mouseOver('32','상담시간 평일, 설·추석 09:00~18:00')" onmouseout="fn_mouseOut('32')">상담시간 <i class='ti-alarm-clock'></i></h5>
												평일, 설·추석 09:00~18:00 <br>
                                            	<div tabindex="33" onmouseover="fn_mouseOver('33','평일 18:00 이후 및 주말·공휴일에는 107 손말이음센터를 이용해주시기 바랍니다.')" onmouseout="fn_mouseOut('33')" class='info'><span class="fontS-0">평일 18:00 이후 및 주말·공휴일에는 <a href="https://www.relaycall.or.kr/" target="_blank" title="새창열림" class='linkbtn'>107 손말이음센터  <i class='ti-new-window'></i></a>를 <br> 이용해주시기 바랍니다.   </span></div>     
										 </div>
								
								</div><!-- col -->
								<div class='col-xs-12 col-md-9'>
										 
										 
										<div class='title-area long'>
											<h3 tabindex="34" onmouseover="fn_mouseOver('34','수어상담 및 기관수어통역 서비스')" onmouseout="fn_mouseOut('34')" class='mainTitle tcolor_yellow'>수어상담 및 기관수어통역 서비스</h3>
											<div class='info'>
											<span tabindex="35" onmouseover="fn_mouseOver('35','이용문의 국번없이 110')" onmouseout="fn_mouseOut('35')" class="fontS-4 tcolor_sky">이용문의 :</span> <span class="fontS-4 tcolor_white">국번없이 110	</span>
											<span tabindex="36" onmouseover="fn_mouseOver('36','청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5)')" onmouseout="fn_mouseOut('36')" class="pdt-5 tcolor_white" style='display:block;'>청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5)</span>
											</div>
										</div><!-- title-area -->
										<div class='text-area cam'>
													   
                                        			  <h4 tabindex="37" onmouseover="fn_mouseOver('37','수어상담(청각장애인용)')" onmouseout="fn_mouseOut('37')" class='fontS-3' style="display:inline;">수어상담(청각장애인용)</h4>
                                        			  	<span tabindex="38" onmouseover="fn_mouseOver('38','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('38')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은
																	<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
																		<i class='ti-new-window' "></i>
																	</a>
																	을 이용해보세요.
														</span>
                                           				<ul class='mgt-10'>
															<li tabindex="39" onmouseover="fn_mouseOver('39','1 모바일 : 110홈페이지 접속 → 수어상담 → 민원인의 핸드폰번호 기입 → 상담신청  크롬앱 또는 사파리앱 이용, 데이터 이용료 발생됩니다.')" onmouseout="fn_mouseOut('39')">① 모바일 : 110홈페이지 접속 → 수어상담 → 민원인의 핸드폰번호 기입 → 상담신청 <br>
                                            						<span class='tcolor_orange fontS-0'>※ 크롬앱 또는 사파리앱 이용, 데이터 이용료 발생됩니다.</span>
															</li>
															<li tabindex="40" onmouseover="fn_mouseOver('40','2 PC : 크롬을 통해 110홈페이지 접속  → 수어상담 → 민원인의 핸드폰번호 기입 → 상담신청 화상카메라 연결 필수')" onmouseout="fn_mouseOut('40')">② PC : 크롬을 통해 110홈페이지 접속  → 수어상담 → 민원인의 핸드폰번호 기입 → 상담신청 <br>
                                            						<span class='tcolor_orange fontS-0'>※ 화상카메라 연결 필수</span>
															</li>
															<li tabindex="41" onmouseover="fn_mouseOver('41','3 씨토크 영상전화기 : 070-7451-9012,3,5 로 전화 씨토크 회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됩니다.')" onmouseout="fn_mouseOut('41')"> ③ 씨토크 영상전화기 : 070-7451-9012,3,5 로 전화<br>
                                            						<span class='tcolor_orange fontS-0'>※ 씨토크 회선 이용자 무료, 안드로이드와도 호환이 가능하지만 별도의 통화료가 발생됩니다.</span>           
															</li>
														</ul>

										</div><!-- text-area -->

										<div class='text-area yellow cam'>
												<h4 tabindex="42" onmouseover="fn_mouseOver('42','기관수어통역(공공기관용)')" onmouseout="fn_mouseOut('42')" class='fontS-3'> 기관수어통역(공공기관용)</h4>	     
											                       
                                       
                              					<div class='mgb-10 mgt-10'>
												 <strong tabindex="43" onmouseover="fn_mouseOver('43','피씨 크롬을 통해 110홈페이지 접속 → 수어상담 → 기관담당자 연락처 기입 후 상담신청')" onmouseout="fn_mouseOut('43')">PC :</strong> 크롬을 통해 110홈페이지 접속 → 수어상담 → <strong>"기관담당자 연락처 기입"</strong> 후 상담신청 <br>
                                            	 <span tabindex="44" onmouseover="fn_mouseOver('44',' 화상카메라 및 헤드셋 연결 필수')" onmouseout="fn_mouseOut('44')" class='tcolor_blue fontS-0'>※ 화상카메라 및 헤드셋 연결 필수 <br></span>
                                            	</div>

												<div tabindex="45" onmouseover="fn_mouseOver('45','기관수어통역이란 청각장애인이 공공건물 및 공중이용시설을 이용하려는 경우, 시설주는 한국수어 통역 등의 편의를 제공해 민원처리를 진행합니다. 국민콜110은 기관담당자, 청각장애인, 110수어상담사 간의 3자 통역 서비스를 제공합니다')" onmouseout="fn_mouseOut('45')" class='fontW-400 fontS-1'>
                                            	※기관수어통역이란?
                                            	<p class='pdl-15 pdt-5'>청각장애인이 공공건물 및 공중이용시설을 이용하려는 경우, 시설주는 한국수어 통역 등의 편의를<br class='pc__itemView'>
												제공해 민원처리를 진행합니다. 국민콜110은 기관담당자, 청각장애인, 110수어상담사 간의<br class='pc__itemView'> 3자 통역 서비스를 제공합니다.
												</p>
												</div>


										</div><!-- text-area -->
                
                                                                         

								</div><!-- col -->
                        </div><!-- row -->
						</div>
				
                    </div><!-- consultTop -->

				<div class='container'>


                    <div class='limitWrap'>
                    
                        <h3 tabindex="46" onmouseover="fn_mouseOver('46','수어상담 신청하기')" onmouseout="fn_mouseOut('46')" class='mainTitle'>수어상담 신청하기 </h3>
                        <h4 tabindex="47" onmouseover="fn_mouseOver('47','공공기관 수어상담 서비스 통합에 따라, 국민권익위원회 국민콜110(정부민원안내)을 통해 서비스됩니다')" onmouseout="fn_mouseOut('47')" class='subTitle'>공공기관 수어상담 서비스 통합에 따라, 국민권익위원회 국민콜110(정부민원안내)을 통해 서비스됩니다.</h4>
                        
                        

                            <div class='agreeText '>
                                <h5 tabindex="48" onmouseover="fn_mouseOver('48','1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)')" onmouseout="fn_mouseOut('48')">1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</h5>
                                <p tabindex="49" onmouseover="fn_mouseOver('49','국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진 목적(화상수어 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다  관계법령 등 : 부패방지 및 국민권익위원회의 설치와 운영에 관한 법률 등')" onmouseout="fn_mouseOut('49')" class='txt fontS-1'>
								국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진<br class='pc__itemView'> 
								목적(화상수어 상담업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br class='pc__itemView'>
								※ 관계법령 등 : 부패방지 및 국민권익위원회의 설치와 운영에 관한 법률 등
								</p>
                              
                                <h5 tabindex="50" onmouseover="fn_mouseOver('50','2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)')" onmouseout="fn_mouseOut('50')">2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</h5>
								<ul>
									<li tabindex="51" onmouseover="fn_mouseOver('51','필수항목 : 연락처, 상담내용, 상담영상, 아이피 주소(자동수집)')" onmouseout="fn_mouseOut('51')">O 필수항목 : 연락처, 상담내용, 상담영상, IP주소(자동수집)</li>
								</ul>
                                

                                <h5 tabindex="53" onmouseover="fn_mouseOver('53','3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)')" onmouseout="fn_mouseOut('53')">3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</h5>
                                <p tabindex="54" onmouseover="fn_mouseOver('54','국민콜110은 원칙적으로 개인정보 보존기간(5년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다')" onmouseout="fn_mouseOut('54')" class='txt fontS-1'>
								국민콜110은 원칙적으로 개인정보  <span style="text-decoration-line: underline;font-weight:bold;">보존기간(5년)</span>이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다.<br class='pc__itemView'> 
								다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다.<br>
								</p>

                                <h5 tabindex="55" onmouseover="fn_mouseOver('55','4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)')" onmouseout="fn_mouseOut('55')">4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</h5>
                                <p tabindex="56" onmouseover="fn_mouseOver('56','상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다')" onmouseout="fn_mouseOut('56')" class='txt fontS-1'>
								상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나<br class='pc__itemView'> 
								최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.
								</p>

                            </div>
                            
							<form action="#" name="##">
								<fieldset>
									<legend>수어상담신청</legend>

												<div tabindex="57" onmouseover="fn_mouseOver('57','(필수) 위 내용을 이해하였으며, 개인정보 수집 이용에 동의합니다.')" onmouseout="fn_mouseOut('57')" class='agreeCheckWrap '>
													<input type='checkbox' id="agree_yn"><label for="agree_yn">(필수) 위 내용을 이해하였으며, 개인정보 수집&middot;이용에 동의합니다.</label>
												</div>
												
												
												<div class='requestWrap row'>
																		
													<div class='col-xs-12 col-md-2'>
														<h5 tabindex="58" onmouseover="fn_mouseOver('58','(필수) 전화번호')" onmouseout="fn_mouseOut('58')" class='tcolor_blue fontS-2'>(필수) 전화번호</h5>

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


															<div tabindex="59" onmouseover="fn_mouseOver('59','윈도우 및 안드로이드 OS의 경우, 크롬 브라우저에 최적화되어 있습니다')" onmouseout="fn_mouseOut('59')" class='tcolor_blue2 fontS-1 mgt-10'>※ 윈도우 및 안드로이드 OS의 경우, 크롬 브라우저에 최적화되어 있습니다.</div>
															<div tabindex="60" onmouseover="fn_mouseOver('60','IOS의 경우, 사파리 브라우저에 최적화되어 있습니다')" onmouseout="fn_mouseOut('60')" class='tcolor_blue2 fontS-1'>※  IOS의 경우, 사파리 브라우저에 최적화되어 있습니다.</div>
															<div tabindex="61" onmouseover="fn_mouseOver('61','수어상담시 음성안내가 필요할 경우는 여기를 클릭해 주세요')" onmouseout="fn_mouseOut('61')" class='tcolor_blue2 fontS-1'>※  수어상담시 음성안내가 필요할 경우는
																<a href="javascript:fnpopup();" title="새창열림"  class='linkbtn'>
																	여기를 클릭 
																	<i class='ti-new-window'></i>
																</a>해 주세요</div>
													</div>								

												</div><!-- row -->
												
												<div tabindex="62" onmouseover="fn_mouseOver('62','상담신청하기')" onmouseout="fn_mouseOut('62')" class='btnWrap'>
													<button class='btn btn-big btn-blue' type='button' id="camBtn" title="새창 열림">상담신청하기</button>
												</div>

     								</fieldset>
							</form>
							<!-- //수어상담신청 -->

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