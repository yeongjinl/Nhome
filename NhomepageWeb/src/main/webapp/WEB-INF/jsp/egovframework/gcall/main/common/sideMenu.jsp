<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="quick_wrap">
	<ul>
		<li>
			<div class="quick_click quick__sound">
				<button type="button" class="btn_qck" id="vw_vt_wb_change_sound_on_off_btn" name="vw_vt_wb_change_sound_on_off_btn" title="음성켜기 단축키:F2" value="음성켜기(F2)" ><span class="blind">음소거</span></button>
			</div>
		</li>
		<li>
			<div class="quick_click quick__speed">
				<button type="button" class="btn_qck">
					<span class="blind">속도</span>
					<span class="num" id="vw_vt_wb_id_Speed_btn">80</span>
				</button>
				<div class="sound_control">
					<div class="ctrl_box">
						<button type="button" id="vw_vt_wb_SpeedDown" class="control" value=" - " title="음성속도 감소" onclick="vw_vt_wb_SpeedDown('vw_vt_wb_id_Speed');$('#vw_vt_wb_id_Speed_btn').text($('#vw_vt_wb_id_Speed').text());" >
							<i class="ti-minus"></i>
						</button>
						<div id="vw_vt_wb_id_Speed">80</div>
						<button type="button" id="vw_vt_wb_SpeedUp" class="control" value=" + " title="음성속도 증가" onclick="vw_vt_wb_SpeedUp('vw_vt_wb_id_Speed');$('#vw_vt_wb_id_Speed_btn').text($('#vw_vt_wb_id_Speed').text());" >
							<i class="ti-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</li>
		<li>
			<div class="quick_click quick__faq">
				<a href="<c:url value='/data/faq.do'/>" title="자주묻는질문 바로가기">FAQ</a>
			</div>
		</li>
	</ul>
</div><!-- quick_wrap -->