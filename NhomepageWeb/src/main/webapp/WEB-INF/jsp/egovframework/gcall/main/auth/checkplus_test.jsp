<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="egovframework.gcall.util.EncryptUtil" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<% String info = "20200108150720"; %>
<% String a = EncryptUtil.encAES128CBC(info); %>
<% String b = URLEncoder.encode(a, "UTF-8"); %>

<% String c = URLDecoder.decode(b, "UTF-8"); %>
<% String d = EncryptUtil.decAES128CBC(c); %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width">

		<title>암호화 테스트 | 정부민원안내콜센터</title>
    </head>
    
	<body>
		info : <%= info %>
		<br>
        enc : <%= a %>
        <br>
        encoding : <%= b %>
        <br>
        decoding : <%= c %>
        <br>
        dec : <%= d %>
	</body>
</html>