<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<style type="text/css">
body{
	font-family: 'Noto Sans KR', sans-serif;
}
.card-img-top{
	width : 100%;
	height: 300px;
}
.container{
	width : 60%;
}
.container{
	margin-top: 100px;	
}
.jumbotron{
	text-align: center;
}
#first{
	margin-top: 30px;
}
#second{
	margin-top: 30px;
}
</style>
</head>
<body style="background-color:#EEEEEE;  padding:0px; margin:0px;">
<%@include file="../common/sidebar.jsp" %>
<%@include file="../common/header.jsp" %>  
	<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>관심동물보기</h4>
	</div>
<!-- 동물 리스트 -->
    <!-- Page Content -->
    <div class="container">

      <div class="row"  style="padding: 10px">
      <div class="row"  style="padding: 10px">
      	<table>
      		
      	</table>
      </div>
        <div id="first" class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1532762471988-c0d67cc3f771?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d173da6e6d69a0d8a77fbc3707088c9&auto=format&fit=crop&w=1114&q=80"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">귀여운 고양이 키우세욘</a>
              </h4>
              <p class="card-text">	 <b>품종 :</b> [%품종%]	</p>
              <p class="card-text">	 <b>나이 :</b> [%나이%]	</p>
              <p class="card-text">	 <b>체중 :</b> [%체중%]	</p>
              <p class="card-text">	 <b>위치 :</b> [%위치%]	</p>
            </div>
          </div>
        </div>
        <div id="first" class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1526034332220-067b0f400e06?ixlib=rb-0.3.5&s=99cf72b5aadb426990fa27e9f49f471e&auto=format&fit=crop&w=650&q=80"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">연약한 고양이입니다 분양 받으실 분...........</a>
              </h4>
              <p class="card-text">	 <b>품종 :</b> [%품종%]	</p>
              <p class="card-text">	 <b>나이 :</b> [%나이%]	</p>
              <p class="card-text">	 <b>체중 :</b> [%체중%]	</p>
              <p class="card-text">	 <b>위치 :</b> [%위치%]	</p>
            </div>
          </div>
        </div>
        <div id="first" class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=71d59cd22de21da8d2939bc203617983&auto=format&fit=crop&w=660&q=80"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">그윽하게 바라보는 그윽이 데려가세요</a>
              </h4>
              <p class="card-text">	 <b>품종 :</b> [%품종%]	</p>
              <p class="card-text">	 <b>나이 :</b> [%나이%]	</p>
              <p class="card-text">	 <b>체중 :</b> [%체중%]	</p>
              <p class="card-text">	 <b>위치 :</b> [%위치%]	</p>
            </div>
          </div>
        </div>
        <div id="second" class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1516366434321-728a48e6b7bf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=827cceba070bb987873c6a389369ba3d&auto=format&fit=crop&w=634&q=80"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">핔미핔미</a>
              </h4>
              <p class="card-text">	 <b>품종 :</b> [%품종%]	</p>
              <p class="card-text">	 <b>나이 :</b> [%나이%]	</p>
              <p class="card-text">	 <b>체중 :</b> [%체중%]	</p>
              <p class="card-text">	 <b>위치 :</b> [%위치%]	</p>
            </div>
          </div>
        </div>
        <div id="second" class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1518717758536-85ae29035b6d?ixlib=rb-0.3.5&s=98bb3e4a0d0beb27d19c8ba645c7421e&auto=format&fit=crop&w=1050&q=80"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">찜</a>
              </h4>
              <p class="card-text">	 <b>품종 :</b> [%품종%]	</p>
              <p class="card-text">	 <b>나이 :</b> [%나이%]	</p>
              <p class="card-text">	 <b>체중 :</b> [%체중%]	</p>
              <p class="card-text">	 <b>위치 :</b> [%위치%]	</p>
            </div>
          </div>
        </div>
        <div id="second" class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://images.unsplash.com/photo-1513977055326-8ae6272d90a7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=909d17b7c2b272b6a20c89185c3ea608&auto=format&fit=crop&w=1050&q=80"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">날 선택해라 집사</a>
              </h4>
              <p class="card-text">	 <b>품종 :</b> [%품종%]	</p>
              <p class="card-text">	 <b>나이 :</b> [%나이%]	</p>
              <p class="card-text">	 <b>체중 :</b> [%체중%]	</p>
              <p class="card-text">	 <b>위치 :</b> [%위치%]	</p>
            </div>
          </div>
        </div>
      </div>
      	<div class=col-sm-2" style="margin-right: 30px;float: right"></div> 
    </div>
	
	 <!-- /.container -->
    <div class="container" style="margin-top: 150px">
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
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>