<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String money = (String)request.getAttribute("money");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>
</head>
<body>
<h1><%=money %>원이 후원되었습니다.</h1>
<h5>라고 하고 나머지 처리하기</h5>
</body>
</html>