<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>실종동물신청페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/regStyle.css">

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/reg.js"></script>
<style>
.button1 {
	background-color: white;
	color: black;
	border: 2px solid #555555;
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

h1:after {
	content: "";
	display: block;
	width: 60px;
	border-bottom: 2px solid #bcbcbc;
	margin: auto;
}
</style>
</head>
<body>
	<div class="container">
		<form>
			<div class="row">
				<div style="text-align: center;">
					<h1>실종동물신청</h1>
				</div>

				<div class="col-half">
					<h4>신청자 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>동물이름 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>신청자 이메일 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>신청자 연락처 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>묘종/견종 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>체중 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>나이 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>특징 :</h4>
					<input type="text" placeholder="" />
				</div>
				<div class="col-half">
					<h4>사례금 :</h4>
					<input type="text" placeholder="" />
				</div>
			</div>
			<div class="row">
				<div class="col-half">
					<h4>잃어버린 날짜 :</h4>
					<div class="input-group">
						<div class="col-third">
							<input type="text" placeholder="YYYY" />
						</div>
						<div class="col-third">
							<input type="text" placeholder="MM" />
						</div>
						<div class="col-third">
							<input type="text" placeholder="DD" />
						</div>
					</div>
				</div>
				<div class="col-half">
					<h4>성별</h4>
					<div class="input-group">
						<input type="radio" name="gender" value="male" id="gender-male" />
						<label for="gender-male">남아</label>
						<input type="radio" name="gender" value="female" id="gender-female" />
						<label for="gender-female">여아</label>
					</div>
				</div>
			</div>
			<div class="row">
				<h4>실종위치</h4>
				<div class="col-half" style="width: 30%">
					<input type="button" value="주소찾기" />
				</div>
				<div class="col-half" style="width: 70%">
					<input type="text" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<h4>사진등록</h4>
						<div class="input-group">
							<span class="input-group-btn">
								<span class="btn btn-default btn-file">
									<input type="file" id="imgInp">
								</span>
							</span>
						</div>
						<img id='img-upload' />
					</div>
				</div>
				<button class="button button1">신청하기</button>
			</div>
		</form>
	</div>
</body>
</html>
