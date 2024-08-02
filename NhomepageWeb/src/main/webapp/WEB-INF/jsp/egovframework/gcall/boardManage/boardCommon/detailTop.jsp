<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- href="{{{fullPath}}}" download--%>
<script id="fileTemplate" type="text/x-handlebars-template">
    <li style="width:130px;margin-right:10px">
        <span class="mailbox-attachment-icon has-img">
			{{#ifCond imgSrc}} 
 			 <img style="width:100%;height:130px" src="<%=request.getContextPath()%>{{{imgSrc}}}" alt="Attachment">
			{{else}}
 			<img style="width:100%;height:130px" src="https://www.110.go.kr{{{imgSrc}}}" alt="Attachment">
			{{/ifCond}}
        </span>
        <div class="mailbox-attachment-info">
            <div style="cursor:pointer" onclick="window.open(encodeURI('/consult/fileDown.do?filePath={{{realPath}}}&fileName={{{fileName}}}&originalFileName={{{originalFileName}}}'))"  class="mailbox-attachment-name">
                <i class="fa fa-paperclip"></i>{{{originalFileName}}}
            </div>
        </div>
		
    </li>
</script>
<!-- <div class="mailbox-attachment-info">
			용량 : {{{fileSize}}}
        </div> -->
<script>
	 $(function(){
		 $('#summernote').summernote({
			  height:500,
			  toolbar: [],
			  popover:{
				  image:[]
			  }
		  });
		  
		  //핸들바 첨부파일 if 
		 Handlebars.registerHelper('ifCond', function(imgSrc, options) {
			  if("/images/egovframework/gcall/sjsimage/otherfile.png"=== imgSrc) {
			    return options.fn(this)
			  }
			  return options.inverse(this);
			});
		 $('#summernote').next().find(".note-editable").attr("contenteditable", false);
		var fileList =<%=newFList%>;
		var fileTemplate = Handlebars.compile($("#fileTemplate").html());
		if(fileList.length === 0){
			 $(".uploadedFileList").html("<span class='noAttach'></span>");
		}

		$(fileList).each(function(){
			printFiles(this);
		})

			// 첨부파일 출력dasf
			function printFiles(data) {
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
			function checkImageType(fullName) {
			    var pattern = /jpg$|gif$|png$|jpge$/i;
			    return fullName.match(pattern);
			}
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
			if($('#isTop').val()=="1"){
				$('#isTop').attr('checked', true)
			}

		})
</script>