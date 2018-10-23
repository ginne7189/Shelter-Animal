<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/portfolio-item.css" rel="stylesheet">
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

h2:after {
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
<body>

	<%@include file="../common/adminsidebar.jsp"%>
	<%@include file="../common/header.jsp"%>
	<!-- Page Content -->
	<div class="container-fluid" style="width: 48%; display: inline-block; text-align: center; margin-left: 26%; margin-top: 2%;">
		<!-- 		<div class="col-sm-6" style="float:left;"> -->
		<!-- Portfolio Item Heading -->

		<div class="container">

			<div style="margin-top: 5%">
				<h2>신고 게시판 관리</h2>
				<div style="text-align: right"><%@include file="../common/searchbar.jsp"%></div>
				<table class="table">
					<thead>
						<tr>
							<th><input type="checkbox"></th>
							<th>글번호</th>
							<th>분류</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>1</td>
							<td>공지사항</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>김보민</td>
							<td>2017-08-10</td>
							<td>12</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>2</td>
							<td>공지사항</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>유태홍</td>
							<td>2017-08-10</td>
							<td>4</td>
						</tr>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>3</td>
							<td>자유게시판</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>김주현</td>
							<td>2017-08-10</td>
							<td>5
							<td>
						</tr>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>3</td>
							<td>자유게시판</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>김주현</td>
							<td>2017-08-10</td>
							<td>5
							<td>
						</tr>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>3</td>
							<td>자유게시판</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>김주현</td>
							<td>2017-08-10</td>
							<td>5
							<td>
						</tr>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>3</td>
							<td>자유게시판</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>김주현</td>
							<td>2017-08-10</td>
							<td>5
							<td>
						</tr>
						<tr>
							<td>
								<input type="checkbox">
							</td>
							<td>3</td>
							<td>자유게시판</td>
							<td>나는빡빡이다나는빡빡이다나는빡빡이다</td>
							<td>김주현</td>
							<td>2017-08-10</td>
							<td>5
							<td>
						</tr>
					</tbody>
				</table>

				<div style="margin-left: 80%">
					<button class="button2">게시글삭제</button>
				</div>
				<!-- /.container -->
				<!-- ㅍㅔ이징 처리 -->
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
		</div>
	</div>
</body>
<div class="jumbotron text-center" style="margin-bottom: 0">
	<p>footer</p>
</div>

</html>


