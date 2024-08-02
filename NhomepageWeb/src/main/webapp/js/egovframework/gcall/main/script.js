/*
$(function(){
	//-- PC 서브메뉴 마우스 오버 구현
	$(".topMenuArea .topMenu a").mouseenter(function(){
		$(".topMenuArea .submenu").css("display","none");
		aObj = $(".topMenuArea .topMenu a");
		myIDX = aObj.index($(this))+1;
		objPos = $(this).offset();
		$("#submenu"+myIDX).css("display","block");
		if(myIDX<4){
			$("#submenu"+myIDX+ " .wrap").css("margin-left",parseInt(objPos.left));
		}else{
			$("#submenu"+myIDX+ " .wrap").css("margin-left",parseInt(objPos.left) - 220);
		}
		
	});

	$(".topMenuArea").mouseleave(function(){
		$(".topMenuArea .submenu").css("display","none");
	});
});

$(function(){
	//-- PC 서브메뉴 마우스 오버 구현
	$(".topMenuArea .topMenu a").focusin(function(){
		$(this).mouseenter();
		
	});

	$(".topMenuArea").focusout(function(){
		$(".topMenuArea .submenu").css("display","none");
	});
});
*/

//-- PC 서브메뉴 마우스 포커싱 구현
$(function(){
	
	$(".topMenuArea .topMenu>li>a").focusin(function(){
		$(".topMenuArea .submenu").css("display","none");
		$(this).parent().find(".submenu").css("display","block");
	});
	
	$(".submenu > div > a:last-child").focusout(function(){
		$(".topMenuArea .submenu").css("display","none");
	});		
	
	$(".topMenuArea .topMenu li").mouseenter(function(){
		$(this).find(".submenu").css("display","block");
	});
	
	$(".topMenuArea .topMenu li").mouseleave(function(){
		$(this).find(".submenu").css("display","none");
	});
	
	$(".topMenuArea .topMenu").mouseleave(function(){
		$(".topMenuArea .submenu").css("display","none");
	});
	
	$('html').click(function(e) { 
		$(".topMenuArea .submenu").css("display","none");
	});		
});

/**
 * 폼 생성
 */
function createFrm(name, method, action, target) {
	var crefrm = document.createElement("form");
	crefrm.name = name;
	crefrm.method = method;
	crefrm.action = action;
	crefrm.target = target;
      
    return crefrm;
}

/**
 * input 생성
 */
function createInput(frm, name, value) {
	var creInput = document.createElement("input");
	creInput.type = "hidden";
	creInput.name = name;
	creInput.value =  value;
    frm.insertBefore(creInput, null);
    
    return frm;
}

/**
 * 쿠키정보 설정
 */
function setCookieInfo(cookieName, cookieValue, time) {
	var now = new Date();
	var expires = new Date(now.getTime() + 1000 * 60 * 60 * time);
	
	document.cookie = escape(cookieName) + '=' + escape(cookieValue) + (expires ? '; expires=' + expires.toGMTString() : '');
}

/**
 * 쿠키정보 받아오기
 */
function getCookieInfo(cookieName){
	var cookieValue = "";
	var posName = document.cookie.indexOf(escape(cookieName) + '=');
	
	if (posName != -1) {
		var posValue = posName + (escape(cookieName) + '=').length;
		var endPos = document.cookie.indexOf(';', posValue);
		if (endPos != -1) cookieValue = unescape(document.cookie.substring(posValue, endPos));
		else cookieValue = unescape(document.cookie.substring(posValue));
	}
	
	return (cookieValue);
}

//-- 모바일 메뉴 구현
function fnMobileMenuOnOff(){
	obj1 = $(".topMenu_m");
	nm = parseInt(obj1.css("margin-left").replace("px",""));
	
	if(nm<0){
		obj1.stop().animate({"margin-left":0},0);
	}else{
		obj1.stop().animate({"margin-left":"-100%"},0);
	}
}


$(function(){
	
	//-- 모바일 서브 메뉴 자동 구성 - PC용 서브 메뉴를 자동으로 셋팅합니다. 수동으로 처리해도 됩니다.
	smobj = $(".submenu");
	for(k=0;k<smobj.length;k++){
		str = "";
		str+="<div class='menu2'>";
		str+= smobj.eq(k).html();
		str+="</div>";
		$(".topMenu_m .menu1").eq(k).append(str);		
	}
	
	//-- 모바일 메뉴 1차 메뉴 클릭 효과
	$(".topMenu_m>ul>li>.menu1").click(function(){
		myMenu2 = $(this).find(".menu2");
		myMenu2.toggle();
	});
	
});

$(".topMenu_m")