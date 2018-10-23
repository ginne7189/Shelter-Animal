<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.sidebar {
	position: fixed;
}

.card-img-top {
	width: 100%;
	height: 300px;
}

.container-fluid {
	width: 88%;
}

h1:after {
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
	float: right;
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
	float: right;
}

.col-md-4 {
	margin-bottom: 10%;
	width: 150%;
}

.thumb {
	display: block;
	width: 100%;
	margin: 0;
}

.featured-article {
	width: 482px;
	height: 400px;
	position: relative;
	margin-bottom: 1em;
}

.featured-article .block-title {
	/* Position & Box Model */
	position: absolute;
	bottom: 0;
	left: 0;
	z-index: 1;
	/* background */
	background: rgba(0, 0, 0, 0.7);
	/* Width/Height */
	padding: .5em;
	width: 100%;
	/* Text color */
	color: #fff;
}

.featured-article .block-title h2 {
	margin: 0;
}

.main-list {
	padding-left: .5em;
	margin-left: 13%;
}

.main-list .media {
	padding-bottom: 0.2em;
	border-bottom: 1px solid #e8e8e8;
}
</style>
</head>
<body style="background-color: #EEEEEE;">
	<%@include file="../common/sidebar.jsp"%>
	<%@include file="../common/header.jsp"%>
	<div class="jumbotron" style="text-align: center;">
		<h2>후원 상세 페이지</h2>
		<h4>후원해주세용</h4>
	</div>
	<!-- 동물 리스트 -->
	<div class="container-fluid" style="width: 48%; display: inline-block; margin-left: 26%; margin-top: 2%;">
		<!-- 		<div class="col-sm-6" style="float:left;"> -->
		<!-- Portfolio Item Heading -->
		<div style="margin-top: 2%; text-align: center;">
			<h1>후원 상세페이지</h1>
		</div>
		<div style="margin-top: 10%; margin-bottom: 2%; text-align: center;">

			<h3>후원정보</h3>
		</div>
		<div class="row">
			<div class="col-md-5 col-lg-5">
				<!-- artigo em destaque -->
				<div class="featured-article">
					<img src="img/do0.jpg" style="width: 480px; height: 400px;" alt="" class="thumb">
				</div>
				<!-- /.featured-article -->
			</div>
			<div class="col-md-7 col-lg-7">
				<ul class="media-list main-list">
					<li class="media">
						<a class="pull-left" href="#"> </a>
						<div class="media-body">
							<p>보호센터</p>
							<h4 class="media-heading">희망이네 보호소</h4>

						</div>
					</li>
					<li class="media">
						<a class="pull-left" href="#"> </a>
						<div class="media-body">
							<p>목표금액</p>
							<h4 class="media-heading">30000000</h4>

						</div>
					</li>
					<li class="media">
						<a class="pull-left" href="#"> </a>
						<div class="media-body">
							<p>모인금액</p>
							<h4 class="media-heading">200000</h4>

						</div>
					</li>
					<li class="media">
						<a class="pull-left" href="#"> </a>
						<div class="media-body">
							<p>후원자</p>
							<h4 class="media-heading">10명</h4>

						</div>
					</li>
					<li class="media">
						<a class="pull-left" href="#"> </a>
						<div class="media-body">
							<p>남은기간</p>
							<h4 class="media-heading">2일</h4>

						</div>
					</li>
				</ul>
			</div>
			<div style="margin-left: 85%">
				<button type="button" class="button button1" data-toggle="modal" data-target="#dntModal">후원하기</button>

				<div class="modal fade" id="dntModal" tabindex="-1" role="dialog" aria-labelledby="dntModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">후원 금액 입력</h4>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>
									금액 :
									<input type="text" class="donation">
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary">기부하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center; margin-top: 2%; margin-bottom: 2%">
			<img src="img/do1.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 80%; height: 60%">
			<p>보살핌을 받지 못해 반야생이된 희망이네 아이들에게도 관심과 사랑이 필요합니다.</p>
			<img src="img/do2.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 80%; height: 60%">
			<p>구획된 견사를 지어 놓았으나 개들을 마구잡이로 풀어 놓아 혼란을 야기했고 그로 인해 점차 야생화되어 갔습니다.</p>
			<img src="img/do3.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 80%; height: 60%"> <img src="img/do4.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 80%; height: 60%">
			<p>비록 평생 보호소에서 살아가는 한이 있더라도 그래도 소중한 생명이라 보호받아야 한다고 생각하며 품어주실 여러분의 사랑을 기다리고 있습니다.</p>
		</div>
		<hr>
		<!-- 구글맵 -->
		<div style="margin-top: 20px; text-align: center;">
			<h3>보호센터위치</h3>
		</div>
		<div style="margin: 5%;">
			<div id="googleMap" style="width: 100%; height: 400px;"></div>

			<script>
				function myMap() {
					var mapProp = {
						center : new google.maps.LatLng(51.508742, -0.120850),
						zoom : 5,
					};
					var map = new google.maps.Map(document
							.getElementById("googleMap"), mapProp);
				}
			</script>

			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
		</div>
		<!-- -->
		<hr>
		<h3 style="margin-top: 20px;"></h3>
		<div style="display: inline-block;">
			<p style="text-align: left">조회수:1</p>
			<textarea rows="5" cols="118">
		</textarea>
			<br>
			<div style="float: right;">
				<button class="button2">댓글</button>
			</div>
		</div>
		<div style="margin-top: 10px">
			<hr>

			<div style="text-align: left;">
				<div>김주현 / 1일전</div>
				<div>내용:contentcontentcontentcontentcontentcontent</div>
			</div>
			<hr>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
<div class="jumbotron text-center" style="margin-bottom: 0">
	<p>footer</p>
</div>



</html>


