<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<style type="text/css">
body{
	font-family: 'Noto Sans KR', sans-serif;
}
.card-img-top{
	width : 100%;
	height: 300px;
}
.container{
	width : 60%;
}
.container{
	margin-top: 100px;	
}
.jumbotron{
	text-align: center;
}
#first{
	margin-top: 30px;
}
#second{
	margin-top: 30px;
}
</style>
</head>
<body style="background-color:#EEEEEE;  padding:0px; margin:0px;">
<%@include file="../common/sidebar.jsp" %>
<%@include file="../common/header.jsp" %>  
	<div class="jumbotron toplayout">
	    <h2>마이페이지</h2>
	    <h4>실종동물내역</h4>
	</div>
<!-- 동물 리스트 -->
    <!-- Page Content -->
       <div class="container">

      <div class="row" id="main" style="padding:0px; margin:0px;">
      
        
   </div>
      	<div class="col-sm-2" style="margin-right: 30px;float: right"></div> 
    </div>
	
	 <!-- /.container -->
    <div class="container" style="margin-top: 150px">
    
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td colspan="3" height="5"></td>
	</tr>
	<tr valign="top">
		<td width="100%" align="center" class="page"><!--PAGE--> ${navigator.navigator}</td>
		<td nowrap class="stext"><b>${navigator.pageNo}</b> / ${navigator.totalPageCount}
		pages</td>
	</tr>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>