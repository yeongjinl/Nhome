<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript">

//페이지 시작시 코드타입, 코드북 active
$(document).ready(function() {
   $("#codeTypeList tr:nth-child(1)").addClass("select");
   $("#codeValueList tr:nth-child(1)").addClass("select");

   var ctype = $("#codeTypeList tr:nth-child(1) td:nth-child(2)").text();
   var cname = $("#codeTypeList tr:nth-child(1) td:nth-child(3)").text();
   var other = $("#codeTypeList tr:nth-child(1) td:nth-child(4)").text();

   $("#codeType").val(ctype);
   $("#codeTypeName").val(cname);
   $("#codeTypeOther").val(other);

   //코드북 뷰
   var btype = $("#codeValueList tr:nth-child(1) td:nth-child(2)").text();
   var bcode = $("#codeValueList tr:nth-child(1) td:nth-child(3)").text();
   var bname = $("#codeValueList tr:nth-child(1) td:nth-child(4)").text();
   var buse = $("#codeValueList tr:nth-child(1) td:nth-child(5)").text();

   var etc1 = $("#codeValueList tr:nth-child(1) td:nth-child(6)").text();
   var etc2 = $("#codeValueList tr:nth-child(1) td:nth-child(7)").text();
   var etc3 = $("#codeValueList tr:nth-child(1) td:nth-child(8)").text();
   var parent_id = $("#codeValueList tr:nth-child(1) td:nth-child(9)").text();
   var parent_type = $("#codeValueList tr:nth-child(1) td:nth-child(10)").text();

   console.log("codeType : " +codeType);
   console.log("btype : " +btype);

   $("#bookView>form>input").val(btype);
   $("#code_id").val(bcode);
   $("#code_name").val(bname);

   $("#etc1").val(etc1);
   $("#etc2").val(etc2);
   $("#etc3").val(etc3);

   $("#parent_id").val(parent_id);
   $("#parent_type").val(parent_type);
   if(buse == 'O'){
      $('#use_y').prop("checked", true);
   }else if (buse == 'X'){
      $('#use_n').prop("checked", true);
   }
});

//코드타입 클릭시 코드북 변경
function codeBookDiv(codeType) {
   $.ajax({
      type: "POST",
      url: "/site/getCodeBook.do",
      data: {
         "codeType": codeType,
      },
      dataType: "text",
      success: function(res) {
         $("#codebookDiv").html(res);

         //선택된거 색 변하기
            $("#"+codeType).addClass("select");                      //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
            $("#"+codeType).siblings().removeClass("select");
            $("#codeValueList2 tr:nth-child(1)").addClass("select");

            //왼쪽 하단 코드타입 코드명 값 변경
            var ctype = $("#"+codeType +" td:nth-child(2)").html();
             var cname = $("#"+codeType +" td:nth-child(3)").html();
             var other = $("#"+codeType +" td:nth-child(4)").html();
             $("#codeType").val(ctype);
             $("#codeTypeName").val(cname);
             $("#codeTypeOther").val(other);

             //오른쪽 하단 코드북 값 변경
             var bcode = $("#codeValueList2 tr:nth-child(1) td:nth-child(3)").text();
             var bname = $("#codeValueList2 tr:nth-child(1) td:nth-child(4)").text();
             var buse  = $("#codeValueList2 tr:nth-child(1) td:nth-child(5)").text();
             var etc1 = $("#codeValueList2 tr:nth-child(1) td:nth-child(6)").text();
             var etc2 = $("#codeValueList2 tr:nth-child(1) td:nth-child(7)").text();
             var etc3 = $("#codeValueList2 tr:nth-child(1) td:nth-child(8)").text();
             var parent_id = $("#codeValueList2 tr:nth-child(1) td:nth-child(9)").text();
             var parent_type = $("#codeValueList2 tr:nth-child(1) td:nth-child(10)").text();

             console.log("ctype : " +ctype);
         $("#bookView>form>input").val(ctype);
             $("#code_id").val(bcode);
             $("#code_name").val(bname);

             $("#etc1").val(etc1);
             $("#etc2").val(etc2);
             $("#etc3").val(etc3);

             $("#parent_id").val(parent_id);
             $("#parent_type").val(parent_type);

             if(buse == 'O'){
                $('#use_y').prop("checked", true);
             }else if (buse == 'X'){
                $('#use_n').prop("checked", true);
             }
      }
   });
};

//코드북 클릭시 하단에 이름 변경
function codeBookClick(codebookNum){
   $("#codebook"+codebookNum).addClass("select");
   $("#codebook"+codebookNum).siblings().removeClass("select");

   //코드북 뷰
   var btype = $("#codebook"+codebookNum +" td:nth-child(2)").text();
   var bcode = $("#codebook"+codebookNum +" td:nth-child(3)").text();
   var bname = $("#codebook"+codebookNum +" td:nth-child(4)").text();
   var buse  = $("#codebook"+codebookNum +" td:nth-child(5)").text();

   var etc1 = $("#codebook"+codebookNum +" td:nth-child(6)").text();
   var etc2 = $("#codebook"+codebookNum +" td:nth-child(7)").text();
   var etc3 = $("#codebook"+codebookNum +" td:nth-child(8)").text();
   var parent_id = $("#codebook"+codebookNum +" td:nth-child(9)").text();
   var parent_type = $("#codebook"+codebookNum +" td:nth-child(10)").text();

   //$("#bookView>form>input").val(codeType);
   $("#code_id").val(bcode);
   $("#code_name").val(bname);
   $("#etc1").val(etc1);
   $("#etc2").val(etc2);
   $("#etc3").val(etc3);
   $("#parent_id").val(parent_id);
   $("#parent_type").val(parent_type);
   if(buse == 'O'){
      $('#use_y').prop("checked", true);
   }else if (buse == 'X'){
      $('#use_n').prop("checked", true);
   }

}

//코드 타입 등록
function typeReg(){
   var result = confirm("코드타입을 신규로 등록 하시겠습니까?");
   if(result) {
      var statusVal2 = $("#codeTypeStatus").val();
      //등록을 위해 왼쪽 하단 코드 타입이랑 코드명 비워주기
      $("#codeType").val("");
      $("#codeType").removeAttr('readonly');
      $("#codeTypeName").val("");
      $("#codeTypeOther").val("");
      var status = $("#codeTypeStatus").val("R");
      var statusVal = $("#codeTypeStatus").val();
   }

}
//코드 타입 저장
function typeInsert(){

   var code_type= $("#codeType").val();
   var statusVal = $("#codeTypeStatus").val();

   if(code_type.length < 1){
      alert("코드타입을 입력해주세요.");
   }else{
      if(statusVal =="R"){
         //상태가 등록을 누른 상태이면 저장을 진행한다.
         var result = confirm("코드타입을 저장하시겠습니까?");
         if(result){$('#codetypeForm').submit();}
      }else{
         //상태가 등록을 누른 상태가 아니면 수정으로 진행한다.
         var result = confirm("코드타입을 수정하시겠습니까?");
         if(result){
            $('#codetypeForm').removeAttr("action");
            $('#codetypeForm').attr("action", "/site/updateCodeType.do");
            $('#codetypeForm').submit();
         }
      }
   }
}

//코드타입 삭제
function typeDel(){
   var result = confirm("삭제하시겠습니까?");
   if(result){
      var code_type  = $("#typeView table tbody tr td input[value]").val();
      location.href="/site/typeDel.do?code_type="+code_type;
   }
}

//코드북 등록
function codeReg(){
   var result = confirm("코드를 신규로 등록하시겠습니까?");
   if(result){
      $("#code_id").val("");
      $("#code_id").removeAttr('readonly');
      $("#code_name").val("");
      $("#etc1").val("");
      $("#etc2").val("");
      $("#etc3").val("");
      $("#parent_id").val("");
      $("#parent_type").val("");
      $('#use_y').prop("checked", true);
      $("#codeStatus").val("R");
   }
}
//코드북 저장
function codeSubmit(){
   var status = $("#codeStatus").val();

	if($("#code_id").val() == '' || $("#code_name").val() == '' ){
		alert("필수사항을 입력해주세요.");
		return false;
	} else {
	   if(status == "R"){
	      var result = confirm("저장하시겠습니까?");
	      if(result){
	         $('#codebookForm').submit();
	      }
	   }else{
	      var result = confirm("수정하시겠습니까?");
	      if(result){
	         $('#codebookForm').submit();
	      }
	   }
	}
}
//한글 입력 공백처리
$(document).on("keydown","#parent_id", function(e){
	if (!(e.keyCode >=37 && e.keyCode<=40)) {
		var v = $(this).val();
		$(this).val(v.replace(/[^a-z0-9]/gi,''));
	}
})
$(document).on("keydown","#parent_type", function(e){
	if (!(e.keyCode >=37 && e.keyCode<=40)) {
		var v = $(this).val();
		$(this).val(v.replace(/[^a-z0-9]/gi,''));
	}
})
$(document).on("keydown","#etc1", function(e){
	if (!(e.keyCode >=37 && e.keyCode<=40)) {
		var v = $(this).val();
		$(this).val(v.replace(/[^a-z0-9]/gi,''));
	}
})
$(document).on("keydown","#etc2", function(e){
	if (!(e.keyCode >=37 && e.keyCode<=40)) {
		var v = $(this).val();
		$(this).val(v.replace(/[^a-z0-9]/gi,''));
	}
})
$(document).on("keydown","#etc3", function(e){
	if (!(e.keyCode >=37 && e.keyCode<=40)) {
		var v = $(this).val();
		$(this).val(v.replace(/[^a-z0-9]/gi,''));
	}
})

</script>