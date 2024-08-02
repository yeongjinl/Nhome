<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>국민콜110 소개 | 정부민원안내콜센터</title>
		
		<!-- css 라이브러리 -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/bootstrap.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/plugin/fontawesome/css/all.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/font.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/egovframework/gcall/main/css.css'/>">
		
		<!-- js 라이브러리 -->
		<script src="<c:url value='/js/egovframework/gcall/main/jquery-3.4.1.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/bootstrap.min.js'/>"></script>
		<script src="<c:url value='/js/egovframework/gcall/main/script.js'/>"></script>
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
                    
                        <div class='mainTitle'>국민콜110 소개</div>
                        
                        <div class='subContentWrap'>
                        
                            <div class='col-xs-12 text-center intro110_01'>
                                
                                <img src="<c:url value='/images/egovframework/gcall/main/intro/intro01-02.png'/>" class='img-responsive mt20 mb50' alt="국민콜 110 정부민원안내">
                                <br>
                                                                        국민권익위원회가 운영하는 <span class='font-blue'>국민콜110</span>은 중앙정부, 지방자치단체, 공공기관 등 모든 행정기관의 업무에 대한<br> 
                                DB(데이터베이스)를 구축하여 실시간으로 전화 민원을 상담안내하고 있습니다.<br>
                                <br>
                                국민콜110은 여러 단계의 자동응답(ARS)을 거치지 않고 전문교육을 이수한 110상담사가 직접 상담하고있습니다.<br>                                
                            </div>
                            
                            <hr style="border:solid #dddddd; border-width:1px;">
                            
                            <div class='col-xs-12 text-center intro110_03 mt20'>
                                <b><span>국민과 함께 하는 정부대표전화</span><br>
                                110 정부민원안내콜센터 BI 소개</b>
                                <br><br>
                                여러 개의 원이 겹처지는 모양으로 하나의 원을 만들어 통합안내센터의 의미를 표현하였습니다.
                                <br>
                                
                                <div class='CIbg'>
                                    <img src="<c:url value='/images/egovframework/gcall/main/intro/intro01-02.png'/>" class='img-responsive' alt="국민콜 110 정부민원안내">
                                </div>
                                
                                <div class='mb50'>
                                    신뢰를 바탕으로 한 두 가지컬러의 조합은 국민과 정부의 하나됨을 의미합니다.<br>
                                    모던한 느낌의 로고로 미래지향적인 이미지를 부여하여 앞서가는 안내센터의 이미지를 부각하였습니다.<br>
                                    또한 섬세한 이미지에서 전문적인 이미지를 표현하였고, 투명한 컬러의 겹침 효과로 신뢰감을 전달하고 있습니다.
                                </div>
                                <hr class='mb50'>
                                
                                <div class='row'>
                                    <div class='col-xs-12 text-left'>※ 심벌마크와 로고타입의 조합인 시그니처는 사용 시 정해진 조합 간격을 유지해야 하며, 비례나 크기. 형태를 임의로 변경할 수 없습니다.</div>
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