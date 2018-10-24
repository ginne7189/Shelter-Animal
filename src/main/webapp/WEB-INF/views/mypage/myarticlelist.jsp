<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>    

<!DOCTYPE html>
<html>
<head>


<style>
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
h2:after{
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
.form-control{
	margin:auto;
	width:40%;
}
</style>
</head>
<body style="background-color:#EEEEEE;  padding:0px; margin:0px;">
	<%@include file="../common/sidebar.jsp"%>
	
	<%@include file="../common/header.jsp"%>
	
     <div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>내가 쓴 글 보기</h4>
	</div>
    <!-- Page Content -->
    <div class="container-fluid" style="width:48%; display:inline-block; text-align:center; margin-left: 26%;margin-top:2%; background-color=yellow;">
<!-- 		<div class="col-sm-6" style="float:left;"> -->
		      <!-- Portfolio Item Heading -->

  	  <div class="container">
	  <h2>내가 쓴 글 보기</h2>
	  <div style="margin-top:8%; margin-bottom:2%">
	  <h4>자유게시판</h4> </div>
	  <div class="row" style="margin-bottom:5%">
	  <table width="900">
<tr>
	<td align="right">
	<select id="key">
		<option value="email">작성자
		<option value="subject">제목
	</select>
	<input type="text" id="word">
	<input type="button" id="searchBtn" value="검색">
	</td>
</tr>
</table>
	  <table class="table">
	    <thead>
	      <tr>
	        <th>작성자</th>
	        <th>글번호</th>	         
	         <th>제목</th>
	         <th>${email }</th>
	        <th>작성일시</th>
	        <th>조회수</th>
	      </tr>
	    </thead>
	    <tbody>

	    <tbody id="listview"></tbody>  
	    </tbody>
	  </table>
	   <!-- /.container -->
    <div class="container" style="margin-left:40%">
		<!-- ㅍㅔ이징 처리 -->
		<div class="row" >
		<ul class="pagination justify-content-center" >
			<li class="page-item">
				<a class="page-link" href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					<span class="sr-only">Previous</span>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">1</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">2</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">3</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">4</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="#">5</a>
			</li>			
			<li class="page-item">
				<a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
				</a>
			</li>
		</ul> 
		<div style="margin-left:30%">
		
		</div>
   		</div>
	</div>	    
	   
	  </div>
  	<hr>
  	
	
   </div>
	   
</div>

  </body>
  <div class="jumbotron text-center" style="margin-bottom:0"> 
  <p>footer</p>
 </div>

</html>


