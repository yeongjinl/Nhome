

$(function(){
	//게시판 등록하는 로직
	//등록 
		//서머노트
		 $('#summernote').summernote({
			  height:500,
			  callbacks: {
					onImageUpload: function(files, editor, welEditable) {
						 var confId =$('#CONFID').val();
						 for (var i = files.length - 1; i >= 0; i--) {
				            	sendFile(files[i], this, confId);
				            }
			        }
			     }

		  });
		 //지식인 디비 에디터 2개
		 $('#QUST_CNTN').summernote({
			  height:200,
			  callbacks: {
					onImageUpload: function(files, editor, welEditable) {
						var confId =$('#CONFID').val();
						 for (var i = files.length - 1; i >= 0; i--) {
				            	sendFile(files[i], this, confId);
				            }
			        }
				}

		  });
		 $('#ANSCONTENT').summernote({
			  height:200,
			  callbacks: {
					onImageUpload: function(files, editor, welEditable) {
						var confId =$('#CONFID').val();
						 for (var i = files.length - 1; i >= 0; i--) {
				            	sendFile(files[i], this, confId);
				            }
			        }
				}

		  });
		 function sendFile(file, el, confId) {
				var form_data = new FormData();
		      	form_data.append('file', file);
		      	$.ajax({
		        	data: form_data,
		        	type: "POST",
		        	url: '/imageUpload.do?confId='+confId,
		        	cache: false,
		        	contentType: false,
		        	enctype: 'multipart/form-data',
		        	processData: false,
		        	success: function(data) {
		        		data=JSON.parse(data);
		        		console.log(data)
		        		if(data.resultCode=="200"){
		        			if(data.extended==".jpg"||data.extended==".jpeg"||data.extended==".png"||data.extended==".gif"){
		        				 $('.wrap-loading').addClass('display-none');
		        				$(el).summernote('editor.insertImage', data.result);
		        			}else{
		        				var cont = "";
		        				if(data.extended==".wmv" ||data.extended==".avi" ){
		        					cont+="<p style='text-align:center'><embed class='newvideo' src='"+data.result+"' controls allowfullscreen showstatusbar='true' autostart='0'></embed></p>";
		        				}else if(data.extended ==".mp4"||data.extended==".ogg"||data.extended==".webm"){
		        					//cont+="<p style='text-align:center'><embed class='newvideo' src='"+data.result+"' controls allowfullscreen showstatusbar='true' autostart='0'></embed></p>";
		        					//cont+="<p style='text-align:center'><video controls allowfullscreen> <source src='"+data.result+"'></video></p>";
		        					//cont+="<p style='text-align:center'><embed src='"+data.result+"' controls allowfullscreen type='video/mp4'></embed></p>";*/
		        					cont+="<p style='text-align:center'><video class='newvideo' controls autoplay> <source src='"+data.result+"' type='video/mp4'></video></p>";	}
		        				 $('.wrap-loading').addClass('display-none');
		        				$(el).summernote('editor.pasteHTML',cont);
		        			}
		        		}else if(data.resultCode=="500"){
		        			alert(data.result);
		        			 $('.wrap-loading').addClass('display-none');
		        			return false;
		        		}else if(data.resultCode=="501"){
		        			alert(data.result);
		        			 $('.wrap-loading').addClass('display-none');
		        			return false;
		        		}
		        	},beforeSend:function(){
			            $('.wrap-loading').removeClass('display-none');
			        }
		      	});
		    }
		 //첨부파일
		 $('#fileUp').on("change", function() {
				var CONFID =$('#CONFID').val();
			    //event.preventDefault();
			    // drop 이벤트 발생시 전달된 파일 데이터
			    var files = $('#fileUp')[0].files;
			    // 단일 파일 데이터만을 처리하기 때문 첫번째 파일만 저장
			    var file = files[0];
			    // formData 객체 생성, 파일데이터 저장
			    var formData = new FormData();
			    formData.append("file", file);
			    // 파일 업로드 AJAX 통신 메서드 호출
			    uploadFile(formData,CONFID);
			});
		 //체크 버튼
			$("#isTop").click(function(){
				if($("#isTop").val()==0){
					$("#isTop").val('1')
				}else{
					$("#isTop").val('0')
				}
			})
			//등록 
			$('#boardRegBtn').click(function(){
				if($('input[name=TITLE]').val()==""){
					alert("제목이 입력되지 않았습니다.");
					return false;
				}
				if($('input[name=EMAIL]').val()==""){
					alert("이메일 입력되지 않았습니다.");
					return false;
				}
				if($('.note-editable').text()==""){
					alert("내용이 입력되지 않았습니다.");
					return false;
				}
				
				var result = confirm('등록하시겠습니까?');
				if(result == true){
					$('#boardRegProc').submit();
				}else{
					return false;
				}
		
			})
				//등록 
			$('#boardUpdBtn').click(function(){
				if($('input[name=TITLE]').val()==""){
					alert("제목이 입력되지 않았습니다.");
					return false;
				}
				if($('input[name=EMAIL]').val()==""){
					alert("이메일 입력되지 않았습니다.");
					return false;
				}
				if($('.note-editable').text()==""){
					alert("내용이 입력되지 않았습니다.");
					return false;
				}
				
				var result = confirm('수정하시겠습니까?')
				if(result == true){
					$('#boardUpdProc').submit();
				}else{
					return false;
				}
			})

})
	 
	

	// 파일 업로드 AJAX 통신
	function uploadFile(formData,CONFID) {
		  $.ajax({
	        url: "/consult/fileAdd.do?confId="+CONFID,
	        data: formData,
	        enctype: 'multipart/form-data',
	    	dataType:'json',
	        // processData : 데이터를 일반적인 query string으로 변환처리할 것인지 결정
	        // 기본값은 true, application/x-www-form-urlencoded 타입
	        // 자동변환 처리하지 않기 위해 false
	        processData: false,
	        // contentType : 기본값은 true, application/x-www-form-urlencoded 타입
	        // multipart/form-data 방식으로 전송하기 위해 false
	        contentType: false,
	        type: "POST",
	        success: function (data) {
	        	console.log(data.result);
	        	if(data.resultCode=="200"){
	        		 printFiles(data.result); // 첨부파일 출력 메서드 호출
	        		 $('.wrap-loading').addClass('display-none');
	  	            $(".noAttach").remove(); 
	        	}else if(data.resultCode=="500"){
	        		alert(data.result);
	        		 $('.wrap-loading').addClass('display-none');
        			return false;
	        	}else if(data.resultCode=="501"){
	        		alert(data.result);
	        		 $('.wrap-loading').addClass('display-none');
        			return false;
	        	}
	        },beforeSend:function(){
	            $('.wrap-loading').removeClass('display-none');
	        }

	    });
	}

	// 첨부파일 출력
	function printFiles(data) {
		console.log(data)
	    // 파일 정보 처리
	    var fileInfo = getFileInfo(data);
	    // Handlebars 파일 템플릿에 파일 정보들을 바인딩하고 HTML 생성
	    var html = fileTemplate(fileInfo);
	    // Handlebars 파일 템플릿 컴파일을 통해 생성된 HTML을 DOM에 주입
	    $(".uploadedFileList").append(html);
	    // 이미지 파일인 경우 파일 템플릿에 lightbox 속성 추가
	    if (checkImageType(data.ORIGINAL_FILE_NAME)) {
	        // 마지막에 추가된 첨부파일 템플릿 선택자
	        var that = $(".uploadedFileList li").last();
	        // lightbox 속성 추가
	        that.find(".mailbox-attachment-name").attr("data-lightbox", "uploadImages");
	        // 파일 아이콘에서 이미지 아이콘으로 변경
	        that.find(".fa-paperclip").attr("class", "fa fa-camera");
	    }
	}

	//파일 삭제 버튼 클릭 이벤트
	$(document).on("click", ".delBtn", function (event) {
	    event.preventDefault();
	    var that = $(this);
	    deleteFileWrtPage(that);
	});

	// 파일 삭제(입력페이지) : 첨부파일만 삭제처리
	function deleteFileWrtPage(that) {
	    var url = "/consult/fileDelete";
	    deleteFile(url, that);
	}

	// 파일 삭제 AJAX 통신
	function deleteFile(url, that) {
	    $.ajax({
	        url: url,
	        type: "post",
	        data: {
	        	fileName: that.attr("href"),
	        	confId : $('#CONFID').val()
	        	},
	        dataType: "text",
	        success: function (result) {
	                that.parents("li").remove();
	        }
	    });
	}

	// 파일 정보 처리
	function getFileInfo(data) {

	    var originalFileName;   // 화면에 출력할 파일명
	    var imgSrc;             // 썸네일 or 파일아이콘 이미지 파일 출력 요청 URL
	    var fileName;    // 원본파일 요청 URL
	    var fullPath; //변환된파일명
	    var fileSize;
	    var realPath
	    // 이미지 파일이면
	    if (checkImageType(data.ORIGINAL_FILE_NAME)) {
	        imgSrc = data.REAL_PATH+"/"+ data.FILE_NAME; // 썸네일 이미지 링크
	        // 원본 이미지 요청 링크
	        fileUrl = data.REAL_PATH+"/"+ data.FILE_NAME;
	    } else {
	        imgSrc = "/images/egovframework/gcall/sjsimage/otherfile.png"; // 파일 아이콘 이미지 링크
	        // 파일 다운로드 요청 링크
	        fileName =data.FILE_NAME;
	    }
	    realPath=data.REAL_PATH;
	    originalFileName = data.ORIGINAL_FILE_NAME;
	    fullPath = data.REAL_PATH+"/"+ data.FILE_NAME;
	    var sizeKB = data.FILE_SIZE/1024;
	    if(parseInt(sizeKB) > 1024){
	        var sizeMB = sizeKB/1024;
	        fileSize = sizeMB.toFixed(2)+" MB";
	    }else{
	    	fileSize = sizeKB.toFixed(2)+" KB";
	    }
	    return {originalFileName: originalFileName, imgSrc: imgSrc, fileName: data.FILE_NAME, fullPath: fullPath, fileSize:fileSize,realPath:realPath};
	}

	// 이미지 파일 유무 확인
	function checkImageType(fullName) {
	    var pattern = /jpg$|gif$|png$|jpge$/i;
	    return fullName.match(pattern);
	}
	
	 

