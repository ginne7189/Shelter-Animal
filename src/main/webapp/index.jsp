<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!--header 삽입-->
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
</head>
<body>
<%@include file="WEB-INF/views/common/header.jsp"%>
<!-- content -->
<%@include file="WEB-INF/views/main.jsp"%>
<%@include file="WEB-INF/views/common/footer.jsp"%>
<div id="content"></div>
</body>
</html>