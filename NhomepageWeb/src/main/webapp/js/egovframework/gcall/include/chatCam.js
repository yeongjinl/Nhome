//	/**
//	 * ���� Ÿ���� �Է°��� ���̵� ���ؼ� ������
//	 * param : id �Է����� ���̵�(String):id
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
//	 * ���� Ÿ���� ���� �Է°��� ������
//	 * param : �����̵�:id(String), ���ð�(String):value,Ȱ��ȭ����(boolean):enable
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
//	 * �ش� ID�� ��ü�� �����´�.
//	 * param : id �Է����� ���̵�(String):id
//	 */
//	function cm_getObj(id){
//		return document.getElementById(id);
//	}
//	
//	/**
//	 * �������� URL�������� �ٲپ��ش�
//	 * param : ���̸�:formName(String), ���ڵ�����(boolean):encode
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
//	    //��밡���� ��Ʈ���� �迭�� �����Ѵ�.
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
//	 * �������� URL�������� �ٲپ��ش�
//	 * param : ���̸�:formName(String), ���ڵ�����(boolean):encode
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
//	    //��밡���� ��Ʈ���� �迭�� �����Ѵ�.
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
//	 * ��Ű���� ����
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
//	 * ��Ű���� ��������
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
//	
//	
//	
//	/**
//	 * �˻��ÿ� ó���� �޽��� ó��
//	 * param : flag[true : ������ , false : ������]
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
//	 * �˻��ÿ� ó���� �޽��� ó��
//	 * param : flag[true : ������ , false : ������]
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
//	 * �˻��ÿ� ó���� �޽��� ó��
//	 * param : flag[true : ������ , false : ������]
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
//	 * �̹��� ���ε��
//	 * param : flag[true : ������ , false : ������]
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
//		//Ŭ���̾�Ʈ�� ȭ�� ���� ���̸� ���Ѵ�.
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
//    
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
//			//ȭ�� �������� ����� ������Ų��.
//			var now_width=parseInt(ovX)+distX+parseInt(cm_getObj('popup_layer').style.width);
//			var now_hieght=parseInt(ovY)+distY+parseInt(cm_getObj('popup_layer').style.height);
//			
//			//x�� ������ ��������
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
//	 * �̸��� validation
//	 * param : flag[true : ������ , false : ������]
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
//	 *�˾�â
//	 *
//	*/
//	function cm_popup(id,url,w,h,scroll_yn){
//		cw=screen.availWidth; 	//ȭ�� �ʺ�
//		ch=screen.availHeight; 	//ȭ�� ����
//		ml=(cw-w)/2;			//��� �������� â�� x��ġ
//		mt=(ch-h)/2;			//��� �������� â�� y��ġ
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
//		cw=screen.availWidth; 	//ȭ�� �ʺ�
//		ch=screen.availHeight; 	//ȭ�� ����
//		ml=(cw-w)/2;			//��� �������� â�� x��ġ
//		mt=(ch-h)/2;			//��� �������� â�� y��ġ
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
//        var marginY = 58+30; //������ ���� ��Ȳ������ �˸°� ��������. (���ø��� ������� + ǲ�� ���� + ����)
//        } else if (window.navigator.userAgent.indexOf("MSIE 7.0") != -1){ //IE7.0
//        var marginY = 82+30;
//        }else {
//        var marginY = 50+30; //������ ���� ��Ȳ������ �˸°� ��������. (���ø��� ������� + ǲ�� ���� + ����)
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
//	///-----����¡ �Լ�
//	/* 
//	 fListScale : 	�������� ����� �Խù��� 
//	 fPageScale : 	���������� ǥ���� ���� 
//	 fTotal : 		��ü �Խù��� 
//	 fStart : 		����Ʈ�� �Ѹ� ������(�ֱٰԽù��� order by �ؼ� �̾� ���� �ڷ��� ���� �ֱ� �ڷᰡ 0���� �� 
//	 fPagingUrl : 	Ŭ���� �Ѿ ������ 
// 	*/ 
//
// 	function cm_printPage(fListScale,fPageScale,fTotal,fStart,fPagingUrl) { 
//	    var fReturn="";
//	    var _totalpage;	//����������
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
//			fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + (iUint-1) + ")'><img src='"+context+"/include/image/btn/table_prev.gif' align='absmiddle'></a> "; 
//		}
//		
//		// ����¡[1 2 3 4 5 6 7 8 9 10]
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
//		// �ڷ�(>)
//		if(iNextUnit <= iTotalPage){
//			fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + iNextUnit + ")'><img src='"+context+"/include/image/btn/table_next.gif' align='absmiddle'></a> "; 
//		}
//		
//		// ������������(>>)
//		if(iNextUnit < iTotalPage){
//			fReturn  = fReturn + "&nbsp&nbsp<a href='javascript:" + fPagingUrl + "(" + iTotalPage + ")'>..."+iTotalPage+"</a> "; 
//		}
//    
//     	return fReturn; 
// 	}
// 	
// 	/**
//	 *iframe �ڵ����� ����
//	*/
//	function resizeFrame(iframeObj){ 
//		var innerBody = iframeObj.contentWindow.document.body; 
//		oldEvent = innerBody.onclick; 
//		innerBody.onclick = function(){ resizeFrame(iframeObj, 1);oldEvent; }; 
//		var innerHeight = innerBody.scrollHeight + (innerBody.offsetHeight - innerBody.clientHeight); 
//		iframeObj.style.height = innerHeight; 
//		//var innerWidth = innerBody.scrollWidth + (innerBody.offsetWidth - innerBody.clientWidth); 
//		//iframeObj.style.width = innerWidth;    
//		if( !arguments[1] )        /* Ư�� �̺�Ʈ�� ���� ȣ��� ��ũ���� �׳� �д�. */ 
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
//	 * **********************************	Ajax��	***************************************************************************
//	 */
//	
//	/**
//	 * Ajax ��������� ��ü ���ϱ� �Լ�
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
//	 * Ajax������� ������
//	 * param : ����URL:url(String) ,����:params(String),������ �ݹ��Լ�:callback(Object),���(GET,POST):method(String)
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
//		/*-- HEAD ���� ó�� --*/
//	  	//�̸����� �����Ҷ�..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//�ε����� �����Ҷ�..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    
//	    
//	    //�޼��� ���
//	    var message=rphead['message'];
//	    
//	    return message;
//	}
//	
//	function cm_error(xmlDoc){
//		var _response = xmlDoc.rootElement;
//		/*-- HEAD ���� ó�� --*/
//	  	//�̸����� �����Ҷ�..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//�ε����� �����Ҷ�..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    
//	    
//	    //�޼��� ���
//	    var message=rphead['error'];
//	    
//	    return message;
//	}
//	
//	function cm_message(xmlDoc){
//		var _response = xmlDoc.rootElement;
//		/*-- HEAD ���� ó�� --*/
//	  	//�̸����� �����Ҷ�..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//�ε����� �����Ҷ�..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    //�޼��� ���
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
//		/*-- HEAD ���� ó�� --*/
//	  	//�̸����� �����Ҷ�..  
//	 	var _head_items = _response.childElement("HEAD");
//	  	//�ε����� �����Ҷ�..
//  	 	var rphead = new Array();
//	    for (var i=0; i<_head_items.childElements.length; i++) 
//	    {
//			var _node = _head_items.childElements[i];  
//			rphead[_node.name] = _node.getText();
//	    }
//	    //ī��Ʈ
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
//	 * **********************************	�ؽ�Ʈ���̶���Ʈ	********************
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
//	    /** �迭�� index ��� */
//	    this._INDEX_KEY = 0;
//	    this._INDEX_VALUE = 1;
//	    
//	    /** private ������ ���� Array */
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
//	     * ������ key �� �ش��ϴ� value �� ��´�
//	     * @param key Ű��
//	     * @return Ű�� �ش��ϴ� ��
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
//	     * ������ key �� �ش��ϴ� value �� �����Ѵ�
//	     * @param key Ű��
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
//	     * ���� ��ü Key ������ �迭�� ��´�
//	     * @return key ������ Array
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
//	     * ���� ��ü ������ �迭�� ��´�.
//	     * @return key ������ Array
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
//	     * �ʿ� key �� ���ԵǾ� �ִٸ� true
//	     * @param key Ű��
//	     * @return Ű�� ���� ����
//	     */
//	    this.containsKey = function(key) {
//	        return (this._findIndexByKey(key) >= 0);
//	    }
//	    
//	    /**
//	     * public
//	     * ���� ����ִٸ� true
//	     * @return ���� ��������� ����
//	     */
//	    this.isEmpty = function() {
//	        return (this.size() == 0);
//	    }
//	    
//	    /**
//	     * public
//	     * ���� ����
//	     */
//	    this.clear = function() {
//	        this._elementData.splice(0, this._elementData.length);
//	    }
//	    
//	    /**
//	     * public
//	     * ���� ũ�⸦ ��´�
//	     * @return ���� ũ��
//	     */
//	    this.size = function() {
//	        return this._elementData.length;
//	    }
//	    
//	    /**
//	     * public
//	     * ��ü�� ���ڿ��� ��ȯ�Ѵ� (key^value|key^value|... ����)
//	     * @return ���ڿ�
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
//	     * �ش� key �� index �� ã�´�.
//	     * ã�� ���ϸ� -1 �� return �Ѵ�. (0���� �񱳰� ���� ����)
//	     * @param key Ű��
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
//	//�׸��忡�� �ش� �ο�ã��
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
//	
//	
//	
//	/* ȭ�� Ȯ�� ��� ���� IE ���� */
//	var nowZoom = 100; // �������
//	var maxZoom = 200; // �ִ����(500�����ϸ� 5�� Ŀ����)
//	var minZoom = 80; // �ּҺ���
//
// 	//ȭ�� Ű���.
//	function cm_zoomIn() {
//	 if (nowZoom < maxZoom) {
//	  nowZoom += 5; //25%�� Ŀ����.
//	 } else {
//	  return;
//	 }
//	
//	 document.body.style.zoom = nowZoom + "%";
//	}
//
//
// 	//ȭ�� ���δ�.
//	function cm_zoomOut() {
//	 if (nowZoom > minZoom) {
//	  nowZoom -= 5; //25%�� �۾�����.
//	 } else {
//	  return;
//	 }
//	
//	 document.body.style.zoom = nowZoom + "%";
// 	}
//	/* ȭ�� Ȯ�� ��� �� */
//	
//	var stmnLEFT = 400; // ���� ���� (�޴��� ���ʿ��� 10�ȼ� ������ ���� �������ϴ�) 
//	var stmnGAP1 = 250; // ���� ���� (�޴��� ������ 10�ȼ� ������ ���� �������ϴ�) 
//	var stmnGAP2 = 10; // ��ũ�ѽ� ������ ���ʰ� �������� �Ÿ� 
//	var stmnBASE = 250; // ��ũ�� ������ġ 
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
//	        alert("���ڸ� �Է°����մϴ�.!")
//	        testresult=false
//	    }
//		return (testresult)
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
//	
//	