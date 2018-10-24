<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- w3CSS -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- 구글폰트, 구글 아이콘 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.mySlides {display:none}
</style>
</head>
<body class="w3-content w3-border-left w3-border-right">
<!-- 분양글 디브 -->
<div class="w3-main w3-white" style="padding:80px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:80px"></div>

  <!-- Slideshow Header -->
  <div class="w3-container" id="apartment">
    <h2 class="w3-text-green">후원 상세 페이지</h2>
<!-- 사진 슬라이드 영역 -->    
    <div class="w3-display-container mySlides">
    <img src="https://images.unsplash.com/photo-1518815068914-038920b6f0c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=38f02f628dfcc539764a05b5bc42a419&auto=format&fit=crop&w=1012&q=80" style="width:100%;height:500px;margin-bottom:-6px">
    </div>
    <div class="w3-display-container mySlides">
    <img src="https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6402d48f35584fbf36a874be1635374b&auto=format&fit=crop&w=1050&q=80" style="width:100%;height:500px;margin-bottom:-6px">
    </div>
    <div class="w3-display-container mySlides">
    <img src="https://images.unsplash.com/photo-1507146426996-ef05306b995a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1cf9c13e09f5f2ec5139b6475751b310&auto=format&fit=crop&w=1050&q=80" style="width:100%;height:500px;margin-bottom:-6px">
    </div>
    <div class="w3-display-container mySlides">
    <img src="https://images.unsplash.com/photo-1504595403659-9088ce801e29?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d812e1079e635c6fb59ded315f72316f&auto=format&fit=crop&w=634&q=80" style="width:100%;height:500px;margin-bottom:-6px">
    </div>
  </div>
   
  <div class="w3-row-padding w3-section">
    <div class="w3-col s3">
      <img class="petpic w3-opacity w3-hover-opacity-off" src="https://images.unsplash.com/photo-1518815068914-038920b6f0c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=38f02f628dfcc539764a05b5bc42a419&auto=format&fit=crop&w=1012&q=80" style="width:100%;height:150px;cursor:pointer" onclick="currentDiv(1)">
    </div>
    <div class="w3-col s3">
      <img class="petpic w3-opacity w3-hover-opacity-off" src="https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6402d48f35584fbf36a874be1635374b&auto=format&fit=crop&w=1050&q=80" style="width:100%;height:150px;cursor:pointer" onclick="currentDiv(2)">
    </div>
    <div class="w3-col s3">
      <img class="petpic w3-opacity w3-hover-opacity-off" src="https://images.unsplash.com/photo-1507146426996-ef05306b995a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1cf9c13e09f5f2ec5139b6475751b310&auto=format&fit=crop&w=1050&q=80" style="width:100%;height:150px;cursor:pointer" onclick="currentDiv(3)">
    </div>
    <div class="w3-col s3">
      <img class="petpic w3-opacity w3-hover-opacity-off" src="https://images.unsplash.com/photo-1504595403659-9088ce801e29?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d812e1079e635c6fb59ded315f72316f&auto=format&fit=crop&w=634&q=80" style="width:100%;height:150px;cursor:pointer" onclick="currentDiv(4)">
    </div>
  </div>

<!-- 기본정보란 -->
  <div class="w3-container">
    <h4><strong><i class="material-icons">pets</i> 기본 정보</strong></h4>
    <div class="w3-row w3-large">
      <div class="w3-col s6">
        <p><i class="fa fa-check-square-o"></i> 품종 : ${pboardDto.kind }</p>
        <p><i class="fa fa-check-square-o"></i> 나이 : ${pboardDto.age }</p>
      </div>
      <div class="w3-col s6">
        <p><i class="fa fa-check-square-o"></i> 성별 : ${pboardDto.gender }</p>
        <p><i class="fa fa-check-square-o"></i> 위치 : ${pboardDto.location }</p>
      </div>
    </div>
    <hr>
<!-- 글내용 시작 -->    
    <h4><strong>${pboardDto.subject }</strong></h4>
    <br>
    <p>${pboardDto.content }</p>
    <hr>
    <br>
    
<!-- 댓글창 시작 -->    
    <h4><strong>댓글창</strong></h4>
    <p>댓글목록</p>
    <hr>
    <p>댓글창 삽입</p>
	 <p><button class="w3-button w3-green w3-third" onclick="document.getElementById('subscribe').style.display='block'">댓글등록</button></p>
  </div>
  <hr>
<!-- 댓글창 끝 -->

  
  
  <!-- 분양자 연락처 -->
  <div class="w3-container" id="contact">
    <h2>분양자 연락처</h2>
    <i class="fa fa-map-marker" style="width:30px"></i>분양 위치<br>
    <i class="fa fa-phone" style="width:30px"></i>분양자 전화번호<br>
    <i class="fa fa-envelope" style="width:30px"> </i>분양자 이메일 주소<br>
  </div>

<!-- End page content -->
</div>

<script>
// Slideshow Apartment Images
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("petpic");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>

</body>
</html>