<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>후원 모집 리스트 페이지</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.view-img{
	height : 300px;
	width : 500px;
}
.container-fluid{
	width : 88%;
	font-family: 'Do Hyeon', sans-serif;
}
</style>
</head>
<body>
<c:set var="disk" value="dist"/>
<c:if test="${email != null }">
	<%@include file="../common/sidebar.jsp"%>
</c:if>	
	<%@include file="../common/header.jsp"%>
	
<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>회원님께서 후원하신 내역입니다</h4>
	</div>
<!-- 총 컨테이너 -->	
<div class="container-fluid"  style="margin-top: 150px">	
</div>
<!-- 총 컨테이너 끝 -->	

	<!-- ㅍㅔ이징 처리 -->
	
    <div class="container" style="margin-top: 150px">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td colspan="3" height="5"></td>
	</tr>
	<tr valign="top">
		<td width="100%" align="center" class="page"><!--PAGE--> ${navigator.navigator}</td>
		
	</tr>
		</table>
	</div>	     
	
<footer style="margin-top: 200px;">
<div class="container" style="text-align: center; background-color: lightgray;">
<h2>footer</h2>
</div>
</footer>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>