<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
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
<%@include file="../common/sidebar.jsp" %>
<%@include file="../common/header.jsp" %>  
<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>후원내역</h4>
	</div>
<!-- 총 컨테이너 -->	
<div class="container-fluid"  style="margin-top: 150px">	
<!-- 봉사 신청 리스트 -->
	<!-- 첫번째 섹션 -->
	<div class="container">
		<div class="row">
			<div class="col-md-5 info-big">
				<h2>유기견 보호센터</h2>
					<div class="dntContent">
					<p><b>목표 후원 금액</b> : [%목표 금액%]</p>
					<hr>
					<p style="text-align: center;">
						  [%후원내용%]
					</p>
					<hr>
					</div>
					<p><strong>현재 모금액</strong></p>
					<div class="progress">
 						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:70%">[%현재 모금액%]</div>
					</div>
			</div>
			<div class="col-sm-2"></div>
			<div class="col-md-5">
				<img class="view-img" src="https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80">
			</div>
		</div>
	</div>
<br>	
<hr>	
<br>
	<!-- 두번째 섹션 -->
	 <div class="container">
		 <div class="row">
			<div class="col-md-5">
				<img class="view-img" src="https://images.unsplash.com/photo-1471874276752-65e2d717604a?ixlib=rb-0.3.5&s=0b402784efed68390520aaac62175c73&auto=format&fit=crop&w=1350&q=80">
			</div>
			<div class="col-sm-2"></div>				
			<div class="col-md-5 info-big">
				<h2>영덕 동물보호 센터</h2>
					<div class="dntContent">
					<p><b>목표 후원 금액</b> : [%목표 금액%]</p>
					<hr>
					<p style="text-align: center;">
						  영덕의 자랑 대게를 살 수 있는 돈을 기부해주세요! 여러분이 기부해주신 돈으로 맛있는 대게찜을 해 먹을 수 있습니다 모든 대게는 보호소 사람들이 배부르게 먹을 수 있도록 34년 전통 영덕전통시장 원조 횟집에서 조리됩니다
					</p>
					<hr>
					</div>
					<p><strong>현재 모금액</strong></p>
					<div class="progress">
 						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:10%;">[%현재 모금액%]</div>
					</div>		
			</div>
		</div>
	</div>
<br>	
<hr>	
<br>
	<!-- 세번째 섹션 -->
	<div class="container">
		<div class="row">
			<div class="col-md-5 info-big">
				<h2>서울 노원 동물병원</h2>
					<div class="dntContent">
					<p><b>목표 후원 금액</b> : [%목표 금액%]</p>
					<hr>
					<p style="text-align: center;">
						  강아지 똥 닦아 줄 휴지 구입하는데 사용합니다! 강아지 똥귀저기 구입하는데 사용합니다! 강아지 똥냄새 없앨 향수 사는데 사용합니다!
					</p>
					<hr>
					</div>
					<p><strong>현재 모금액</strong></p>
					<div class="progress">
 						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:50%">[%현재 모금액%]</div>
					</div>		
			</div>
			<div class="col-sm-2"></div>
			<div class="col-md-5">
				<img class="view-img" src="https://images.unsplash.com/photo-1518914781460-a3ada465edec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4ef5d25894ba45b504a8335e1faf50ca&auto=format&fit=crop&w=1350&q=80">
			</div>
		</div>
	</div>
<br>	
<hr>	
<br>
	<!-- 네번째 섹션 -->
	 <div class="container">
		 <div class="row">
			<div class="col-md-5">
				<img class="view-img" src="https://images.unsplash.com/photo-1528460672446-1e4bc2efe804?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ee23eb0a3169907d71704d22edd42b9&auto=format&fit=crop&w=1350&q=80">
			</div>
			<div class="col-sm-2"></div>				
			<div class="col-md-5 info-big">
				<h2>삼척 동물 목욕탕</h2>
					<div class="dntContent">
					<p><b>목표 후원 금액</b> : [%목표 금액%]</p>
					<hr>
					<p style="text-align: center;">
						  온수로 씻기고 싶어요... 보일러를 마련해야 하는데 돈이 없어요... 여러분의 따뜻한 손길이 보일러를 만듭니다...
					</p>
					<hr>
					</div>
					<p><strong>현재 모금액</strong></p>
					<div class="progress">
 						<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:100%">[%현재 모금액%]</div>
					</div>				
			</div>
		</div>
	</div>
<br>	
<hr>	
<br>	
</div>
<!-- 총 컨테이너 끝 -->	

	<!-- ㅍㅔ이징 처리 -->
    <div class="container" style="margin-top: 150px">
		<ul class="pagination justify-content-center">
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