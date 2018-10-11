<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
  
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

	<%@include file="../common/sidebar.jsp" %>
     <%@include file="../common/header.jsp" %>
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
	  <table class="table">
	    <thead>
	      <tr>
	        <th><input type="checkbox"></th>
	        <th>글번호</th>	         
	         <th>제목</th>
	         <th>글종류</th>
	        <th>작성일시</th>
	        <th>조회수</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td><input type="checkbox"></td>
	        <td>1</td>
	        <td>시츄가 실종되었어요</td>
	        <td>실종</td>
	        <td>2017-08-10</td>
	        <td>4</td>
	      </tr>
	      <tr>	        
	        <td><input type="checkbox"></td>
	        <td>2</td>
	        <td>말티즈 분양받으실분 구합니다.</td>
	        <td>분양</td>
	        <td>2017-08-10</td> 
	        <td>14</td>
	      </tr>
	       <tr>	        
	        <td><input type="checkbox"></td>
	        <td>2</td>
	        <td>말티즈 분양받으실분 구합니다.</td>
	        <td>분양</td>
	        <td>2017-08-10</td> 
	        <td>14</td>
	      </tr>
	       <tr>	        
	        <td><input type="checkbox"></td>
	        <td>2</td>
	        <td>말티즈 분양받으실분 구합니다.</td>
	        <td>분양</td>
	        <td>2017-08-10</td> 
	        <td>14</td>
	      </tr>
	       <tr>	        
	        <td><input type="checkbox"></td>
	        <td>2</td>
	        <td>말티즈 분양받으실분 구합니다.</td>
	        <td>기타</td>
	        <td>2017-08-10</td> 
	        <td>14</td>
	      </tr>
	       <tr>	        
	        <td><input type="checkbox"></td>
	        <td>2</td>
	        <td>말티즈 분양받으실분 구합니다.</td>
	        <td>기타</td>
	        <td>2017-08-10</td> 
	        <td>14</td>
	      </tr>

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
			<input type="button"  class="btn btn-outline-primary" id="select_img3"  value="수정" />
			<input type="button"  class="btn btn-outline-primary" id="select_img3"  value="삭제" />
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


