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
<body style="background-color:#EEEEEE;padding:0px; margin:0px;">
<%@include file="../common/sidebar.jsp" %>
<%@include file="../common/header.jsp" %> 

	<div class="" style="text-align: center;">
	    <h2>실종 동물 상세페이지</h2>
	    <h4>동물 분양 리스트가 나오는 페이지입니다</h4>
	</div>
<!-- 동물 리스트 -->
	
    <!-- Page Content -->
    <div class="container-fluid" style="width:48%; display:inline-block; text-align:center; margin-left: 26%;margin-top:2%;">
<!-- 		<div class="col-sm-6" style="float:left;"> -->
		      <!-- Portfolio Item Heading -->
		      <h1 class="my-4" >실종동물 상세페이지</h1>
		       
	<div style="margin-top:10%">
	  <h3>동물정보</h3>	 
	   <p style="text-align:left">2018-10-09 17.06.15 조회수 : 1</p>
  	  <table class="table table-bordered" style="margin-left:13%; margin-top:2%; width:80%; font-size:15px;">

	    <tbody>
	    
	     <tr>
	        <td>신청자/이메일</td>
	        <td>이메일</td>
	      </tr>
	      <tr>
	        <td>신청자/연락처</td>
	        <td>연락처</td>
	      </tr>
	    <tr>
	        <td>묘종/견종</td>
	        <td>먼치킨 고양이</td>
	      </tr>
	      <tr>
	        <td>체중</td>
	        <td>5kg</td>
	      </tr>
	      <tr>
	        <td>나이</td>
	        <td>2개월</td>
	      </tr>
	      <tr>
	        <td>특징</td>
	        <td>왼쪽 발에 점이 있다.</td>
	      </tr>
	     <tr>
	        <td>사례금</td>
	        <td>1000000</td>
	      </tr>
	    </tbody>
	  </table>
	  
	  </div>
	  
	   <div class="carousel-item active">
	   <img src="../img/cat1.jpg" style="margin-bottom:10%; width:60%; ">
	   <img src="../img/cat2.jpg" style="margin-bottom:10%; width:60%; ">
	   <img src="../img/cat3.jpg" style="margin-bottom:10%; width:60%; ">
	   <img src="../img/cat4.jpg" style="margin-bottom:10%; width:60%; ">
	   </div>
		  	
		  
		<p>	
		★실종날짜 : 2017-12-28<br>
		★실종지역:서울 강남구 대치동 미도아파트 2단지 10월2일저녁 10시 40
		분 대치동 미도아파트 세븐일레븐방향으로 뛰어감/대치동에 사는 강아지가 
		아닌데 대치동에서 잃어버림. 
		보호중이시거나 목격하시면 제보 부탁드립니다. 주변에 전단지퍼날라주세요. 감사합니다.</p>
		<hr>
		<!-- 구글맵 -->
		<h3 style="margin-top:20px;">실종위치</h3>
		<div style="margin:5%;">
		<div id="googleMap" style="width:100%;height:400px;"></div>

		<script>
		function myMap() {
		var mapProp= {
		    center:new google.maps.LatLng(51.508742,-0.120850),
		    zoom:5,
		};
		var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
		}
		</script>
		
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
	    </div>
	    <!-- -->
		<hr>
		<h3 style="margin-top:20px;"></h3>
		<div  style="display:inline-block; ">
		<textarea rows="5" cols="118" >
		</textarea><br>
		<div style="float:right; " >
		<button class="button2">댓글</button>
		</div>
		</div>
		<div style="margin-top:10px">
		<hr>

		<div style="text-align:left;">
			<div><span class="glyphicon glyphicon-user"></span>김주현 / 1일전 </div>
			<div>내용:contentcontentcontentcontentcontentcontent</div>
		</div>
		<hr>
		
		</div>
</div>

  </body>
  <div class="jumbotron text-center" style="margin-bottom:0"> 
  <p>footer</p>
 </div>

</html>


