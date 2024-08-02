
function pastPrevReply(confId,boardNum,selSearch,searchWord){
	$.ajax({
		url:"/boardReply/list.do",
		data:{
			"confId":confId,
			"boardNum":boardNum,
			"selSearch":selSearch,
			"searchWord":searchWord
		},
		success:function(data){
			$('#boardReplyListView').html(data);
		}
	})
}
function pageReplyMove(confId,boardNum,curPage,selSearch,searchWord){
	$.ajax({
		url:"/boardReply/list.do",
		data:{
			"confId":confId,
			"boardNum":boardNum,
			"curPage":curPage,
			"selSearch":selSearch,
			"searchWord":searchWord
		},
		success:function(data){
			$('#boardReplyListView').html(data);
		}
	})
}

function searchList(confId,boardNum){
	if($('#searchWord').val()==""){
		alert('검색어를 입력해주세요')
		return false;
	}
	$.ajax({
		url:"/boardReply/list.do",
		data:{
			"confId":confId,
			"boardNum":boardNum,
			"curPage":1,
			"selSearch":$('#selSearch option:selected').val(),
			"searchWord":$('#searchWord').val()
		},
		success:function(data){
			$('#boardReplyListView').html(data);
		}
	})
}

function replyInsert(userId,replyWriter,confId,boardNum){
	if($('#replyInput').val()==""){
		alert('댓글이 입력되지 않았습니다.')
		return false;
	}else if($('#replyPwInput').val()==""){
		alert('비밀번호가 입력되지 않았습니다.')
		return false;
	}
	$.ajax({
		url:"/boardReply/insert.do",
		method:"POST",
		data:{
			"REPLY_CONTENTS":$('#replyInput').val(),
			"REPLY_PW":$('#replyPwInput').val(),
			"USER_ID":userId,
			"REPLY_WRITER":replyWriter,
			"confId":confId,
			"boardNum":boardNum
		},
		success:function(data){
			if(data == '1'){
				alert('댓글이 등록 되었습니다.');
				pageReplyMove(confId,boardNum,1,0,"");
			}else{
				alert('댓글 등록 실패했습니다.')
				pageReplyMove(confId,boardNum,1,0,"");
			}
		
		}
	})
}


function fnChkByte(obj) {
    var maxByte = 3000; //최대 입력 바이트 수
    var str = obj.value;
    var str_len = str.length;
    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";
    for (var i = 0; i < str_len; i++) {
        one_char = str.charAt(i);
        if (escape(one_char).length > 4) {
            rbyte += 2; //한글2Byte
        } else {
            rbyte++; //영문 등 나머지 1Byte
        }
        if (rbyte <= maxByte) {
            rlen = i + 1; //return할 문자열 갯수
        }
    }
 
    if (rbyte > maxByte) {
        alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
        str2 = str.substr(0, rlen); //문자열 자르기
        obj.value = str2;
        fnChkByte(obj, maxByte);
    } else {
        document.getElementById('replyInput').innerText = rbyte;
    }
}


