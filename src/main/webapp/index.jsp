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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
         $("#content").load("WEB-INF/views/main.jsp"); // not working T.T
      });
</script>    
</head>
<body>
<%@include file="WEB-INF/views/common/header.jsp"%>
<%@include file="WEB-INF/views/main.jsp"%>
<!-- content -->
<div id="content"></div>
</body>
</html>