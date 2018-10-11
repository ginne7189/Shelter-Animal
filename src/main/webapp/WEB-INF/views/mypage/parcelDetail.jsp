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
<body style="background-color:#EEEEEE;  padding:0px; margin:0px;">
<%@include file="../common/sidebar.jsp" %>
<%@include file="../common/header.jsp" %> 
	<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>개인 분양 상세페이지</h2>
	    <h4>따듯한 사랑과 보살핌이 필요한 아이입니다.</h4>
	</div>
<!-- 동물 리스트 -->
    <!-- Page Content -->
    <div class="container-fluid" style="width:48%; display:inline-block; text-align:center; margin-left: 26%;margin-top:2%; background-color=yellow;">
<!-- 		<div class="col-sm-6" style="float:left;"> -->
		      <!-- Portfolio Item Heading -->
		      <h1 class="my-4" >개인분양 상세페이지</h1>
		       
	<div style="margin-top:10%">
	  <h3>동물정보</h3>	 
	   <p style="text-align:left">2018-10-09 17.06.15 조회수 : 1</p>
  	  <table class="table table-bordered" style="margin-left:13%; margin-top:2%; width:80%; font-size:15px;">

	    <tbody>
	     <tr>
	        <td>센터이름</td>
	        <td>영덕동물보호센터</td>
	      </tr>
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
	        <td>웰시코기</td>
	      </tr>
	       <tr>
	        <td>성별</td>
	        <td>여아</td>
	      </tr>
	      <tr>
	        <td>체중</td>
	        <td>1kg</td>
	      </tr>
	      <tr>
	        <td>나이</td>
	        <td>2개월</td>
	      </tr>
	      <tr>
	        <td>특징</td>
	        <td>원/구충 완료</td>
	      </tr>
	    
	    </tbody>
	  </table>
	  </div>
	   <div class="carousel-item active">
	   <div style="margin-left:85%" >
		<button class="button button1">분양하기</button></div>
		</div>
	   <img src="img/p1.jpg" style="margin-top:5%; margin-bottom:5%; width:60%; ">
	   <p>
	   오늘도 많은 아이들이
	   각자의 안타까운 사연을 가지고 찾아오게 되었습니다.
	   영덕동물보호센터에 새로 들어오게 된 아이입니다.
	   
	   </p>
	   <img src="img/p2.jpg" style="margin-top:5%; margin-bottom:5%; width:60%; ">
	  <p>
	  파양동물 입양시 소정의 책임비가 발생되니 참고부탁드립니다.
	 아이들의 평생을 결정하는 선택.신중히 생각해 보신 후에 연락주세요.
	  </p>
	   <img src="img/p3.jpg" style="margin-top:5%; margin-bottom:5%; width:60%; ">
	   <p>
	   영덕동물보호센터에서 보호관리 중인 보호동물 아이들은
	   유동적인 부분이 많아 전화.상담을 통해 확인이 어려운 점 양해드리며
	   매장 방문 하시면 더 많은 아이들을 만날 수 있습니다.
	   </p>
	   <img src="img/p4.jpg" style="margin-top:5%; margin-bottom:5%; width:60%; ">
		  	
		<hr>
		<!-- 구글맵 -->
		<h3 style="margin-top:20px;">분양센터위치</h3>
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
			<div>김주현 / 1일전 </div>
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


