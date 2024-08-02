<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>110콜센터</title>
<%@include file = "/WEB-INF/jsp/egovframework/gcall/index/library.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/lightbox.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/egovframework/gcall/sjscss/custom.css"/>
<script src="<%=request.getContextPath()%>/summernote/egovframework/dist/summernote.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/fileUpload.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/handlebars.min.js"></script>
<script src="<%=request.getContextPath()%>/js/egovframework/gcall/sjslib/lightbox.js"></script>
<style type="text/css" >

.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background: rgba(0,0,0,0.2); /*not in ie */
    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
     z-index:999;
}
    .wrap-loading div{ /*로딩 이미지*/
        position: fixed;
        top:50%;
        left:50%;
        margin-left: -21px;
        margin-top: -21px;
    }

    .display-none{ /*감추기*/
        display:none;
    }
</style>
</head>
<script type="text/javascript">
 //시작하고 나서 로드할거
 $(document).ready(function() {
    dbGubun('CONTACT_DB_GUBUN','');
    classGubunL1();
    flagGubun();
 });
</script>
   <body>
      <table class='layout'>
         <%@include file="/WEB-INF/jsp/egovframework/gcall/index/top.jsp" %>
         <tr>
            <td class='leftMenuArea'>
               <!-- LeftMenu Area -->
               <ul class='leftMenu' id="dataLeftMenu">   </ul>
               <!--/ LeftMenu Area -->
            </td>
            <td class='contentArea'>
               <!-- Contents Area -->
               <div class='page-title'>
                  <div class='title'>지식DB등록/수정</div>
                  <div class='navi'>
                     <i class='fa fa-home'></i>
                     <i class='fa fa-chevron-right'></i> 데이터 관리
                     <i class='fa fa-chevron-right'></i> <span class='now'>지식DB 등록/수정</span>
                  </div>
               </div>
               <div class="panel panel-default">
                  <div class="panel-heading">게시물등록</div>
                    <div class="panel-body">
                        <form id="faqreg" action="/severdata/regInsert.do" method="post">
                          <div class='hidden'>
                          <input type='hidden' id="" name="REG_ID" value="${fn:escapeXml(sUserId)}"/>
                          <input type='hidden' id="CONFID" value="contactDB"/>
                      </div>
                          <table class='table table-bordered'>
                             <tbody>
                                <tr>
                                   <th>* 질문제목</th>
                                   <td colspan=3><input type='text' id='TITLE' name='TITLE' class='form-control'></td>
                                </tr>
                                <tr>
                                   <th>* 질문내용</th>
                                   <td id="quesCount" colspan=3 >
                                      <textarea id="QUST_CNTN" class="summernote" name='QUST_CNTN'></textarea>
                                   </td>
                                </tr>

                                <tr>
                                   <th>* 답변내용</th>
                                   <td id="answCount" colspan=3>
                                    <textarea id="ANSCONTENT" name="CONTENT" class="summernote"></textarea>
                                   </td>
                                   	<span style="color:red;">※ 원문정보가 있는 콘텐츠는 반드시 출처, 작성자, 작성일을 표시해야 합니다.</span>
                                </tr>

                                <tr>
                                   <th>* 키워드</th>
                                   <td colspan=3><input type='text' id="KEY_WORD" name='KEY_WORD' class='form-control'></td>
                                </tr>
                                <tr>
                                   <th>* 업무구분</th>
                                   <td>
                                      <select id="FLAG" name='FLAG'  onchange="flagGubun()" class='form-control wfull'>
                                         <option value="" selected>전체</option>
                                      </select>
                                   </td>
                                   <th>* 지식DB구분</th>
                                   <td>
                                      <select id="dbGubunSelect" onchange="dbGubun('CONTACT_DB_GUBUN','')" name='CONTACT_DB_GUBUN' class='form-control wfull'>
                                      	<option value=""selected>전체</option>
                                      </select>
                                   </td>
                                </tr>
                                <tr>
                                 <th>업무분류</th>
                                    <td colspan=3>
                                      <div class='input-group whiteBg' style='width:100%;'>
                                         <div class='input-group-addon selectStepAddon'>
                                            <select id="CON1_CD" onChange="conGubunL1();" name="CON1_CD" class="form-control">
                                            	<option value=""selected>전체</option>
                                            </select>
                                         </div>
                                         <div class='input-group-addon selectStepAddon'>
                                            <select id="CON2_CD" onChange="conGubunM1()" name='CON2_CD' class='form-control'>
                                            	<option value=""selected>전체</option>
                                            </select>
                                         </div>
                                         <div class='input-group-addon selectStepAddon'>
                                            <select id="CON3_CD" onChange="conGubunS1()" name='CON3_CD' class='form-control'>
                                            	<option value=""selected>전체</option>
                                            </select>
                                         </div>
                                         <div class='input-group-btn w100'>
                                            <!-- <button class='btn w100'>검색</button> -->
                                            <button type='button' class='btn btn-lg' onclick="popup()">
		                                       <i class='fa fa-search'></i>
		                                    </button>
                                         </div>
                                      </div>
                                   </td>
                                </tr>
                                <tr>
                                   <th>기관분류</th>
                                     <td colspan=3>
                                      <div class='input-group whiteBg' style='width:100%;'>
                                         <div class='input-group-addon selectStepAddon'>
                                            <select id="CLASS1_CD" onChange="classGubunL1()" name='CLASS1_CD' class='form-control'>
                                            	<option value=""selected>전체</option>
                                            </select>
                                         </div>
                                         <div class='input-group-addon selectStepAddon'>
                                            <select id="CLASS2_CD" onChange="classGubunM1()" name='CLASS2_CD' class='form-control'>
                                            	<option value=""selected>전체</option>
                                            </select>
                                         </div>
                                         <div class='input-group-addon selectStepAddon'>
                                            <select id="CLASS3_CD" onChange="classGubunS1()" name='CLASS3_CD' class='form-control'>
                                            	<option value=""selected>전체</option>
                                            </select>
                                         </div>
                                         <div class='input-group-btn w100'>
                                            <!-- <button class='btn w100'>검색</button> -->
                                            <button type='button' class='btn btn-lg' onclick="popupClass()">
		                                       <i class='fa fa-search'></i>
		                                    </button>
                                         </div>
                                      </div>
                                   </td>
                                </tr>
                                <tr>
                                   <th>처리부서</th>
                                   <td colspan=3>
                                      <div class='input-group wfull'>
                                         <input type='text' id="RELATION_DEPT_NM" name="RELATION_DEPT_NM" class='form-control'>
                                         <div class='input-group-addon'>처리부서연락처</div>
                                         <input type='text' id="RELATION_DEPT_TEL" name="RELATION_DEPT_TEL" class='form-control'>
                                         <div class='input-group-addon'>처리부서담당자</div>
                                         <input type='text' id="RELATION_DEPT_ADMIN" name="RELATION_DEPT_ADMIN" class='form-control'>
                                      </div>
                                   </td>
                                </tr>
                                <tr>
                                   <th>첨부파일</th>
                                   <td class='text-right' colspan=3>
                                      <!-- <button class='btn btn-primary mb10 mr10'>첨부</button>
                                      <button class='btn btn-white mb10'>삭제</button>
                                      <textarea class='form-control h100'></textarea> -->
                                      <div class="box box-primary" style="width: 80%;margin:0 auto">
                                <div class="box-body">
                                    <%--첨부파일 영역 추가--%>
                                    <div class="form-group">
                                    <label for="fileUp" class="fileDrop" title="파일첨부">
                                            <p class="text-center"><i class="fa fa-paperclip"></i> 클릭하면 첨부파일을 등록할 수 있습니다..</p>
                                            <p class="text-center">※ 동영상 첨부최대 용량 10MB / 첨부가능 확장자 .wmv .mp4 .avi .webm .ogg</p>
											<p class="text-center"> 이미지 첨부최대 용량 10MB / 첨부가능 확장자는 .jpeg. png, .gif, .doc, .hwp, .ppt, .pptx, .xlsx, .pdf, .zip</p>
                                     </label>
                                        <input type="file"  id="fileUp" title="파일첨부" style="display:none"/>
                                    </div>
                                    <%--첨부파일 영역 추가--%>
                                    
                                </div>
                                <div class="box-footer">
                                    <ul style="display:-webkit-box;list-style: none;width:100%;overflow:scroll "  class="mailbox-attachments clearfix uploadedFileList"></ul>
                                </div>
                            </div>
                                   </td>
                                </tr>
                             </tbody>
                          </table>
                          <div id="fileInfo"></div>
				  			<div class='text-right'>
							<!--/ Contents Area -->
							  <div class="box box-primary">
								  <div class="box-footer">
							          <div class="pull-right">
							             <button class='btn btn-primary btn-lg mr20 w100' type="button" onclick='faqreg()'>저장</button>
                             			 <button class='btn btn-white btn-lg w100' type="button" onclick='window.history.go(-1)'>취소</button>
							          </div>
						      	  </div>
							  </div>
							</div>
                       </form>
                 </div>
               </div>
            </td>
         </tr>
      </table>
      <div class="wrap-loading display-none">
    <div><img src="<%=request.getContextPath()%>/images/egovframework/gcall/sjsimage/loading.gif" /></div>
	</div>
      <%@include file="/WEB-INF/jsp/egovframework/gcall/boardManage/boardCommon/regBottom.jsp" %>
   </body>
      <script type="text/javascript">

      function faqreg(){
 
         //필수 유효성(질문제목, 질문내용, 답변내용, 키워드, 업무구분, 지식DB구분) 검사
         var title = document.getElementById("TITLE").value;
         var qust_cntn = document.getElementById("QUST_CNTN").value;
         var content =document.getElementById("ANSCONTENT").value;
         var key_word = document.getElementById("KEY_WORD").value;
         // 업무구분
         var flag = document.getElementById("FLAG").options[document.getElementById("FLAG").selectedIndex].value;
         // 지식DB구분
         var contact_db_gubun = document.getElementById("dbGubunSelect").options[document.getElementById("dbGubunSelect").selectedIndex].value;
         // 업무분류
         var con1_cd = document.getElementById("CON1_CD").value;
         var con2_cd = document.getElementById("CON2_CD").value;
         var con3_cd = document.getElementById("CON3_CD").value;
         // 기관분류
         var class1_cd = document.getElementById("CLASS1_CD").value;
         var class2_cd = document.getElementById("CLASS2_CD").value;
         var class3_cd = document.getElementById("CLASS3_CD").value;
         var relation_dept_nm = document.getElementById("RELATION_DEPT_NM").value;
         var relation_dept_tel = document.getElementById("RELATION_DEPT_TEL").value;
         var relation_dept_admin = document.getElementById("RELATION_DEPT_ADMIN").value;

         //
         if(title == ""){
            alert("제목을 입력해주세요.");
            document.getElementById("TITLE").focus();
         }else if(qust_cntn == ""){
            alert("질문내용을 입력해주세요.");
            document.getElementById("QUST_CNTN").focus();
         }else if(content == ""){
            alert("답변을 입력해주세요.");
            document.getElementById("ANSCONTENT").focus();
         }else if(key_word == ""){
            alert("키워드를 입력해주세요.");
            document.getElementById("KEY_WORD").focus();
         }else if(flag == ""){
            alert("업무구분을 입력해주세요.");
            document.getElementById("FLAG").focus();
         }else if(contact_db_gubun == ""){
            alert("지식DB구분을 입력해주세요.");
            document.getElementById("CONTACT_DB_GUBUN").focus();
         }else if($("#quesCount .note-editable").find("img").length>3){
        	 alert("질문에 올릴 이미지는 3장까지 등록할 수 있습니다.");
        	 return false;
         }else if($("#answCount .note-editable").find("img").length>3){
        	 alert("답변에 올릴 이미지는 3장까지 등록할 수 있습니다");
        	 return false;
         }else{
            var result = confirm("저장 하시겠습니까?");
            if(result){
               $("#faqreg").submit();
            }
         }
      };

      //DB 구분
      function dbGubun(CODE_TYPE,PARENT_ID){
         var CODE_ID= $('#dbGubunSelect option:selected').val();
         if(CODE_ID==undefined){
            CODE_ID='';
         }else if(CODE_ID=="undefined"){
        	 CODE_ID='';
         }
         $.ajax({
            url:"/severdata/dbGubun.do",
            method:"GET",
            data:{
               "CODE_TYPE":CODE_TYPE,
               "PARENT_ID":PARENT_ID,
               "CODE_ID":CODE_ID
            },
            success:function(data){
               data = JSON.parse(data);
               var dbGubunCont = "";
               $.each(data,function(index,item){
                  if(item.CODE_NAME=="FAQ"||item.CODE_NAME=="상담사례"||item.CODE_NAME=="전체"){
                     if(item.SELECTED=='1'){
                    	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                           dbGubunCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
							}else{
	                           dbGubunCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
							}
                        }else{
                       	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                           dbGubunCont+='<option value="">'+item.CODE_NAME+'</option>'
							}else{
	                           dbGubunCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
							}
                        }
                  }
               })
               $('#dbGubunSelect').html(dbGubunCont);
            },
            error:function(e){
            }
         })
      };
     // 변수 목록
      var FLAG = "";
      var CLASS1_CD;
      var CLASS2_CD;
      var CLASS3_CD;
      var CON1_CD;
      var CON2_CD;
      var CON3_CD;
      //기관 대분류
     function classGubunL1(){
       CLASS1_CD = $('#CLASS1_CD option:selected').val();
       if(CLASS1_CD==undefined){
          CLASS1_CD='';
        }else if(CLASS1_CD=="undefined"){
       		CLASS1_CD='';
        }
       $.ajax({
          url:"/severdata/classGubunL.do",
          method:"GET",
          data:{
             "CLASS1_CD":CLASS1_CD
          },
          success:function(data){
               data = JSON.parse(data);
                  var classGubunLCont = "";
                  $.each(data,function(index,item){
                     if(item.SELECTED=='1'){
                    	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
		                        classGubunLCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
							}else{
		                        classGubunLCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
							}
                     }else{
                    	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
		                        classGubunLCont+='<option value="">'+item.CODE_NAME+'</option>'
							}else{
        		                classGubunLCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
							}
                     }
                  })
                   classGubunM1();
             $('#CLASS1_CD').html(classGubunLCont);

          },
          error:function(e){
             console.log(e);
          }
       })
     };
      //기관 중분류
     function classGubunM1(){
        CLASS2_CD= $('#CLASS2_CD option:selected').val();
        if(CLASS2_CD==undefined){
           CLASS2_CD='';
         }
        else if(CLASS2_CD=="undefined"){
           CLASS2_CD='';
         }
         $.ajax({
             url:"/severdata/classGubunM.do",
             method:"GET",
             data:{
                "CLASS1_CD":CLASS1_CD,
                "CLASS2_CD":CLASS2_CD
             },
             success:function(data){
                  data = JSON.parse(data);
                     var classGubunMCont = "";
                     $.each(data,function(index,item){
                        if(item.SELECTED=='1'){
                       	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                           classGubunMCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
							}else{
    	                       classGubunMCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
							}
                        }else{
                       	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                           classGubunMCont+='<option value="">'+item.CODE_NAME+'</option>'
							}else{
	                           classGubunMCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
							}
                        }
                     })
                 classGubunS1();
                $('#CLASS2_CD').html(classGubunMCont);
             },
             error:function(e){
                console.log(e);
             }
          })
     };
     //기관 소분류
     function classGubunS1(){
        CLASS3_CD= $('#CLASS3_CD option:selected').val();
        if(CLASS3_CD==undefined){
           CLASS3_CD='';
         }
        else if(CLASS3_CD=="undefined"){
           CLASS3_CD='';
         }
         $.ajax({
             url:"/severdata/classGubunS.do",
             method:"GET",
             data:{
                "CLASS1_CD":CLASS1_CD,
                "CLASS2_CD":CLASS2_CD,
                "CLASS3_CD":CLASS3_CD
             },
             success:function(data){
                  data = JSON.parse(data);
                     var classGubunSCont = "";
                     $.each(data,function(index,item){
                        if(item.SELECTED=='1'){
                       	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                           classGubunSCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
							}else{
	                           classGubunSCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
							}
                        }else{
                       	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                           classGubunSCont+='<option value="">'+item.CODE_NAME+'</option>'
							}else{
	                           classGubunSCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
							}
                        }
                     })
                $('#CLASS3_CD').html(classGubunSCont);
             },
             error:function(e){
                console.log(e);
             }
          })
     };
   //업무 대분류
 	function conGubunL1() {
 		 FLAG = $('#FLAG option:selected').val();
 		 console.log("업무 대분류 : " + FLAG);
   	     if(FLAG=="" || FLAG==null || FLAG == undefined){
   	         FLAG='';
 		}
 		CON1_CD = $('#CON1_CD option:selected').val();
 		if (CON1_CD == "" || CON1_CD == null || CON1_CD == undefined) {
 			CON1_CD = '';
 		}
 			if(FLAG!=''){
 				$.ajax({
 					url : "/severdata/conGubunL.do",
 					method : "GET",
 					data : {
 						"CON1_CD" : CON1_CD,
 						"CODE_ID": FLAG
 					},
 					success : function(data) {
 						data = JSON.parse(data);
 						console.log("congubun:"+data)
 						var conGubunLCont = "";
 						$.each(data,function(index, item) {
 							if (item.SELECTED == '1') {
 								if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
 									conGubunLCont += '<option value="" selected>'+ item.CODE_NAME+ '</option>'
 								}else{
 									conGubunLCont += '<option value="'+item.CODE_ID+'" selected>'+ item.CODE_NAME+ '</option>'
 								}
 							} else {
 								if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
 									conGubunLCont += '<option value="">'+ item.CODE_NAME+ '</option>'
 								}else{
 									conGubunLCont += '<option value="'+item.CODE_ID+'">'+ item.CODE_NAME+ '</option>'
 								}
 							}
 						})
 						conGubunM1();
 						$('#CON1_CD').html(conGubunLCont);
 					}
 				})
 			}

 	}

       //업무 중분류
     function conGubunM1(){
       CON2_CD = $('#CON2_CD option:selected').val();
        var conGubunMCont = "";
        var conGubunSCont = "";
       if(CON2_CD==undefined){
            CON2_CD='';
       }
       else if(CON2_CD=="undefined"){
            CON2_CD='';
       }
         if(CON1_CD==""){
            conGubunMCont="<option value='' selected>전체</option>";
            $('#CON2_CD').html(conGubunMCont);
            conGubunSCont="<option value='' selected>전체</option>";
            $('#CON3_CD').html(conGubunSCont);
         }else{
            $.ajax({
                  url:"/severdata/conGubunM.do",
                  method:"GET",
                  data:{
                     "CON1_CD":CON1_CD,
                     "CON2_CD":CON2_CD
                  },
                  success:function(data){
                       data = JSON.parse(data);

                          $.each(data,function(index,item){
                             if(item.SELECTED=='1'){
                            	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                                conGubunMCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
     							}else{
	                                conGubunMCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
     							}
                             }else{
                            	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                                conGubunMCont+='<option value="">'+item.CODE_NAME+'</option>'
     							}else{
	                                conGubunMCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
     							}
                             }
                          })
                        conGubunS1();
                     $('#CON2_CD').html(conGubunMCont);
                  },
                  error:function(e){
                     console.log(e);
                  }
               })
         }
     };
     //업무 소분류
     function conGubunS1(){
       CON3_CD = $('#CON3_CD option:selected').val();
        var conGubunSCont = "";
          if(CON3_CD==undefined){
             CON3_CD='';
        }
          else if(CON3_CD=="undefined"){
             CON3_CD='';
        }
          if(CON1_CD==""||CON2_CD==""){
             conGubunSCont="<option value='' selected>전체</option>";
          $('#CON3_CD').html(conGubunSCont);
       }else{
             $.ajax({
                  url:"/severdata/conGubunS.do",
                  method:"GET",
                  data:{
                     "CON1_CD":CON1_CD,
                     "CON2_CD":CON2_CD,
                     "CON3_CD":CON3_CD
                  },
                  success:function(data){
                       data = JSON.parse(data);
                          $.each(data,function(index,item){
                             if(item.SELECTED=='1'){
                            	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                                conGubunSCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
     							}else{
	                                conGubunSCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
     							}
                             }else{
                            	 if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
	                                conGubunSCont+='<option value="">'+item.CODE_NAME+'</option>'
     							}else{
	                                conGubunSCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
     							}
                             }
                          })
                     $('#CON3_CD').html(conGubunSCont);
                  },
                  error:function(e){
                     console.log(e);
                  }
               })
       }
     };


     //업무구분
     function flagGubun(){
    	   FLAG = $('#FLAG option:selected').val();
    	    if(FLAG=="" || FLAG==null || FLAG == undefined){
    	         FLAG='';
    		}
    	    if(FLAG==""){
    	     $('#CON1_CD').html('<option value="" seleted>전체</option>');
    	   	 $('#CON2_CD').html('<option value="" seleted>전체</option>');
    	   	 $('#CON3_CD').html('<option value="" seleted>전체</option>');
    	   	 }else{

    	   	 }
     	//로그인한 사용자가  admin이면 업무구분 레벨 1 , 사용자면 TEAM_CD 맞는 업무구분
     	var sUserId = "${fn:escapeXml(sUserId)}"
     	if(sUserId == "admin"){
     			$.ajax({
           	         url:"/severdata/flagGubun.do",
           	         method:"GET",
           	         data:{
           	            "POST_CD": 'admin',
           	            "CODE_ID": FLAG
           	         },
           	         success:function(data){
           	              data = JSON.parse(data);
           	              console.log(data);
           	                 var flagGubunCont = "";
           	                 $.each(data,function(index,item){
           	                    if(item.SELECTED=='1'){
           							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
 	          	                       flagGubunCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
           							}else{
 	          	                       flagGubunCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
           							}
           	                    }else{
           							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
 	          	                       flagGubunCont+='<option value="">'+item.CODE_NAME+'</option>'
           							}else{
 	          	                       flagGubunCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
           							}
           	                    }
           	                 })
           	            $('#FLAG').html(flagGubunCont);
           	             conGubunL1();
           	         }
           	      })
     	}else{
    		 $.ajax({
    	         url:"/severdata/flagGubun.do",
    	         method:"GET",
    	         data:{
    	        	 "POST_CD": '${fn:escapeXml(sUserPost)}',
    	         },
    	         success:function(data){
    	              data = JSON.parse(data);
    	                 var flagGubunCont = "";
    	                 $.each(data,function(index,item){
    	                    if(item.SELECTED=='1'){
    							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
    	                       		flagGubunCont+='<option value="" selected>'+item.CODE_NAME+'</option>'
    							}else{
    	                       		flagGubunCont+='<option value="'+item.CODE_ID+'" selected>'+item.CODE_NAME+'</option>'
    							}
    	                    }else{
    							if(item.CODE_ID == "" || item.CODE_ID == null || item.CODE_ID == undefined){
    	                       		flagGubunCont+='<option value="">'+item.CODE_NAME+'</option>'
    							}else{
    	                       		flagGubunCont+='<option value="'+item.CODE_ID+'">'+item.CODE_NAME+'</option>'
    							}
    	                    }
    	                 })
    	            $('#FLAG').html(flagGubunCont);
    	              conGubunL1();

    	         }
    	      })
    		}
     };

     //업무구분 대중소 불러오기 팝업
     function popup(){
       console.log("popup start");
       var FLAG = $('#FLAG option:selected').val();
       console.log("FLAG : "+ FLAG);
            if(FLAG=="undefined"){
               FLAG='';
            }else if (FLAG == undefined) {
               FLAG = '';
           }else if (FLAG == '') {
               FLAG = '';
           }
            if(FLAG != ''){
          //업무 구분이 공백이 아니면
               var url = "/severdata/popup.do";
               var name = "popup test";
               var option = "width = 650, height = 600, top = 0, right = 0, location = no, resizable=no"
               window.open(url, name, option);
            }else{
               //업무 구분이 공백이면
               alert("업무구분을 선택해주세요.");
            }

     }

     function popupClass(){
       console.log("popupClass start");
        var url = "/severdata/popupClass.do";
        var name = "popupClass";
        var option = "width = 650, height = 600, top = 0, right = 0, location = no, resizable=no"
        window.open(url, name, option);
    }

   </script>
</html>