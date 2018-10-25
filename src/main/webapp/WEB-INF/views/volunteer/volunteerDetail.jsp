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

.form-control {
	margin: auto;
	width: 40%;
}
</style>
</head>
<body style="background-color: #EEEEEE; padding: 0px; margin: 0px;">
	<%@include file="../common/sidebar.jsp"%>
	<%@include file="../common/header.jsp"%>
	<div class="jumbotron toplayout" style="text-align: center;">
		<h2>봉사신청 상세페이지</h2>
		<h4>도움의 손길이 필요합니다.</h4>
	</div>
	<!-- 동물 리스트 -->
	<!-- Page Content -->
	<div class="container-fluid" style="width: 48%; display: inline-block; text-align: center; margin-left: 26%; margin-top: 2%;">
		<!-- 		<div class="col-sm-6" style="float:left;"> -->
		<!-- Portfolio Item Heading -->
		<h1 class="my-4">봉사신청 상세페이지</h1>

		<div style="margin-top: 10%">
			<h3>봉사정보</h3>
			<p style="text-align: left">2018-10-09 17.06.15 조회수 : 1</p>
		</div>
		<table class="table table-bordered" style="margin-left: 13%; margin-top: 2%; width: 80%; font-size: 15px;">

			<tbody>
				<tr>
					<td>단체 및 시설이름</td>
					<td>괴산보호소</td>
				</tr>
				<tr>
					<td>담당자 이름</td>
					<td>유금순</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>충청북도 괴산</td>
				</tr>
				<tr>
					<td>봉사종류</td>
					<td>산책봉사</td>
				</tr>

				<tr>
					<td>봉사기간</td>
					<td>2018/10/10~2018/10/12</td>
				</tr>
				<tr>
					<td>담당자 전화번호</td>
					<td>010-1341-1222</td>
				</tr>

			</tbody>
		</table>
		<button onclick="myFunction()">신청하기</button>

		<script>
			function myFunction() {
				if (confirm("해당 기관에 본인정보가 넘어가도 괜찮겠습니까?")) {
					alert("신청이 완료되었습니다!");
				} else {
				}
			}
		</script>
		<div style="margin-left: 85%">

			<div class="modal fade" id="dntModal" tabindex="-1" role="dialog" aria-labelledby="dntModalLabel">
				<div class="modal-dialog" role="document">

					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">봉사종류</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">완료</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<img src="img/vol1.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 60%;">
		<p>괴산 보호소에는 연세 많으신 두 분께서 200여마리의 아이들을 돌보고 계십니다.</p>
		<img src="img/vol2.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 60%;">
		<p>아픈아이들과 노령견, 소형견, 중형견, 대형견, 그리고 친한 아이들과 독립적인 아이들로 나눠 각자의 공간 또는 한 공간에서 최대한 자유롭게 살 수 있도록 돌봐주고자 노력하고 있습니다.</p>
		<img src="img/vol3.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 60%;">
		<p>아픈 아이들과 소형견 아이들을 위한 아지피아, 야외활동 하는 대형견 아이들을 위한 특수견 플러스, 거실에서 활동하는 고양이들과, 소문 듣고 몰려온 동네 길냥이들을 위한 고양이 사료와 캔이 늘 필요합니다.</p>
		<img src="img/vol4.jpg" style="margin-top: 5%; margin-bottom: 5%; width: 60%;">
		<p>봉사를 원하시는 분들은 위의 전화번호로 아부지님과 일정 상의 후 방문해 주시면 되구요. 미용봉사, 목욕봉사, 청소봉사 ~ 그냥 아이들 만나러 오셔도~ 언제든 환영입니다.</p>

		<hr>
		<!-- 구글맵 -->
		<h3 style="margin-top: 20px;">보호센터위치</h3>
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


