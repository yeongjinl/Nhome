<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<audio controls="controls" id="ad_con01" hidden="hidden">
        <source="" type="audio/wav">
    </audio>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">


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
			var navUrl = "popup";
		</script>
		<style>
			.goBtn {
				cursor: pointer
			}
		</style>
		
    </head>
    
	<body>
        <div id="skip_to_container"><a href="#contentArea">본문 바로가기</a></div>
		<div class='subpage'>

            
		<main>
<%-- 				<c:import url="../../common/sideMenu.jsp"/> --%>
				<!-- quick_wrap -->

					<div class="quick_wrap" hidden="hidden">
						<ul>
							<li>
								<div class="quick_click quick__sound">
									<button hidden="button" class="btn_qck" id="vw_vt_wb_change_sound_on_off_btn" name="vw_vt_wb_change_sound_on_off_btn" title="음성켜기 단축키:F2" value="음성켜기(F2)" ><span class="blind">음소거</span></button>
								</div>
							</li>
							<li>
								<div class="quick_click quick__speed">
									<button hidden="button" class="btn_qck">
										<span class="blind">속도</span>
										<span class="num" id="vw_vt_wb_id_Speed_btn">80</span>
									</button>
									<div class="sound_control">
										<div class="ctrl_box">
											<button type="button" hidden="hidden" id="vw_vt_wb_SpeedDown" class="control" value=" - " title="음성속도 감소" onclick="vw_vt_wb_SpeedDown('vw_vt_wb_id_Speed');$('#vw_vt_wb_id_Speed_btn').text($('#vw_vt_wb_id_Speed').text());" >
												<i class="ti-minus"></i>
											</button>
											<div id="vw_vt_wb_id_Speed">80</div>
											<button type="button" hidden="hidden" id="vw_vt_wb_SpeedUp" class="control" value=" + " title="음성속도 증가" onclick="vw_vt_wb_SpeedUp('vw_vt_wb_id_Speed');$('#vw_vt_wb_id_Speed_btn').text($('#vw_vt_wb_id_Speed').text());" >
												<i class="ti-plus"></i>
											</button>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div><!-- quick_wrap -->

                    <div class='limitWrap'>
									
									<div class='col-xs-12 col-md-7'>

<!-- 											<h4 tabindex="32" onmouseover="fn_mouseOver('32','국민콜110 (정부민원안내) 홈페이지를 방문해 주셔서 감사합니다')" onmouseout="fn_mouseOut('32')" class='introTitle'>국민콜110 (정부민원안내) 홈페이지를<br class='pc__itemView'> 방문해 주셔서 감사합니다. </h4> -->
											<div tabindex="40" onmouseover="fn_mouseOver('40','채팅상담과 화상수어상담 시 소리내어 읽기 서비스는 다음과 같이 사용하시기 바랍니다')" onmouseout="fn_mouseOut('40')" class='txt text-justify'>
												<br>채팅상담과 화상수어상담 시 소리내어 읽기 서비스는<br>
												다음과 같이 사용하시기 바랍니다.<br>
											</div>
											<div tabindex="41" onmouseover="fn_mouseOver('41','엣지 브라우저 소리내어 읽기가 필요한 페이지 선택 마우스 오른쪽 버튼으로 메뉴를 열고 소리내어 읽기를 클릭, 단축키 컨트롤+쉬프트+유를 누르면 소리내어 읽기 기능이 활성화 됩니다')" onmouseout="fn_mouseOut('41')" class='txt text-justify'>
												<br>엣지 브라우저<br>
												소리내어 읽기가 필요한 페이지 선택>마우스 오른쪽<br>
												버튼으로 메뉴를 열고 소리내어 읽기를 클릭,<br>
												단축키 Ctrl+Shift+U를 누르면 소리내어 읽기 기능이<br>
												활성화 됩니다.
											</div>
											<div tabindex="42" onmouseover="fn_mouseOver('42','크롬 브라우저 크롬웹스토어 이동, 텍스트 읽어주기를 검색, 선택리더를 확장 프로그램에 추가하여 사용하시면 됩니다')" onmouseout="fn_mouseOut('42')" class='txt text-justify'>
												<br>크롬 브라우저<br>
												크롬웹스토어 이동, 텍스트 읽어주기를 검색, "선택리더"<br>
												를 확장 프로그램에 추가하여 사용하시면 됩니다.<br>
											</div>
											<div class='btnWrap'>
													<button tabindex="43" onmouseover="fn_mouseOver('43','닫기')" onmouseout="fn_mouseOut('43')" class='btn btn-big btn-blue' type='button' onclick="self.close()">닫기</button>
											</div>
									</div>
                        

                    </div><!-- limitWrap -->

            </main>

		
		</div>
	</body>
</html>