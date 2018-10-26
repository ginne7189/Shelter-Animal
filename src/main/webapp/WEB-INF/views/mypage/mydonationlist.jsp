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
}
</style>
</head>
<body style="background-color:#EEEEEE;  padding:0px; margin:0px;">
<c:set var="disk" value="dist"/>
<c:if test="${email != null }">
	<%@include file="../common/sidebar.jsp"%>
</c:if>
	<%@include file="../common/header.jsp"%>
	
<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>후원내역</h4>
	</div>
<!-- 총 컨테이너 -->	
<div class="container-fluid"  style="margin-top: 150px">	
<!-- 봉사 신청 리스트 -->
	<!-- 첫번째 섹션 -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-5 info-big"> -->
<!-- 				<h2>유기견 보호센터</h2> -->
<!-- 					<div class="dntContent"> -->
<!-- 					<p><b>목표 후원 금액</b> : [%목표 금액%]</p> -->
<!-- 					<hr> -->
<!-- 					<p style="text-align: center;"> -->
<!-- 						  [%후원내용%] -->
<!-- 					</p> -->
<!-- 					<hr> -->
<!-- 					</div> -->
<!-- 					<p><strong>현재 모금액</strong></p> -->
<!-- 					<div class="progress"> -->
<!--  						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:70%">[%현재 모금액%]</div> -->
<!-- 					</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-2"></div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img class="view-img" src="https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80"> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!-- 	<!-- 두번째 섹션 --> -->
<!-- 	 <div class="container"> -->
<!-- 		 <div class="row"> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img class="view-img" src="https://images.unsplash.com/photo-1471874276752-65e2d717604a?ixlib=rb-0.3.5&s=0b402784efed68390520aaac62175c73&auto=format&fit=crop&w=1350&q=80"> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-2"></div>				 -->
<!-- 			<div class="col-md-5 info-big"> -->
<!-- 				<h2>영덕 동물보호 센터</h2> -->
<!-- 					<div class="dntContent"> -->
<!-- 					<p><b>목표 후원 금액</b> : [%목표 금액%]</p> -->
<!-- 					<hr> -->
<!-- 					<p style="text-align: center;"> -->
<!-- 						  영덕의 자랑 대게를 살 수 있는 돈을 기부해주세요! 여러분이 기부해주신 돈으로 맛있는 대게찜을 해 먹을 수 있습니다 모든 대게는 보호소 사람들이 배부르게 먹을 수 있도록 34년 전통 영덕전통시장 원조 횟집에서 조리됩니다 -->
<!-- 					</p> -->
<!-- 					<hr> -->
<!-- 					</div> -->
<!-- 					<p><strong>현재 모금액</strong></p> -->
<!-- 					<div class="progress"> -->
<!--  						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:10%;">[%현재 모금액%]</div> -->
<!-- 					</div>		 -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

	
</div>
<!-- 총 컨테이너 끝 -->	

	<!-- ㅍㅔ이징 처리 -->
	<div class="container detail" article-seq="2" ><p>상세넘어가기</p></div>
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