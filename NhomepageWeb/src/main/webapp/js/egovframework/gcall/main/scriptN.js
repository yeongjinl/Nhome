$(document).ready(function(){
 

	/* 헤더 */ 
	$('.nav ul > li').mouseover(function(){   
		$(this).addClass('open');   
		var blind_height =  $('.open > ul').height();  
		$('.sec-header').css("height",blind_height + 220 +"px");	 /*진선주 수정*/  
		$('.sec-header').addClass('active'); 
	});
	$('.nav ul > li').mouseleave(function(){ 
		$(this).removeClass('open'); 
		$('.sec-header').css("height","130px"); /*진선주 수정*/  
		$('.sec-header').removeClass('active'); 
	});
	  
	/* 스크롤 헤더 */ 
	$('.sec-header').mouseover(function(){
		$(this).addClass('on');
	});
	$('.sec-header').mouseleave(function(){
		if(!$(document).scrollTop() > 0){
			$(this).removeClass('on');
		} 
	});

	$('.con-tab-menu li a').click(function(){
		  $('.con-tab').removeClass('active');
		  $('.con-tab[data-id="'+$(this).attr('data-id')+'"]').addClass('active');
		  $('.con-tab-menu li a').removeClass('active');
		  $(this).parent().find('a').addClass('active');
	});
  

	$('#sitemap > ul > li h3').click(function(){
		$('#sitemap > ul > li > ul > li').removeClass('m-open');
		$(this).parent().addClass('m-open');
	});

		
	if( $(window).width() < 1024){
		$(".sub-depth-1 li a").removeAttr("href"); 
		$(".sub-depth-1 li a").click(function(){
			$(".sub-depth-2").slideToggle();
			$(this).toggleClass('bg-act');
		}); 
	}

	/* 상단으로 */
	$("#top_btn").on("click", function() {
		$("html, body").animate({scrollTop:0}, '500');
		return false;
	});

  	/*footer 기관콜센터*/
	$('.family-site p').click(function(){
		$('.family-site ul').slideToggle();
	});

	var $gnb = $('.gnb_area ul li');
	var $quick = $('.quick_wrap');


//tts	음량조절
$quick.each(function() {
	$('.quick_click a, .quick_click button').click(function() {
		$(this).parent('div').toggleClass('on');
	});
});

$('.quick__speed').on('click', function() {
	$('.sound_control').mouseleave(function() {
		$('.quick__speed').removeClass('on');
	});
});

// 음성켜기 끄기 버튼 클레스 삽입 스크립트
$('#vw_vt_wb_change_sound_on_off_btn').on('click',function(){
	if($(this).hasClass('on')){
		$(this).removeClass('on');
		alert('음성합성 중지');
		document.getElementById('vw_vt_wb_change_sound_on_off_btn').value = "음성켜기(F2)";
		document.getElementById('vw_vt_wb_change_sound_on_off_btn').title = "음성켜기 단축키:F2";

	}else{
		$(this).addClass('on');
		alert('음성합성 시작');
		document.getElementById('vw_vt_wb_change_sound_on_off_btn').value = "음성끄기(F2)";
		document.getElementById('vw_vt_wb_change_sound_on_off_btn').title = "음성끄기 단축키:F2";

	}
});




});

//음량조절 
function vw_vt_wb_SpeedDown(){

	   var volum = $('#vw_vt_wb_id_Speed').text();
	   var volum_num = parseInt(volum);

		if(volum_num <= 0)	  {
			  alert('소리를 더이상 줄일 수 없습니다.');
		}else{
			   var volum_down = volum_num - 10;
				$('#vw_vt_wb_id_Speed').text(volum_down);
		}


}

function vw_vt_wb_SpeedUp(){
	   var volum = $('#vw_vt_wb_id_Speed').text();
	   var volum_num = parseInt(volum);

		if(volum_num >= 100)	{
			  alert('소리를 더이상 키울 수 없습니다.');
		}else{
			   var volum_up = volum_num + 10;
				$('#vw_vt_wb_id_Speed').text(volum_up);
		}



}


/* 사이트맵 */
function sitemapToggle(){
	$('.btn-category').toggleClass('map'); 
	$('#sitemap').toggleClass('open');
	$('.sec-header').toggleClass('stm-hd');
	$('html,body').toggleClass('scr');
} 

$(window).scroll(function(){
    var height = $(document).scrollTop();
    if(height > 0){
      $('.sec-header').addClass('on');
      $('.quick-menu').addClass('on'); 
    }else if(height == 0){
      $('.sec-header').removeClass('on');
      $('.quick-menu').removeClass('on');

 
    } 
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

var soundPlay = document.getElementById("ad_con01");

//정적변수
var url = "https://tts.110.go.kr/soundSearch.do";
var wavDir = "https://tts.110.go.kr/webFile";

//정적변수

var isPlaying = true;
var playPromise = $("#ad_con01")[0].play();

function fn_mouseOver(_index, pageTxt){
	
	var soundBtn = $("#vw_vt_wb_change_sound_on_off_btn").attr('class');
	console.log("soundBtn:" + soundBtn);
	
	
	
	if (navUrl == "popup"){
		soundBtn = "btn_qck on";
	}
	
//	alert(soundBtn);
	
	if (soundBtn == "btn_qck on"){
		$("#ad_con01")[0].pause();
        $("#ad_con01")[0].currentTime = 0;	
		var params = {
	            "pageText":pageTxt,
	            "pageIndex" : _index,
	            "pageUrl" : navUrl
	        };
	        fn_Ajax(url, "POST", params, true,
	          	    function(result) {
				      if (result.STATUS == "OK"){
							var obj = result.DATA;
							var soundFile = obj.pageSoundfile;
							if (soundFile,length < 1 ){
								isPlaying = true;
								console.log("sound play");
								
		                        $("#ad_con01").attr("src", wavDir+"/"+soundFile);
		                        $("#ad_con01")[0].volume =  parseInt( $('#vw_vt_wb_id_Speed').text()) /100;
		                        setTimeout(function () {
		                        	$("#ad_con01")[0].play();
		                        	if (playPromise !== undefined) {
		                        			playPromise.then((_) => {}).catch((error) => {});
									}
								}, 100);
		                        
		                    }else {
//		                        alert("wav file 이 없습니다."); 
		                    	$("#ad_con01")[0].pause();
		                    }
					   }else {
	                     alert("시스템 장애 입니다.");
	                   }
	     			},
	     			function(request){
	     				alert("접속 상태 확인 부탁 드립니다.")
	     			}
	           );
	}
          
}  
function fn_mouseOut(_index){
    console.log("teb index out:" + _index);
    if ( isPlaying){
    	console.log("sound pause");
    	isPlaying = false;
    	$("#ad_con01")[0].pause();
        $("#ad_con01")[0].currentTime = 0;	
    }
    
}
function fn_Ajax(url, _type, param, async, done_callback, fail_callback){
    param = (_type == "GET") ? param :JSON.stringify(param);
	var jxFax =  $.ajax({
				type :_type,
		        url : url,
		        async : async,
		        beforeSend:function(jxFax, settings){
		        	//jxFax.setRequestHeader("Access-Control-Allow-Origin", "*"); 
		    	    //jxFax.setRequestHeader('AJAX', true);
	        	   //$('.loadingDiv').show();
	            }, 
		        complete : function(jqXHR, textStatus) {
		        },
		        contentType : 'application/json; charset=UTF-8',
		        data : param
		    }).done(done_callback).fail(fail_callback);
	return jxFax;
}


