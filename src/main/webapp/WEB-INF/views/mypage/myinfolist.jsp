<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: white;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
.sidebar{
	position:fixed;
}
.card-img-top{
	width : 100%;
	height : 300px;
}
.container-fluid{
	width : 88%;
}
h1:after{
  content: "";
        display: block;
        width: 60px;
        border-bottom: 2px solid #bcbcbc;
        margin: 20px auto;
}
.button1 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}
.button2 {
    background-color: #008CBA;
    color: white;
 	border: none;
     padding: 12px 20px;
     text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
}
.button {
    background-color: #008CBA; 
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
}
</style>
</head>
<body style="background-color:#EEEEEE;  padding:0px; margin:0px;">
<c:if test="${email == null }">
	<%@include file="../common/sidebar.jsp"%>
</c:if>
	<%@include file="../common/header.jsp"%>
	<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>내정보보기</h4>
	</div>
<!-- 동물 리스트 -->
 
    <div class="container-fluid" style="width:48%; display:inline-block; text-align:center; margin-left: 26%;margin-top:2%; background-color=yellow;">
<!-- 		<div class="col-sm-6" style="float:left;"> -->
		      <!-- Portfolio Item Heading -->
		      <h1 class="my-4" >회원정보 수정</h1>
		       
	   		
	   		<form action="/action_page.php">
  <div class="container" style="text-align:left;">
    

    <label for="email"><b>이메일</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>비밀번호</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw-repeat"><b>비밀번호 확인</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    
  	<label for="psw-repeat"><b>전화번호</b></label>
    <input type="text" placeholder="Enter Tel" name="psw-repeat" required>
    
    <label for="psw-repeat"><b>주소</b></label>
    <input type="text" placeholder="Enter Email" name="psw-repeat" required>
    <hr>

    
  </div>


</form>


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
  </body>
  <div class="jumbotron text-center" style="margin-bottom:0"> 
  
  <p>footer</p>
 </div>

</html>

