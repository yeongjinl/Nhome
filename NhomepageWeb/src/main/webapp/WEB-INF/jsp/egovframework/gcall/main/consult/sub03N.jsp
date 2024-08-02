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
			var navUrl = "sms";
		</script>
		<script>
			$(function() {
				
				// 글자수 카운트
				$('#contentTextArea').keyup(function (e){
					var text = $(this).val();
		            var koreanCharacters = text.match(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g) || [];
		            var englishCharacters = text.match(/[a-zA-Z]/g) || [];
		            var numberCharacters = text.match(/[0-9]/g) || [];
		            var specialCharacters = text.match(/[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/g) || [];

		            var totalCharacters = (koreanCharacters.length * 2) + englishCharacters.length + numberCharacters.length + specialCharacters.length;
		            $('#counter').html(totalCharacters);
					if(totalCharacters > 1000){
						alert("최대 1000자까지 입력 가능합니다.");
						$(this).val(text.substring(0,1000));
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
									<li class='active' tabindex="28" onmouseover="fn_mouseOver('28','문자상담')" onmouseout="fn_mouseOut('28')"><a href="<c:url value='/consult/sms.do'/>" title="문자상담 선택됨">문자상담</a></li>
									<li tabindex="29" onmouseover="fn_mouseOver('29','수어상담')" onmouseout="fn_mouseOut('29')"><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li tabindex="30" onmouseover="fn_mouseOver('30','갑질피해상담')" onmouseout="fn_mouseOut('30')"><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>   
							</div>
						</div>   
						<div class="sub-depth-2">
								<ul> 
									<li><a href="<c:url value='/consult/manual.do'/>">상담이용안내</a></li>
									<li><a href="<c:url value='/consult/chat.do'/>">채팅상담</a></li>
									<li class='active'><a href="<c:url value='/consult/sms.do'/>">문자상담</a></li>
									<li><a href="<c:url value='/consult/cam.do'/>">수어상담</a></li>
									<li><a href="<c:url value='/consult/affect.do'/>">갑질피해상담</a></li>
								</ul>  
						</div> 

                    <div class='consultTop bg02'>

						<div class='limitWrap'>
						<div tabindex="31" onmouseover="fn_mouseOver('31','국민콜110 국민의 행복을 함께 만들어 갑니다')" onmouseout="fn_mouseOut('31')" class='visual-text blue'><strong>국민콜110</strong> 국민의 행복을 <br class='mobile__itemView'>함께 만들어 갑니다.</div>
                    	<div class='row'>
								<div class='col-xs-12 col-md-4 text-center'><img src="../images/egovframework/gcall/main_new/consult/illi_02.png" alt="문자상담 일러스트"></div>
								<div class='col-xs-12 col-md-8'>
										

										<div class='title-area'>
											<h3 tabindex="32" onmouseover="fn_mouseOver('32','문자상담')" onmouseout="fn_mouseOut('32')" class='mainTitle blue'>문자상담 </h3>
											<div tabindex="33" onmouseover="fn_mouseOver('33','이용문의  국번없이 110 청각장애인의 경우 씨토크 영상전화 070-7451-9012,3,5')" onmouseout="fn_mouseOut('33')" class='info tcolor_black'>
											<strong>이용문의 : 국번없이 110</strong>	<br>
											청각장애인의 경우 씨토크 영상전화(070-7451-9012,3,5)
											</div>
										</div><!-- title-area -->

										<div class='text-area'>

															<h4 tabindex="34" onmouseover="fn_mouseOver('34','110문자상담 안내')" onmouseout="fn_mouseOut('34')" class='fontS-3' style="display:inline;">110문자상담 안내</h4>
																<span tabindex="41" onmouseover="fn_mouseOver('41','간단한 상담은 (국민비서 상담챗봇)을 이용해보세요.')" onmouseout="fn_mouseOut('41')" class='tcolor_blue2 fontS-0 fontW-400'>※ 간단한 상담은
																	<a onclick='fn_openChatbotPop();' target="_blank" title="새창열림" class='linkbtn' style="cursor:pointer;">국민비서 상담챗봇
																		<i class='ti-new-window' "></i>
																	</a>
																	을 이용해보세요.
																</span>
															<div tabindex="35" onmouseover="fn_mouseOver('35','상담시간: 365일 24시간')" onmouseout="fn_mouseOut('35')" class='fontS-2 fontW-500'>상담시간: 365일 24시간</div>
															<div tabindex="36" onmouseover="fn_mouseOver('36','이용방법: 휴대폰 또는 홈페이지 이용')" onmouseout="fn_mouseOut('36')" class='fontS-2'>이용방법: 휴대폰 또는 홈페이지 이용</div>
	
															<div class='tcolor_orange mgt-10'>
																 <strong tabindex="37" onmouseover="fn_mouseOver('37','휴대폰 (별도 이용료 발생)')" onmouseout="fn_mouseOut('37')" class='fontS-2'>휴대폰 (별도 이용료 발생)</strong>
																 <small tabindex="38" onmouseover="fn_mouseOver('38','문자메세지 작성 후 110번호로 문자 전송')" onmouseout="fn_mouseOut('38')">문자메세지 작성 후 110번호로 문자 전송</small>
																	<br>
																<strong tabindex="39" onmouseover="fn_mouseOver('39','홈페이지 (무료)')" onmouseout="fn_mouseOut('39')" class='fontS-2'>홈페이지 (무료)</strong>
																<small tabindex="40" onmouseover="fn_mouseOver('40','문자상담 신청하기 메뉴 이용')" onmouseout="fn_mouseOut('40')">"문자상담 신청하기" 메뉴 이용</small><br>
															</div>

										</div><!-- text-area -->


								</div><!-- col -->
                        </div><!-- row -->
						</div>
				
                    </div><!-- consultTop -->

				<div class='container'>

                    <div class='limitWrap'>

                        <h3 tabindex="42" onmouseover="fn_mouseOver('42','문자상담 신청하기')" onmouseout="fn_mouseOut('42')" class='mainTitle'>문자상담 신청하기</h3>

                        <ol class='olStyle'>
                        <li tabindex="43" onmouseover="fn_mouseOver('43','1 개인정보 수집 및 이용안내 확인 후 동의')" onmouseout="fn_mouseOut('43')">개인정보 수집 및 이용안내 확인 후 동의</li>
                        <li tabindex="44" onmouseover="fn_mouseOver('44','2 상담신청내용 및 전화번호 입력 후 상담신청하기 버튼 클릭')" onmouseout="fn_mouseOut('44')">상담신청내용 및 전화번호 입력 후 상담신청하기 버튼 클릭</li>
                        </ol>


                            <div class='agreeText'>
                                <h5 tabindex="45" onmouseover="fn_mouseOver('45','1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)')" onmouseout="fn_mouseOut('45')">1. 개인정보의 수집 및 이용 목적 (개인정보보호법 제15조)</h5>
                                <p tabindex="46" onmouseover="fn_mouseOver('46','국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진 목적(문자상담 업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.')" onmouseout="fn_mouseOut('46')" class='txt fontS-1'>국민콜110은 관계법령 등에서 정하는 소관 업무의 수행을 위하여 다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 <br class='pc__itemView'> 
								정해진 목적(문자상담 업무 처리·분석·관리) 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.</p>
                                

                                <h5 tabindex="47" onmouseover="fn_mouseOver('47','2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)')" onmouseout="fn_mouseOut('47')">2. 수집하는 개인정보의 항목 (개인정보보호법 제15조, 제16조)</h5>
                                <p tabindex="48" onmouseover="fn_mouseOver('48','필수항목 : 연락처, 상담내용')" onmouseout="fn_mouseOut('48')" class='txt fontS-1'>O 필수항목 : 연락처, 상담내용</p>
                                

                                <h5 tabindex="49" onmouseover="fn_mouseOver('49','3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)')" onmouseout="fn_mouseOut('49')">3. 개인정보의 보유 및 이용기간 (공공기록물 관리에 관한 법률 시행령 제26조)</h5>
                                <p tabindex="50" onmouseover="fn_mouseOver('50','국민콜110은 원칙적으로 개인정보 보존기간(5년)이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다.다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다')" onmouseout="fn_mouseOut('50')" class='txt fontS-1'>국민콜110은 원칙적으로 개인정보 <span style="text-decoration-line: underline;font-weight:bold;">보존기간(5년)</span>이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다. <br class='pc__itemView'> 
								다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다.</p>
                               
						
                                <h5 tabindex="51" onmouseover="fn_mouseOver('51','4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)')" onmouseout="fn_mouseOut('51')">4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 내용 (개인정보보호법 제16조)</h5>
                                <p tabindex="52" onmouseover="fn_mouseOver('52','상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다')" onmouseout="fn_mouseOut('52')" class='txt fontS-1'>상담 신청시 수집하는 필요한 최소한의 정보 외의 개인정보 수집 동의를 거부할 권리가 있으나<br class='pc__itemView'> 
								최소한의 개인정보 수집동의 거부 시에는 상담 서비스가 제한됩니다.</p>

                            </div>


							<form action="#" name="##">
								<fieldset>
									<legend>문자상담신청</legend>

												<div tabindex="53" onmouseover="fn_mouseOver('53','(필수) 위 내용을 이해하였으며, 개인정보 수집 이용에 동의합니다.')" onmouseout="fn_mouseOut('53')" class='agreeCheckWrap'>
													<input type='checkbox' id="agree_yn"><label for="agree_yn">(필수) 위 내용을 이해하였으며, 개인정보 수집&middot;이용에 동의합니다.</label>
												</div>

												<div class='requestWrap row'>
																		
													<div tabindex="54" onmouseover="fn_mouseOver('54','상담신청내용')" onmouseout="fn_mouseOut('54')" class='col-xs-12 col-md-2'>
															<label class='tcolor_blue fontS-2 fontW-600' for="contentTextArea">상담신청내용</label>

													</div> <!-- col -->				
													<div class='col-xs-12 col-md-10'>
															<textarea class='form-control' placeholder='내용을 입력하세요.' id="contentTextArea"></textarea>
															<div tabindex="55" onmouseover="fn_mouseOver('55','0 / 최대 1000자')" onmouseout="fn_mouseOut('55')" class='text-right' > <span style="color:#aaa;" id="counter">0</span> / 최대 1000자</div>

													
													</div><!-- col -->												
																		
													<div tabindex="55" onmouseover="fn_mouseOver('56','(필수) 전화번호')" onmouseout="fn_mouseOut('56')" class='col-xs-12 col-md-2 '>
															<label class='tcolor_blue fontS-2 fontW-600'>(필수) 전화번호</label> 

													</div><!-- col -->				
													<div class='col-xs-12 col-md-10'>
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

													
													</div><!-- col -->								
												</div><!-- row -->


												<div class='btnWrap'>
													<button tabindex="57" onmouseover="fn_mouseOver('57','상담신청하기')" onmouseout="fn_mouseOut('57')" class='btn btn-big btn-blue' type='button' id="smsBtn">상담신청하기</button>
												 </div>

     								</fieldset>
							</form>
							<!-- //문자상담신청 -->


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