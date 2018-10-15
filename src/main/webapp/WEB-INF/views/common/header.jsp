<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --> 
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/portfolio-item.css" rel="stylesheet">
<!-- 	<link rel="stylesheet" type="text/css" href="NewFile.css"> -->
<style>
ul.nav li.dropdown:hover > div.dropdown-menu{display:block;margin:0;}
</style> 
</head>
<body>
<!-- header1 -->
<nav class="navbar navbar-expand-sm bg-yellow navbar-yellow" style="height:44px;">
    <ul class="navbar-nav" style=" position: absolute;right: 3%;">
    <c:if test="${empty sessionScope.user}" > 
      <li class="nav-item">
        <a class="nav-link" href="${root}/login.animal">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${root}/register.animal">회원가입</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${root}/pwdFind.animal">비밀번호 찾기</a>
      </li>
      </c:if>
      <c:if test="${not empty sessionScope.user }"> 
      <li class="nav-item">
      		<a class="nav-link" href="${root}/mypage.animal">${sessionScope.user }님</a> 
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${root}/logout.animal">로그아웃</a>
      </li>
</c:if> 
    </ul>
</nav>
<!-- img : logo -->
<div class="imgcontainer" align="center"style="margin-bottom: 10px"> 
<a href="index.jsp"><img src="https://images.unsplash.com/photo-1520038410233-7141be7e6f97?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9af3b2bb5fbb37be767fbe40967c14b1&auto=format&fit=crop&w=1353&q=80" width="200px"height="100px"></a>
</div>
<!--  -->
<ul class="nav nav-tabs justify-content-center">
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">봉사활동</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/volunteerDetail.animal">봉사소개</a>
      <a class="dropdown-item" href="${root}/volunteerReg.animal">봉사신청</a>
    </div>
  </li> 
  
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">유기동물</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/abandonedNotice.animal">안내</a>
      <a class="dropdown-item" href="${root}/abandoned.animal">유기동물확인</a>
    </div>
  </li> 
  
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">실종동물</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/missingDetail.animal">실종동물소개</a>
      <a class="dropdown-item" href="${root}/missingReg.animal">실종동물등록</a>
      <a class="dropdown-item" href="#">실종동물찾기</a>
    </div>
  </li> 
  
  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">분양받기</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">분양소개</a>
      <a class="dropdown-item" href="#">분양등록</a>
      <a class="dropdown-item" href="#">개인분양</a>
    </div>
  </li> 
  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">후원</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/donation.animal">후원소개</a>
      <a class="dropdown-item" href="${root}/donationReg.animal">후원신청</a>
    </div>
  </li> 
  </ul>
</body>
</html>