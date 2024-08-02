<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		<a href="{{{fileName}}}" class="btn btn-default btn-xs pull-right delBtn">
             	삭제
        </a>
		<input type='hidden' name='FILE_NAME'value="{{{fileName}}}">
		<input type='hidden' name='FILE_SORT'value="{{{3}}}">
		<input type='hidden' name='ORIGINAL_FILE_NAME' value="{{{originalFileName}}}">
		<input type='hidden' name='REAL_PATH' value="{{{realPath}}}">
		<input type='hidden' name='TEMP_ID' value="">
		<input type='hidden' name='USE_YN' value="">
    </li>
</script>
<!-- 
<div class="mailbox-attachment-info">
			용량 : {{{fileSize}}}
        </div>
 -->
<script>
	 var fileList =<%=newFList%>;
		var fileTemplate = Handlebars.compile($("#fileTemplate").html());
		if(fileList.length === 0){
			 $(".uploadedFileList").html("<span class='noAttach'></span>");
		}
		  //핸들바 첨부파일 if 
		 Handlebars.registerHelper('ifCond', function(imgSrc, options) {
			  if("/images/egovframework/gcall/sjsimage/otherfile.png"=== imgSrc) {
			    return options.fn(this)
			  }
			  return options.inverse(this);
			});
		$(fileList).each(function(){
			printFiles(this);
		})
		$(function(){
			if($('#isTop').val()=="1"){
				$('#isTop').attr('checked', true)
			}
		})
</script>

