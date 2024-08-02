<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">
		
		<title>${popupDetail.ALARM_TITLE}</title>
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
		
		<script>
			$(function() {
			});
			
			function popupClose(){
				if($("input:checkbox[name=notopen]").is(":checked") == true) {
					setCookieInfo("ntc_popup_" + "${popupDetail.ALARM_ID}", "Y", 24);
				}
				self.close();
			}
			
			function popResize() {
		        var thisX = document.getElementById("offsetTable").offsetWidth;
		        var thisY = document.getElementById("offsetTable").offsetHeight;
		        var maxThisX = screen.width - 50;
		        var maxThisY = screen.height - 80;

		        if (window.navigator.userAgent.indexOf("SV1") != -1){   //IE6.0
		        var marginY = 58+30; //마지막 수는 상황에따라 알맞게 넣으세요. (템플릿의 헤더높이 + 풋터 높이 + 알파)
		        } else if (window.navigator.userAgent.indexOf("MSIE 7.0") != -1){ //IE7.0
		        var marginY = 82+30;
		        }else {
		        var marginY = 50+30; //마지막 수는 상황에따라 알맞게 넣으세요. (템플릿의 헤더높이 + 풋터 높이 + 알파)
		        }

		        //alert(marginY)
		        if (thisX > maxThisX) {
		                window.document.body.scroll = "yes";
		                thisX = maxThisX;
		        }
		        if (thisY > maxThisY - marginY) {
		                window.document.body.scroll = "yes";
		                thisX += 19;
		                thisY = maxThisY - marginY;
		        }

		        var windowX = (screen.width - (thisX+10))/2;
		        var windowY = (screen.height - (thisY+marginY))/2 - 20;
		       // window.moveTo(windowX,windowY);

		        window.resizeTo(thisX+10,thisY+marginY);
			}
		</script>
	</head>
	
	<body onload="popResize();">
		<table id="offsetTable" width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr>
				<td>
					<table cellspacing='0' cellpadding='0'>
						<tr>
							<td id="popupContent">
								<pre>${popupDetail.ALARM_CONTENT}</pre>
							</td>
						</tr>
						<tr>
							<td align='right' class='padR10'>
								<b>오늘 하루동안 창열지 않기</b>
								<input class='chk' type='checkbox' name='notopen'/>
								<input type="button" value="닫기" onclick="popupClose()" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>