//	/**
//	 * 각종 타입의 입력값을 아이디를 통해서 가져옴
//	 * param : id 입력폼의 아이디(String):id
//	 */
//	function cm_getValue(id){
//		
//		var result='';
//		var obj='';
//		
//		obj=document.getElementById(id);
//		//if(obj==null) obj=document.all.getElementById(id);
//		var type=obj.type;
//		
//		switch(type){
//			case 'text'			:
//			case 'hidden'		:
//			case 'textarea'		:
//			case 'file'			:
//			case 'password'		:	result=obj.value;
//			    					break;
//			case 'checkbox'		:
//								    if(obj.checked) return 1;
//								    else return 0;
//								    break;
//			case 'select-one'	:
//								    var index=obj.selectedIndex;
//								    result = obj.options[index].value;
//								    break;
//			case 'radio'		: 
//			    					var len=document.getElementsByName(id).length;
//								    for(var i=0;i<len;i++){
//										if(document.getElementsByName(id)[i].checked==true){
//										 result=document.getElementsByName(id)[i].value;
//										 break;
//										}
//								    }
//			    					break;
//		}
//		return result;
//	}
//	
//	/**
//	 * 각종 타입의 폼에 입력값을 세팅함
//	 * param : 폼아이디:id(String), 세팅값(String):value,활성화여부(boolean):enable
//	 */
//	function cm_setValue(id,value,enable){
//		  
//		var result='';
//		var obj='';
//		
//		if(typeof id=='object') obj=id;
//		else obj=document.getElementById(id);
//		
//		if(obj==null) obj=document.all.getElementById(id);
//		var type=obj.type;
//			 
//		var g_enable=true;
//		if(enable!=null) g_enable=enable;
//			  
//		if(g_enable) obj.disabled=false;
//		else obj.disabled=true;
//			  
//		switch(type){
//			  
//			case 'text':
//			case 'hidden':
//			case 'textarea':
//			case 'file':
//			case 'password':obj.value=value;
//			break;
//			case 'checkbox':
//			   if(value==1 || value=='Y' || value==true){
//			     obj.checked=true;
//			   }
//			   else{
//			     obj.checked=false;
//			   }
//			   break;
//			case 'select-one':
//			   for(var i=0;i<obj.length;i++){
//			        //alert(obj.options[i].value);
//			        if(obj.options[i].value==value){
//			         obj.options[i].selected=true;
//			         break;
//				    }
//			  	}
//			    break;
//			case 'radio': 
//			    var len=document.getElementsByName(id).length;
//			       
//			     for(var i=0;i<len;i++){
//			        if(document.getElementsByName(id)[i].value==value){
//			         result=document.getElementsByName(id)[i].checked=true;
//			         break;
//			       	}
//			     }
//			     break;
//			   
//		}
//	}
//	
//	/**
//	 * 해당 ID의 객체를 가져온다.
//	 * param : id 입력폼의 아이디(String):id
//	 */
//	function cm_getObj(id){
//		return document.getElementById(id);
//	}
//	
//	/**
//	 * 폼정보를 URL형식으로 바꾸어준다
//	 * param : 폼이름:formName(String), 인코딩여부(boolean):encode
//	 */
//	function cm_makeParamUrl(formName,encode){
//		if(encode==null) encode=false;
//		if (formName=='') {
//	        return '';
//	    }
//	    var form= eval('document.'+formName);
//	    var name = new Array(form.elements.length);
//	    var value = new Array(form.elements.length);
//	    var j = 0;
//	    var plain_text="";
//	    var params="";
//	    //사용가능한 컨트롤을 배열로 생성한다.
//	    len = form.elements.length;
//	    for (i = 0; i < len; i++) {
//	      switch (form.elements[i].type) {
//	        case "button"				:
//	        case "reset"				:
//	        case "submit"				:
//	          								break;
//	        case "radio"				:	if (form.elements[i].checked == true) {
//							                    name[j] = form.elements[i].name;
//							                    value[j]=form.elements[i].value
//							                    j++;
//							                }
//							                break;
//	        case "checkbox"				:
//							                if (form.elements[i].checked == true) {
//							                    name[j] = form.elements[i].name;
//							                    if(form.elements[i].value=='on')
//							                    	value[j] = 1;
//							                    else
//							                    	value[j] = 0;
//							                    j++;
//							                }
//							                break;
//	        case "select-one"			:
//	                						name[j] = form.elements[i].name;
//	                    					var ind = form.elements[i].selectedIndex;
//						                    if(ind >= 0) {
//						      					value[j] = form.elements[i].options[ind].value;
//						                    } else {
//						                        value[j] = "";
//						                    }
//						                    j++;
//						                    break;
//	        case "select-multiple"		:
//	                						name[j] = form.elements[i].name;
//						                    var llen = form.elements[i].options.length;
//						                    var increased = 0;
//						                    for( k = 0; k < llen; k++) {
//						                        if (form.elements[i].options[k].selected) {
//						                            name[j] = form.elements[i].name;
//						       						value[j] = form.elements[i].options[k].value;
//						                            j++;
//						                            increased++;
//						                        }
//						                    }
//						                    if(increased > 0) {
//						                        j--;
//						                    } else {
//						                        value[j] = "";
//						                    }
//						                    j++;
//						                    break;
//	         case ""					: 
//	                    					break;
//	        default 					:
//						                    name[j] = form.elements[i].name;
//						                    value[j] = form.elements[i].value;
//						                    j++;
//	        }
//	    }
//	    var add='&';
//	    for(z=0;z<name.length;z++){
//	    if(z==(name.length-1)) add='';
//		    if(name[z]!=null){
//		    	if(encode){
//		    		params+=name[z]+'='+escape(encodeURIComponent(value[z]))+add;
//		    	}
//		    	else{
//		    		params+=name[z]+'='+value[z]+add;
//		    	}
//		    }
//	    }
//	    return params;
//	}
//	
//	/**
//	 * 폼정보를 URL형식으로 바꾸어준다
//	 * param : 폼이름:formName(String), 인코딩여부(boolean):encode
//	 */
//	function cm_makeUrl(formName,encode){
//		if(encode==null) encode=false;
//		if (formName=='') {
//	        return '';
//	    }
//	    var form= eval('document.'+formName);
//	    var name = new Array(form.elements.length);
//	    var value = new Array(form.elements.length);
//	    var j = 0;
//	    var plain_text="";
//	    var params="";
//	    //사용가능한 컨트롤을 배열로 생성한다.
//	    len = form.elements.length;
//	    for (i = 0; i < len; i++) {
//	      switch (form.elements[i].type) {
//	        case "button"				:
//	        case "reset"				:
//	        case "submit"				:
//	          								break;
//	        case "radio"				:
//	        case "checkbox"				:
//							                if (form.elements[i].checked == true) {
//							                    name[j] = form.elements[i].name;
//							                    value[j] = form.elements[i].value;
//							                    j++;
//							                }
//							                break;
//	        case "select-one"			:
//	                						name[j] = form.elements[i].name;
//	                    					var ind = form.elements[i].selectedIndex;
//						                    if(ind >= 0) {
//						      					value[j] = form.elements[i].options[ind].value;
//						                    } else {
//						                        value[j] = "";
//						                    }
//						                    j++;
//						                    break;
//	        case "select-multiple"		:
//	                						name[j] = form.elements[i].name;
//						                    var llen = form.elements[i].options.length;
//						                    var increased = 0;
//						                    for( k = 0; k < llen; k++) {
//						                        if (form.elements[i].options[k].selected) {
//						                            name[j] = form.elements[i].name;
//						       						value[j] = form.elements[i].options[k].value;
//						                            j++;
//						                            increased++;
//						                        }
//						                    }
//						                    if(increased > 0) {
//						                        j--;
//						                    } else {
//						                        value[j] = "";
//						                    }
//						                    j++;
//						                    break;
//	         case ""					: 
//	                    					break;
//	        default 					:
//						                    name[j] = form.elements[i].name;
//						                    value[j] = form.elements[i].value;
//						                    j++;
//	        }
//	    }
//	    
//	    var add='&';
//	    for(z=0;z<name.length;z++){
//	    if(z==(name.length-1)) add='';
//		    if(name[z]!=null || name[z]!=''){
//		    	if(value[z]!=''){
//			    	if(encode){
//			    		params+=name[z]+'='+escape(encodeURIComponent(value[z]))+add;
//			    	}
//			    	else{
//			    		params+=name[z]+'='+value[z]+add;
//			    	}
//		    	}
//		    }
//	    }
//	    
//	    
//	    if(params.lastIndexOf('&')==(params.length-1)){
//	    	params=params.substring(0,params.length-1);
//	    }
//	    return params;
//	}
//	
//	/**
//	 * 쿠키정보 설정
//	 * param : 
//	 */
//	function cm_setCookie(cookieName,cookieValue,time,path, domain, secure){
//		var now = new Date();
//		var expires = new Date(now.getTime() + 1000 * 60 * 60 * time);
//		
//		document.cookie =
//		escape(cookieName) + '=' + escape(cookieValue)
//		+ (expires ? '; expires=' + expires.toGMTString() : '')
//		+ (path ? '; path=' + path : '')
//		+ (domain ? '; domain=' + domain : '')
//		+ (secure ? '; secure' : '');
//	}
//	
//	/**
//	 * 쿠키정보 가졍오기
//	 * param : 
//	 */
//	function cm_getCookie(cookieName){
//	
//		var cookieValue = '';
//		var posName = document.cookie.indexOf(escape(cookieName) + '=');
//		if (posName != -1) {
//			var posValue = posName + (escape(cookieName) + '=').length;
//			var endPos = document.cookie.indexOf(';', posValue);
//			if (endPos != -1) cookieValue = unescape(document.cookie.substring(posValue, endPos));
//			else cookieValue = unescape(document.cookie.substring(posValue));
//		}
//		return (cookieValue);
//	}
//	
//	/**
//	 * 폼정보 서버로 REQUEST
//	 * param : 폼이름:formName(String),서버context:context(String),전송URL:posturl(String),타겟:target(String),방식:method(String)
//	 */
//	function cm_Tran(formname,posturl,target,method){
//			//폼이름을 받아서 객체로 만든다.
//			var obj=eval('document.'+formname);
//			
//			//폼에 여러가지 설정을 해준다.
//			obj.action=context+'/'+posturl;
//			obj.target = target;
//			if(method!=null) obj.method=method;
//			
//			//전송시작
//			obj.submit();
//	}
//	
//	/**
//	 * 폼정보 서버로 REQUEST
//	 * param : 폼이름:formName(String),서버context:context(String),전송URL:posturl(String),타겟:target(String),방식:method(String)
//	 */
//	function cm_Tran2(formname,posturl){
//			//폼이름을 받아서 객체로 만든다.
//			var obj=eval('document.'+formname);
//			//폼에 여러가지 설정을 해준다.
//			obj.action=context+posturl;
//			//전송시작
//			obj.submit();
//	}
//	
//	/**
//	 * 검색시에 처리중 메시지 처리
//	 * param : flag[true : 보여줌 , false : 삭제함]
//	 */
//	function cm_loading(flag) {
//	   try {
//	     set_status_bar(flag);
//	     if (flag) {
//	       document.all.status_base_layer.style.visibility = 'visible';
//	       document.all.statusLay3.style.visibility = 'visible';
//	       document.body.style.cursor = "wait";
//	       return;
//	     } else {
//	       document.all.status_base_layer.style.visibility = 'hidden';
//	       document.all.statusLay3.style.visibility = 'hidden';
//	       document.body.style.cursor = "";
//	       
//	         if (parent.document.all.statusLay3) {
//	            parent.document.all.status_base_layer.style.visibility = 'hidden';
//	            parent.document.all.statusLay3.style.visibility = 'hidden';
//	            parent.document.body.style.cursor = "";
//	         }
//	     }
//	   } catch(e) {
//		   console.log("error occurred");
//	   }
//	}
//	function set_status_bar(flag) {
//       var clientWidth  = document.body.clientWidth;
//       var clientHeight = document.body.clientHeight;
//       if (flag) {
//          document.all.status_base_layer.style.width  = clientWidth;
//          document.all.status_base_layer.style.height = clientHeight;
//          document.all.statusLay3.style.width  = clientWidth;
//          document.all.statusLay3.style.height = clientHeight;
//       } else {
//          document.all.statusLay3.style.width  = 0;
//          document.all.statusLay3.style.height = 0;
//       }
//    }
//    
//    /**
//	 * 검색시에 처리중 메시지 처리
//	 * param : flag[true : 보여줌 , false : 삭제함]
//	 */
//	function cm_loading2(flag) {
//	   try {
//	     set_status_bar2(flag);
//	     if (flag) {
//	       document.all.status_base_layer.style.visibility = 'visible';
//	       document.all.status_wait_layer.style.visibility = 'visible';
//	       document.body.style.cursor = "wait";
//	       return;
//	     } else {
//	       document.all.status_base_layer.style.visibility = 'hidden';
//	       document.all.status_wait_layer.style.visibility = 'hidden';
//	       document.body.style.cursor = "";
//	       
//	         if (parent.document.all.statusLay3) {
//	            parent.document.all.status_base_layer.style.visibility = 'hidden';
//	            parent.document.all.status_wait_layer.style.visibility = 'hidden';
//	            parent.document.body.style.cursor = "";
//	         }
//	     }
//	   } catch(e) {
//		   console.log("error occurred");
//	   }
//	}
//	function set_status_bar2(flag) {
//       var clientWidth  = document.body.clientWidth;
//       var clientHeight = document.body.clientHeight;
//       if (flag) {
//          document.all.status_base_layer.style.width  = clientWidth;
//          document.all.status_base_layer.style.height = clientHeight;
//          document.all.status_wait_layer.style.width  = clientWidth;
//          document.all.status_wait_layer.style.height = clientHeight;
//       } else {
//          document.all.status_wait_layer.style.width  = 0;
//          document.all.status_wait_layer.style.height = 0;
//       }
//    }
//    
//    /**
//	 * 검색시에 처리중 메시지 처리
//	 * param : flag[true : 보여줌 , false : 삭제함]
//	 */
//	function cm_moving(flag) {
//	   try {
//	     set_move_bar(flag);
//	     if (flag) {
//	       document.all.status_base_layer.style.visibility = 'visible';
//	       document.all.status_move_layer.style.visibility = 'visible';
//	       document.body.style.cursor = "wait";
//	       return;
//	     } else {
//	       document.all.status_base_layer.style.visibility = 'hidden';
//	       document.all.status_move_layer.style.visibility = 'hidden';
//	       document.body.style.cursor = "";
//	       
//	         if (parent.document.all.statusLay3) {
//	            parent.document.all.status_base_layer.style.visibility = 'hidden';
//	            parent.document.all.status_move_layer.style.visibility = 'hidden';
//	            parent.document.body.style.cursor = "";
//	         }
//	     }
//	   } catch(e) {
//		   console.log("error occurred");
//	   }
//	}
//	function set_move_bar(flag) {
//       var clientWidth  = document.body.clientWidth;
//       var clientHeight = document.body.clientHeight;
//       if (flag) {
//          document.all.status_base_layer.style.width  = clientWidth;
//          document.all.status_base_layer.style.height = clientHeight;
//          document.all.status_move_layer.style.width  = clientWidth;
//          document.all.status_move_layer.style.height = clientHeight;
//       } else {
//          document.all.status_move_layer.style.width  = 0;
//          document.all.status_move_layer.style.height = 0;
//       }
//    }
//    
//    
//    /**
//	 * 이미지 업로드바
//	 * param : flag[true : 보여줌 , false : 삭제함]
//	 */
//	function cm_uploading(flag) {
//	   try {
//	   	 startProgress();
//	     set_upload_bar(flag);
//	     if (flag) {
//	       document.all.status_base_layer.style.visibility = 'visible';
//	       document.all.status_upload_layer.style.visibility = 'visible';
//	       document.body.style.cursor = "wait";
//	       return;
//	     } else {
//	       document.all.status_base_layer.style.visibility = 'hidden';
//	       document.all.status_upload_layer.style.visibility = 'hidden';
//	       document.body.style.cursor = "";
//	       
//	         if (parent.document.all.statusLay3) {
//	            parent.document.all.status_base_layer.style.visibility = 'hidden';
//	            parent.document.all.status_upload_layer.style.visibility = 'hidden';
//	            parent.document.body.style.cursor = "";
//	         }
//	     }
//	   } catch(e) {
//		   console.log("error occurred");
//	   }
//	}
//    function set_upload_bar(flag) {
//       var clientWidth  = document.body.clientWidth;
//       var clientHeight = document.body.clientHeight;
//       if (flag) {
//          document.all.status_base_layer.style.width  = clientWidth;
//          document.all.status_base_layer.style.height = clientHeight;
//          document.all.status_upload_layer.style.width  = clientWidth;
//          document.all.status_upload_layer.style.height = clientHeight;
//       } else {
//          document.all.status_upload_layer.style.width  = 0;
//          document.all.status_upload_layer.style.height = 0;
//       }
//    }
//    
//    function cm_divPop(w,h,x,y,url,title){
//		//클라이언트의 화면 넓이 높이를 구한다.
//		//var obj=cm_getObj('table_contents');
//		var innerBody 	=document.body; 
//		var innerWidth 	=innerBody.scrollWidth + (innerBody.offsetWidth - innerBody.clientWidth); 
//		var innerHeight	=innerBody.scrollHeight + (innerBody.offsetHeight - innerBody.clientHeight); 
//		//alert(innerBody.offsetWidth+'::::'+innerBody.scrollWidth);
//		//alert(innerBody.clientWidth);
//		//alert(obj.offsetLeft);
//		//alert(obj.offsetHeight);
//		//alert(obj.style.left);
//		
//		//var docwidth  =obj.offsetWidth//screen.availWidth;//document.body.clientWidth;
//       	//var docheight =obj.offsetHeight//innerHeight; //screen.availHeight;//document.body.clientHeight;
//       	cm_getObj('popup_base_layer').style.width  		= innerWidth//docwidth;
//        cm_getObj('popup_base_layer').style.height 		= innerHeight//docheight;
//       // cm_getObj('popup_base_layer').style.top  		= obj.offsetTop;
//       // cm_getObj('popup_base_layer').style.left  		= obj.offsetLeft;
//        cm_getObj('popup_base_layer').style.visibility 	= 'visible';
//        cm_getObj('popup_layer').style.width  			= w;
//        cm_getObj('popup_layer').style.height 			= h;
//        cm_getObj('popup_layer').style.left  			= x;
//        cm_getObj('popup_layer').style.top 				= y;
//        cm_getObj('popup_layer').style.visibility 		= 'visible';
//        cm_getObj('popup_layer_flame').src				=url;
//        cm_getObj('popup_layer_flame').style.height		=h-40;
//        cm_getObj('pop_title').innerHTML				=title;
//    }
//    
//    function cm_divPopClose(){
//    	cm_getObj('popup_layer').style.visibility 		= 'hidden';
//    	cm_getObj('popup_base_layer').style.visibility 	= 'hidden';
//    	cm_getObj('popup_layer_flame').src				="";//context+"/blank.html";
//    	cm_getObj('pop_title').innerHTML				="";
//    	cm_getObj('popup_base_layer').style.width  		= 0;
//        cm_getObj('popup_base_layer').style.height 		= 0;
//    }
//    
//    document.write("<div id='status_base_layer' style='position:absolute;left:0px;top:0px;width:0px;height:0px; z-index:99; visibility:hidden; filter:alpha(opacity=0);} '>");
//    document.write("</div>");
//    
//    document.write("<div id='status_wait_layer' style='position:absolute;left:0px;top:0px;width:0px;height:0px; z-index:99; visibility:hidden;filter:alpha(opacity=100);'>");
//    document.write("<table width='100%' height='100%' summary='작업처리중'>");
//    document.write("<caption style='display:none'>작업처리중</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<tr>");
//    document.write("<td align='center'><img id='status_bar' src='"+context+"/images/egovframework/gcall/include/banner/grid_search.gif' alt='요청하신 작업을 처리중입니다.잠시만 기다려 주세요'></td>");
//    document.write("</tr>");
//    document.write("</table>");
//    document.write("</div>");
//    
//    document.write("<div id='status_move_layer' style='position:absolute;left:0px;top:0px;width:0px;height:0px; z-index:99; visibility:hidden;filter:alpha(opacity=100);'>");
//    document.write("<table width='100%' height='100%' summary='페이지 이동중'>");
//    document.write("<caption style='display:none'>페이지 이동중</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<tr>");
//    document.write("<td align='center'><img src='"+context+"/images/egovframework/gcall/include/banner/banner_move.gif' alt='해당 페이지로 이동중입니다'></td>");
//    document.write("</tr>");
//    document.write("</table>");
//    document.write("</div>");
//    
//    document.write("<div id='status_upload_layer' style='position:absolute;left:0px;top:0px;width:0px;height:0px; z-index:99; visibility:hidden;filter:alpha(opacity=100);'>");
//    document.write("<table width='100%' height='100%' summary='이미지 전송중'>");
//    document.write("<caption style='display:none'>이미지 전송중</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<tr>");
//    document.write("<td align='center'>");
//    document.write("<table width='400px' height='80px' border='0' cellspacing='0' cellpadding='0' bgcolor='white' style='border:1px solid silver' summary='이미지 전송중'>");
//    document.write("<caption style='display:none'>이미지 전송중</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<tr><td class='padL10'><b>이미지전송</b></td><td>");
//    document.write("<table width='240px' height='7px' border='0' cellspacing='0' cellpadding='0' bgcolor='white' style='border:1px solid silver' summary='전송중 로딩화면'>");
//    document.write("<caption style='display:none'>전송중 로딩화면</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<tr><td><div id='progressBarBoxContent' style='height:10px;width:0px;background-image:url("+context+"/images/egovframework/gcall/include/bg/bg_progress.gif);overflow:hidden'></div></td>");
//    document.write("</tr>");
//    document.write("</table>");
//    document.write("</td><td width='60'><div id='progressBarText'></div></td></tr></table></td>");
//    document.write("</tr>");
//    document.write("</table>");
//    document.write("</div>");
//    
//    document.write("<div id=statusLay3 style='position:absolute;left:0px;top:0px;width:0px;height:0px; z-index:99; visibility:hidden;filter:alpha(opacity=100);'>");
//    document.write("<table width='100%' height='100%' summary='로딩중'>");
//    document.write("<caption style='display:none'>로딩중</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<tr>");
//    document.write("<td align='center'><img id='status_bar2' src='"+context+"/images/egovframework/gcall/include/icon/loader.gif' alt='로딩중'></td>");
//    document.write("</tr>");
//    document.write("</table>");
//    document.write("</div>");
//    
//    document.write("<div id='popup_base_layer' class='pop_base_layer'>");
//    document.write("</div>");
//    
//    document.write("<div id='popup_layer' class='pop_layer'>");
//    document.write("<table width='100%' height='100%' cellspacing='0' cellpadding='0' border='0' bgcolor='#C2D5DC' summary='아이콘'><tr>");
//    document.write("<caption style='display:none'>아이콘화면</caption>");
//    document.write("<thead><tr><th scope='col'></th></tr></thead>");
//    document.write("<td class='pop_layer_h'>"); 
//    document.write("<img src='"+context+"/images/egovframework/gcall/include/icon/icon_normal.gif' align='absmiddle' alt='아이콘'>");
//    document.write("&nbsp;<span id='pop_title' style='font-weight:bold;'></span>");
//    document.write("</td>");
//    document.write("<td class='pop_layer_b' align='right'><div class='pop_layer_btn' ");
//    document.write("onmouseover=\"this.className='pop_layer_btn_ov'\" onmouseout=\"this.className='pop_layer_btn'\"");
//    document.write(" onclick='cm_divPopClose();'></div></td></tr>");
//    document.write("<tr><td colspan='2' style='padding:3px 5px 5px 5px;'>");
//    //document.write("<iframe id='popup_layer_flame' width='100%' height='100%' frameborder='0' scrolling='no' marginwidth='0' marginheight='0'");
//    //document.write("hspace='0' vspace='0' style='background-color:white;border:1px solid white;' title ='빈프레임' src=''></iframe>");
//    document.write("</td></tr></table></div>");
//    
//    document.write("<div id='popup_layer_ov' class='pop_layer_ov'>");
//    document.write("</div>");
//    
//    document.onmousedown 	= mdown;
//	document.onmouseup 		= mup;
//	document.onmousemove 	= moveimg;
//    var bdown = false;
//	var x, y;
//	function mdown(nsEvent) {
//		var theEvent = nsEvent ? nsEvent : window.event;
//		var obj=null;
//		if(theEvent.target) obj=theEvent.target;
//		else if(theEvent.srcElement) obj=theEvent.srcElement;
//		
//		if (obj.className == "pop_layer_h") {
//			cm_getObj('popup_layer_ov').style.visibility = 'visible';
//			cm_getObj('popup_layer_ov').style.width  	= cm_getObj('popup_layer').style.width;
//			cm_getObj('popup_layer_ov').style.height 	= cm_getObj('popup_layer').style.height;
//			cm_getObj('popup_layer_ov').style.left		= cm_getObj('popup_layer').style.left;
//			cm_getObj('popup_layer_ov').style.top 		= cm_getObj('popup_layer').style.top;
//			bdown = true;
//			x = theEvent.clientX;
//			y = theEvent.clientY;
//		}
//		else{
//			bdown = false;
//		}
//	}
//	
//	function mup(nsEvent) {
//		var theEvent = nsEvent ? nsEvent : window.event;
//	 	var obj=null;
//	  	if(theEvent.target) obj=theEvent.target;
//  	  	else if(theEvent.srcElement) obj=theEvent.srcElement;
//  	  	if (obj.className == "pop_layer_ov") {
//			cm_getObj('popup_layer_ov').style.visibility = 'hidden';
//			cm_getObj('popup_layer').style.left = cm_getObj('popup_layer_ov').style.left;
//		  	cm_getObj('popup_layer').style.top = cm_getObj('popup_layer_ov').style.top;
//			bdown = false;
//			sElem=null;
//		}
//	}
//	
//	function moveimg(nsEvent) {
//		var theEvent = nsEvent ? nsEvent : window.event;
//		if (bdown) {
//			var distX = theEvent.clientX - x;
//			var distY = theEvent.clientY - y;
//			var ovX=0;
//			var ovY=0;
//			if(cm_getObj('popup_layer_ov').style.left!='') 
//				ovX=cm_getObj('popup_layer_ov').style.left;
//		
//			if(cm_getObj('popup_layer_ov').style.top!='') 
//				ovY=cm_getObj('popup_layer_ov').style.top;
//			
//			//화면 범위내에 벗어나면 고정시킨다.
//			var now_width=parseInt(ovX)+distX+parseInt(cm_getObj('popup_layer').style.width);
//			var now_hieght=parseInt(ovY)+distY+parseInt(cm_getObj('popup_layer').style.height);
//			
//			//x축 오른쪽 범위설정
//			if(now_width<document.body.clientWidth &&
//			   now_hieght<document.body.clientHeight)
//			{
//				cm_getObj('popup_layer_ov').style.left 	= (parseInt(ovX)+distX)+'px';
//				cm_getObj('popup_layer_ov').style.top 	= (parseInt(ovY)+distY)+'px';
//				x = theEvent.clientX;
//				y = theEvent.clientY;
//			}
//			return false;
//		}
//	}
//	
//    /**
//	 * 이메일 validation
//	 * param : flag[true : 보여줌 , false : 삭제함]
//	 */
//    function cm_emailValidate(value){
//		var regExp = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
//		if(!regExp.test(value)){
//			return false;
//		}
//		return true;
//	}
//	
//	/**
//	 *팝업창
//	 *
//	*/
//	function cm_popup(id,url,w,h,scroll_yn){
//		cw=screen.availWidth; 	//화면 너비
//		ch=screen.availHeight; 	//화면 높이
//		ml=(cw-w)/2;			//가운데 띄우기위한 창의 x위치
//		mt=(ch-h)/2;			//가운데 띄우기위한 창의 y위치
//		
//		var scroll=0;
//		if(scroll_yn)
//			scroll=1;
//		else
//			scroll=0;
//			
//		var urlPath ='';
//		if(url.indexOf('http')==-1){
//			urlPath=context+'/'+url;
//			urlPath=urlPath.replace('//','/');
//		}	
//		else{ 		
//			urlPath=url;
//		}
//		
//		var option="titlebar=0,location=0,scrollbars="+scroll+",top="+mt+",left="+ml+",width="+w+",height="+h;
//		var pop_obj=window.open(urlPath,id,option);
//		return pop_obj;
//	}
//	
//	function cm_popup2(id,url,top,left){
//		var w=100;
//		var h=100;
//		cw=screen.availWidth; 	//화면 너비
//		ch=screen.availHeight; 	//화면 높이
//		ml=(cw-w)/2;			//가운데 띄우기위한 창의 x위치
//		mt=(ch-h)/2;			//가운데 띄우기위한 창의 y위치
//		
//		var urlPath ='';
//		if(url.indexOf('http')==-1){
//			urlPath=context+'/'+url;
//			urlPath=urlPath.replace('//','/');
//		}	
//		else{ 		
//			urlPath=url;
//		}
//		
//		if(left==null) 	left=ml;
//		if(top==null) 	top=mt;
//		
//		
//		var option="titlebar=0,location=0,scrollbars=0,top="+top+",left="+left+",width=550,height=200";
//		var pop_obj=window.open(urlPath,id,option);
//		return pop_obj;
//	}
//	
//	
//	function cm_popResize() {
//        var thisX = document.getElementById("offsetTable").offsetWidth;
//        var thisY = document.getElementById("offsetTable").offsetHeight;
//        var maxThisX = screen.width - 50;
//        var maxThisY = screen.height - 80;
//
//        if (window.navigator.userAgent.indexOf("SV1") != -1){   //IE6.0
//        var marginY = 58+30; //마지막 수는 상황에따라 알맞게 넣으세요. (템플릿의 헤더높이 + 풋터 높이 + 알파)
//        } else if (window.navigator.userAgent.indexOf("MSIE 7.0") != -1){ //IE7.0
//        var marginY = 82+30;
//        }else {
//        var marginY = 50+30; //마지막 수는 상황에따라 알맞게 넣으세요. (템플릿의 헤더높이 + 풋터 높이 + 알파)
//        }
//
//        //alert(marginY)
//        if (thisX > maxThisX) {
//                window.document.body.scroll = "yes";
//                thisX = maxThisX;
//        }
//        if (thisY > maxThisY - marginY) {
//                window.document.body.scroll = "yes";
//                thisX += 19;
//                thisY = maxThisY - marginY;
//        }
//
//        var windowX = (screen.width - (thisX+10))/2;
//        var windowY = (screen.height - (thisY+marginY))/2 - 20;
//       // window.moveTo(windowX,windowY);
//
//        window.resizeTo(thisX+10,thisY+marginY);
//	}
//	
//	///-----페이징 함수
//	/* 
//	 fListScale : 	한페이지 출력할 게시물수 
//	 fPageScale : 	페이지수를 표시할 갯수 
//	 fTotal : 		전체 게시물수 
//	 fStart : 		리스트를 뿌릴 시작점(최근게시물로 order by 해서 뽑아 내는 자료라면 가장 최근 자료가 0번이 됨 
//	 fPagingUrl : 	클릭시 넘어갈 페이지 
// 	*/ 
//
// 	function cm_printPage(fListScale,fPageScale,fTotal,fStart,fPagingUrl) { 
//	    var fReturn="";
//	    var _totalpage;	//총페이지수
//		var iTotalCount=parseInt(fTotal);
//		var iVolumnPerPage=parseInt(fListScale);
//		var iTotalPage=0;
//		var iPageScale=parseInt(fPageScale);
//		
//		if( Math.floor(iTotalCount%iVolumnPerPage) > 0 )	
//			iTotalPage = Math.floor(iTotalCount/iVolumnPerPage) +1;
//		else
//			iTotalPage = Math.floor(iTotalCount/iVolumnPerPage);
//		var iUint = Math.floor((parseInt(fStart)-1) / parseInt(iPageScale));
//		iUint = (iUint * iPageScale)+1;
//		
//		var iNextUnit = parseInt(iUint+iPageScale);
//		if(iVolumnPerPage>=fTotal) return fReturn;
//		
//		if(iUint > iPageScale){
//			fReturn = fReturn +"<a href='javascript:" + fPagingUrl + "(1)'>1...</a>&nbsp;&nbsp;";
//		}
//		if(iUint > iPageScale){
//			fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + (iUint-1) + ")'><img src='"+context+"/images/egovframework/gcall/include/btn/table_prev.gif' align='absmiddle' alt='이전 페이지로'></a> "; 
//		}
//		
//		// 페이징[1 2 3 4 5 6 7 8 9 10]
//		//alert(iNextUnit);
//		for(var i = iUint ; i < iNextUnit ; i++ ){
//			
//			if(i > iTotalPage)
//				break;
//			if(i == fStart){
//				fReturn  = fReturn + "&nbsp&nbsp<span style='color:#FF8600;font-weight:bold;'>" + i + "</span> ";
//			}else{
//				fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + i + ")'>" + i + "</a> ";
//			}
//		}
//		
//		// 뒤로(>)
//		if(iNextUnit <= iTotalPage){
//			fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + iNextUnit + ")'><img src='"+context+"/images/egovframework/gcall/include/btn/table_next.gif' align='absmiddle' alt='다음 페이지로'></a> "; 
//		}
//		
//		// 마지막페이지(>>)
//		if(iNextUnit < iTotalPage){
//			fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + iTotalPage + ")'>..."+iTotalPage+"</a> "; 
//		}
//    
//     	return fReturn; 
// 	}
// 	
// 	/**
//	 *iframe 자동높이 조절
//	*/
//	function resizeFrame(iframeObj){ 
//		var innerBody = iframeObj.contentWindow.document.body; 
//		oldEvent = innerBody.onclick; 
//		innerBody.onclick = function(){ resizeFrame(iframeObj, 1);oldEvent; }; 
//		var innerHeight = innerBody.scrollHeight + (innerBody.offsetHeight - innerBody.clientHeight); 
//		iframeObj.style.height = innerHeight; 
//		//var innerWidth = innerBody.scrollWidth + (innerBody.offsetWidth - innerBody.clientWidth); 
//		//iframeObj.style.width = innerWidth;    
//		if( !arguments[1] )        /* 특정 이벤트로 인한 호출시 스크롤을 그냥 둔다. */ 
//			this.scrollTo(1,1); 
//	} 
// 	 
//    function cm_cutStr(message,maximum){
//  		var inc = 0;
//  		var nbytes = 0;
//  		var msg = "";
//  		var msglen = message.length;
//  		for(i=0;i<msglen;i++){
//   			var ch = message.charAt(i);
//   			if(escape(ch).length > 4){
//    			inc = 2;
//   			} 
//   			else if(ch == "\n"){
//    			if(message.charAt(i-1) != "\n"){
//     				inc = 1;
//    			}
//   			} 
//   			else if(ch == "<" || ch == ">"){
//    			inc = 4;
//   			} 
//   			else {
//    			inc = 1;
//   			}
//	   		if((nbytes + inc) > maximum){
//	    		break;
//	   		}
//	   		nbytes += inc;
//	   		msg += ch;
//  		}
//  		var next_str='';
//  		if(msglen>maximum)
//  			next_str='...';
//  		return msg+next_str;
// 	}
//	/**
//	 * **********************************	Ajax용	***************************************************************************
//	 */
//	
//	/**
//	 * Ajax 통신을위한 객체 구하기 함수
//	*/
//	function getXMLHttpRequest() {
//		if (window.ActiveXObject) {
//			try {
//				return new ActiveXObject("Msxml2.XMLHTTP");
//			} catch(e) {
//				try {
//					return new ActiveXObject("Microsoft.XMLHTTP");
//				} catch(e1) { return null; }
//			}
//		} else if (window.XMLHttpRequest) {
//			return new XMLHttpRequest();
//		} else {
//			return null;
//		}
//	}
//	
//	/**
//	 * Ajax방식으로 폼전송
//	 * param : 전송URL:url(String) ,변수:params(String),전송후 콜백함수:callback(Object),방식(GET,POST):method(String)
//	*/
//	var httpRequest = null;
//	function sendRequest(url, params, callback, method) {
//		httpRequest = null;
//		httpRequest = getXMLHttpRequest();
//		var httpMethod = method ? method : 'GET';
//		if (httpMethod != 'GET' && httpMethod != 'POST') {
//			httpMethod = 'GET';
//		}
//		var httpParams = (params == null || params == '') ? null : params;
//		var httpUrl = url;
//		if (httpMethod == 'GET' && httpParams != null) {
//			httpUrl = httpUrl + "?" + httpParams;
//		}
//		httpRequest.open(httpMethod, httpUrl, true);
//		httpRequest.setRequestHeader(
//			'Content-Type', 'application/x-www-form-urlencoded');
//		httpRequest.onreadystatechange = callback;
//		httpRequest.send(httpMethod == 'POST' ? httpParams : null);
//	} 
//	
//	function sendSuccess(req){
//		if (req.readyState == 4) {
//				return true;	
//		}
//		
//		return false;
//	}
//	
//	function cm_getMsg(xmlDoc){
//		var _response = xmlDoc.rootElement;
//		/*-- HEAD 영역 처리 --*/
//	  	//이름으로 접근할때..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//인덱스로 접근할때..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    
//	    
//	    //메세지 출력
//	    var message=rphead['message'];
//	    
//	    return message;
//	}
//	
//	function cm_error(xmlDoc){
//		var _response = xmlDoc.rootElement;
//		/*-- HEAD 영역 처리 --*/
//	  	//이름으로 접근할때..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//인덱스로 접근할때..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    
//	    
//	    //메세지 출력
//	    var message=rphead['error'];
//	    
//	    return message;
//	}
//	
//	function cm_message(xmlDoc){
//		var _response = xmlDoc.rootElement;
//		/*-- HEAD 영역 처리 --*/
//	  	//이름으로 접근할때..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//인덱스로 접근할때..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    //메세지 출력
//	    var message=rphead['message'];
//	    
//	    if(message!=''){
//	    	alert(message);
//	    	return true
//	    }
//	    return false;
//	}
//	
//	function cm_getTotalCount(xmlDoc){
//		var _response = xmlDoc.rootElement;
//		/*-- HEAD 영역 처리 --*/
//	  	//이름으로 접근할때..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//인덱스로 접근할때..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    //카운트
//	    var cnt=rphead['totalcount'];
//	    
//	    return cnt;
//	}
//	
//	function cm_getXmlValue(row,key,xml){
//		var result='';
//		var tags = xml.getElementsByTagName(key); 
//		if(row>(tags.length-1)) {
//			return '';
//		}
//		
//		result=tags[row].childNodes[0].nodeValue;
//		return result;
//	}
//	
//	
//	
//	/**
//	 * **********************************	텍스트하이라이트	********************
//	 */
//	
//	function cm_highlight(defaultText, treatAsPhrase, textColor, bgColor,obj_id)
//	{
//	  // This function prompts the user for any words that should
//	  // be highlighted on this web page
//	  if (!defaultText) {
//	    defaultText = "";
//	  }
//	 
//	  // we can optionally use our own highlight tag values
//	  if ((!textColor) || (!bgColor)) {
//	    highlightStartTag = "";
//	    highlightEndTag = "";
//	  } else {
//	    highlightStartTag = "<font style='color:" + textColor + "; background-color:" + bgColor + ";'>";
//	    highlightEndTag = "</font>";
//	  }
//	  
//	  if (treatAsPhrase) {
//	    promptText = "Please enter the phrase you'd like to search for:";
//	  } else {
//	    promptText = "Please enter the words you'd like to search for, separated by spaces:";
//	  }
//	  
//	  searchText = defaultText;
//	  
//	  if (!searchText)  {
//	    //alert("No search terms were entered. Exiting function.");
//	    return false;
//	  }
//	  
//	  return highlightSearchTerms(searchText, treatAsPhrase, true, highlightStartTag, highlightEndTag,obj_id);
//	}
//	
//	function highlightSearchTerms(searchText, treatAsPhrase, warnOnFailure, highlightStartTag, highlightEndTag,obj_id)
//	{
//	  if (treatAsPhrase) {
//	    searchArray = [searchText];
//	  } else {
//	    searchArray = searchText.split(" ");
//	  }
//	  
//	  if (!document.body || typeof(document.body.innerHTML) == "undefined") {
//	    if (warnOnFailure) {
//	      //alert("Sorry, for some reason the text of this page is unavailable. Searching will not work.");
//	    }
//	    return false;
//	  }
//	  
//	  var bodyText =cm_getObj(obj_id).innerHTML;// document.body.innerHTML;
//	  for (var i = 0; i < searchArray.length; i++) {
//	    bodyText = doHighlight(bodyText, searchArray[i], highlightStartTag, highlightEndTag);
//	  }
//	  
//	  //document.body.innerHTML 
//	  cm_getObj(obj_id).innerHTML= bodyText;
//	  return true;
//	}
//	
//	function doHighlight(bodyText, searchTerm, highlightStartTag, highlightEndTag) 
//	{
//	  // the highlightStartTag and highlightEndTag parameters are optional
//	  if ((!highlightStartTag) || (!highlightEndTag)) {
//	    highlightStartTag = "<font style='color:blue; background-color:yellow;'>";
//	    highlightEndTag = "</font>";
//	  }
//	  
//	  var newText = "";
//	  var i = -1;
//	  var lcSearchTerm = searchTerm.toLowerCase();
//	  var lcBodyText = bodyText.toLowerCase();
//	    
//	  while (bodyText.length > 0) {
//	    i = lcBodyText.indexOf(lcSearchTerm, i+1);
//	    if (i < 0) {
//	      newText += bodyText;
//	      bodyText = "";
//	    } else {
//	      // skip anything inside an HTML tag
//	      if (bodyText.lastIndexOf(">", i) >= bodyText.lastIndexOf("<", i)) {
//	        // skip anything inside a <script> block
//	        if (lcBodyText.lastIndexOf("/script>", i) >= lcBodyText.lastIndexOf("<script", i)) {
//	          newText += bodyText.substring(0, i) + highlightStartTag + bodyText.substr(i, searchTerm.length) + highlightEndTag;
//	          bodyText = bodyText.substr(i + searchTerm.length);
//	          lcBodyText = bodyText.toLowerCase();
//	          i = -1;
//	        }
//	      }
//	    }
//	  }
//	  
//	  return newText;
//	}
//	
//	
//	function JMap() {
//    
//	    /** 배열의 index 상수 */
//	    this._INDEX_KEY = 0;
//	    this._INDEX_VALUE = 1;
//	    
//	    /** private 데이터 저장 Array */
//	    this._elementData = new Array(0);
//	
//	    this.put = function(key, value) {
//	        var index = this._findIndexByKey(key);
//	        if (index >= 0) {
//	            (this._elementData[index])[this._INDEX_VALUE] = value;
//	        } else {
//	            var pair = new Array(2);
//	            pair[this._INDEX_KEY] = key;
//	            pair[this._INDEX_VALUE] = value;
//	            this._elementData.splice(this._elementData.length, 0, pair);
//	        }
//	    }
//	    
//	    /**
//	     * public
//	     * 지정된 key 에 해당하는 value 를 얻는다
//	     * @param key 키값
//	     * @return 키에 해당하는 값
//	     */
//	    this.get = function(key) {
//	        var index = this._findIndexByKey(key);
//	        if (index >= 0) {
//	            return (this._elementData[index])[this._INDEX_VALUE];
//	        }
//	        return null;
//	    }
//	    
//	    /**
//	     * public
//	     * 지정된 key 에 해당하는 value 를 삭제한다
//	     * @param key 키값
//	     */
//	    this.remove = function(key) {
//	        var removeIndex = this._findIndexByKey(key);
//	        if (removeIndex >= 0) {
//	            this._elementData.splice(removeIndex, 1);
//	        }
//	    }
//	    
//	    /**
//	     * public
//	     * 맵의 전체 Key 값들을 배열로 얻는다
//	     * @return key 값들의 Array
//	     */
//	    this.keys = function() {
//	        var keys = new Array(this._elementData.length);
//	        for (var i = 0; i < this._elementData.length; i++) {
//	            keys[i] = (this._elementData[i])[this._INDEX_KEY];
//	        }
//	        return keys;
//	    }
//	    
//	    /**
//	     * public
//	     * 맵의 전체 값들을 배열로 얻는다.
//	     * @return key 값들의 Array
//	     */
//	    this.values = function() {
//	        var values = new Array(this._elementData.length);
//	        for (var i = 0; i < this._elementData.length; i++) {
//	            values[i] = (this._elementData[i])[this._INDEX_VALUE];
//	        }
//	        return values;
//	    }
//	    
//	    /**
//	     * public
//	     * 맵에 key 가 포함되어 있다면 true
//	     * @param key 키값
//	     * @return 키값 포함 여부
//	     */
//	    this.containsKey = function(key) {
//	        return (this._findIndexByKey(key) >= 0);
//	    }
//	    
//	    /**
//	     * public
//	     * 맵이 비어있다면 true
//	     * @return 맵이 비었는지의 여부
//	     */
//	    this.isEmpty = function() {
//	        return (this.size() == 0);
//	    }
//	    
//	    /**
//	     * public
//	     * 맵을 비운다
//	     */
//	    this.clear = function() {
//	        this._elementData.splice(0, this._elementData.length);
//	    }
//	    
//	    /**
//	     * public
//	     * 맵을 크기를 얻는다
//	     * @return 맵의 크기
//	     */
//	    this.size = function() {
//	        return this._elementData.length;
//	    }
//	    
//	    /**
//	     * public
//	     * 객체를 문자열로 변환한다 (key^value|key^value|... 형태)
//	     * @return 문자열
//	     */
//	    this.toString = function() {
//	        var str = "";
//	        for (var i = 0; i < this._elementData.length; i++) {
//	            if (i > 0) {
//	                str += "|";
//	            }
//	            str += (this._elementData[i]).join("^");
//	        }
//	        return str;
//	    }
//	    
//	    /**
//	     * private
//	     * 해당 key 로 index 를 찾는다.
//	     * 찾지 못하면 -1 을 return 한다. (0과의 비교가 가장 빠름)
//	     * @param key 키값
//	     * @exception JException 
//	     */
//	    this._findIndexByKey = function(key) {
//	        if (key == null) {
//	            throw new JNullPointerException("map's key is null");
//	        }
//	        
//	        for (var i = this._elementData.length - 1; i >= 0; i--) {
//	            var oldKey = (this._elementData[i])[this._INDEX_KEY];
//	            if (key == oldKey) {
//	                return i;
//	            }
//	        }
//	        return -1;
//	    }
//	} // End of JMap Class
//
//	//그리드에서 해당 로우찾기
//	function cm_findRow(grid,find_col,value){
//		var nowRow=-1;
//		for(var i=1;i<=grid.getRowsNum();i++){
//			if(value==grid.getUserData(i,find_col)){
//				nowRow=i;
//				break;
//			}
//		}
//		return nowRow;
//	}
//	
//	//에디터 만들어주는 함수임.....
//	var editorBase=context+'/include/fckeditor/';
//	function cm_editorCreate(id,height,type){
//		var oFCKeditor = new FCKeditor( id );
//		oFCKeditor.BasePath	=context+editorBase;
//		oFCKeditor.ToolbarSet=type;
//		oFCKeditor.Height=height;
//		oFCKeditor.ReplaceTextarea();
//	}
//	
//	
//	/* 화면 확대 축소 시작 IE 전용 */
//	var nowZoom = 100; // 현재비율
//	var maxZoom = 200; // 최대비율(500으로하면 5배 커진다)
//	var minZoom = 80; // 최소비율
//
// 	//화면 키운다.
//	function cm_zoomIn() {
//	 if (nowZoom < maxZoom) {
//	  nowZoom += 5; //25%씩 커진다.
//	 } else {
//	  return;
//	 }
//	
//	 document.body.style.zoom = nowZoom + "%";
//	}
//
//
// 	//화면 줄인다.
//	function cm_zoomOut() {
//	 if (nowZoom > minZoom) {
//	  nowZoom -= 5; //25%씩 작아진다.
//	 } else {
//	  return;
//	 }
//	
//	 document.body.style.zoom = nowZoom + "%";
// 	}
//	/* 화면 확대 축소 끝 */
//	
//	var stmnLEFT = 400; // 왼쪽 여백 (메뉴가 왼쪽에서 10픽셀 떨어진 곳에 보여집니다) 
//	var stmnGAP1 = 250; // 위쪽 여백 (메뉴가 위에서 10픽셀 떨어진 곳에 보여집니다) 
//	var stmnGAP2 = 10; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
//	var stmnBASE = 250; // 스크롤 시작위치 
//	var stmnActivateSpeed = 10; 
//	var stmnScrollSpeed = 1; 
//	var stmnTimer; 
//
//	function cm_quickStart(){
//		if(document.body.clientWidth>945){
//			var left_margine=Math.floor((document.body.clientWidth-945)/2);
//			cm_getObj('quick_manu').style.left=(left_margine+945)+'px';
//		}
//		else{
//			cm_getObj('quick_manu').style.left='950px';
//		}
//		
//		cm_getObj('quick_manu').style.display='block';
//		
//		cm_getObj('quick_manu').style.top = document.body.scrollTop + stmnBASE; 
//        
//        var lastScrollY = 0;
//
//	    $(function(){
//	         var diffY = document.documentElement.scrollTop; 
//			// scroll event
//	         $(window).scroll(function(){ 
//	                var diffTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop); 
//	                diffTop = diffTop + 150;
//	
//	                if (diffY != lastScrollY) { 
//	                       percent = .10 * (diffY - lastScrollY); 
//	                       if (percent > 0) {
//	                             percent = Math.ceil(percent); 
//	                       } else {
//	                             percent = Math.floor(percent); 
//	                       }
//	                       diffTop = parseInt($("#quick_manu").offset().top) + percent; 
//	                       lastScrollY = lastScrollY + percent;
//	                }
//	                if(document.body.clientHeight>900){
//	                	$("#quick_manu").stop(); 
//	                	$("#quick_manu").animate({"top": diffTop}, 700);
//	                } 
//	         });
//	   });
//        //RefreshStaticMenu(); 
//	}
//	
//	function RefreshStaticMenu(){
//		var stmnStartPoint, stmnEndPoint, stmnRefreshTimer; 
//
//		stmnStartPoint = parseInt(cm_getObj('quick_manu').style.top,10); 
//		stmnEndPoint = document.body.scrollTop + stmnGAP2; 
//		if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
//
//		stmnRefreshTimer = stmnActivateSpeed; 
//
//		if ( stmnStartPoint != stmnEndPoint ) { 
//	        stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint )); 
//	        cm_getObj('quick_manu').style.top = parseInt(cm_getObj('quick_manu').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ); 
//	        stmnRefreshTimer = stmnScrollSpeed; 
//		} 
//
//		stmnTimer = setTimeout ("RefreshStaticMenu();", stmnRefreshTimer); 
//	}
//	
//	function cm_replaceAll(strTemp, strValue1, strValue2){
//	  while(1){
//	    if( strTemp.indexOf(strValue1) != -1 )
//	       strTemp = strTemp.replace(strValue1, strValue2);
//	    else
//	       break;
//	  }
//	   return strTemp;
//	}
//	
//	function cm_checkNumber(value){
//	    var x=value;
//	    var anum=/(^\d+$)|(^\d+\.\d+$)/
//	    if (anum.test(x))
//	        testresult=true
//	    else{
//	        alert("숫자만 입력가능합니다.!")
//	        testresult=false
//	    }
//		return (testresult)
//	}
//	
//	//정규식을 이용한 핸드폰 번호 체크
//	function cm_checkTel(value){
//	    var x=value;
//	  //  var anum= /^[\s]*(?:01(?:0|1|6-9)([\s]*(?:\-|\s)?[\s]*[0-9]{3,4}){2}?11[1-9])[\s]*$/
//		var anum = /^\s*01(?:0|1|[6-9])\-?\d{3,4}\-?\d{4}\s*$/;  // 휴대전화 번호 형식
//	
//		return anum.test(x);
///*
//	    if (anum.test(x))
//	        testresult=true
//	    else{
//	        testresult=false
//	    }
//		return (testresult)
//*/
//	}
//
//	function cm_getXmlRowsNum(xml){
//	    var tags = xml.getElementsByTagName('totalcount'); 
//		return tags[0].childNodes[0].nodeValue;
//	}
//	
//	
//	function cm_getKeyCode(e){
//		var result;
//		if(window.event)
//		result = window.event.keyCode;
//		else if(e)
//		result = e.which;
//		return result;
//	}
//	
//	//인증화면으로 이동한다.
//	function goIndicate(){
//		var params=cm_makeUrl('pageform',true);
//		//location.href='https://www.110.go.kr'+context+'/bdIndicate.do?'+params;
//		location.href='/bdIndicate.do?'+params;
//	}
//	
//	//문자상담 내용 MAX값 체크
//	function onkeyChatlengthMax(obj){
//		var totalByte = 0;
//        var msg = obj;
//
//        for (var i=0; i<msg.length; i++) {
//            var currentByte = msg.charCodeAt(i);
//
//            if (currentByte > 128) totalByte += 2;
//            else totalByte++;
//        }        
//        return totalByte;
//	}