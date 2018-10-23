<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<c:if test="${email == null }">
<script>

$(document).ready(function() {
	
	if("${sidebar}" == "side"){
		getList1();
	}else{
		getList();
	}
	$("#searchBtn").click(function() {
		
		getList1();
		//$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	$(".w3-bar-item").click(function() {
		
		$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	
	
});
function getList1() {
	$.ajax({
		type : "POST",
		url : "${root}/sidebar/volunteer.animal",
		dataType : "json",
		data : {"sidebar":"side"},
		success : function(data) {
			makeList(data);
			
		},
		error : function(e) {
			
		}
	});
}

function getList() {
	$.ajax({
		type : "POST",
		url : "${root}/sidebar/volunteer.animal",
		dataType : "json",
		data : {"sidebar":"sidebar"},
		success : function(data) {
			makeList(data);
			
		},
		error : function(e) {
			
		}
	});
}


function makeList(data){
	var view=$(".container-fluid");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";

	for(var i=0;i<members.length ;i++){
		if(i%2==0){

			viewlist += "<div class='container'>";
			viewlist += "<div class='row'>";
			viewlist +=	"<div class='col-md-5 info-big'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p>"+ members[i].subject + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p>봉사종류 :";		
			viewlist +=	 members[i].volunteerkind;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p>";		
			viewlist +=	 members[i].volunteerdate;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p>";		
			viewlist +=	 members[i].centerlocation;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p'>";		
			viewlist +=	 members[i].tel;	
			viewlist +=  "</p>";
			viewlist +=			"</div>";
			viewlist +=			"</div>";
			viewlist +=			"<p></p>";
			viewlist +=	"<div class='col-sm-2'></div>";
			viewlist +=	"<div class='col-md-5'>";
			viewlist +=	"<img class='view-img' src='https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80'>";	
			viewlist +=	"</div>";
			viewlist += "</div>";
			viewlist +="</div>";
			viewlist +="<br>";	
			viewlist +="<hr>";	
			viewlist +="<br>";
		}else{
			viewlist += "<div class='container'>";
			viewlist += "<div class='row'>";
			viewlist +=	"<div class='col-md-5'>";
			viewlist +=	"<img class='view-img' src='https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80'>";	
			viewlist +=	"</div>";
			
			
			viewlist +=	"<div class='col-sm-2'></div>";
			viewlist +=	"<div class='col-md-5 info-big'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p>"+ members[i].subject + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='text-align: center;'>";		
			viewlist +=	 members[i].volunteerkind;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p>";		
			viewlist +=	 members[i].volunteerdate;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p>";		
			viewlist +=	 members[i].centerlocation;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p>";		
			viewlist +=	 members[i].tel;	
			viewlist +=  "</p>";
			viewlist +=			"</div>";
			viewlist +=			"</div>";
			viewlist +=			"<p></p>";
			viewlist += "</div>";
			viewlist +="</div>";
			viewlist +="<br>";	
			viewlist +="<hr>";	
			viewlist +="<br>";
			 
		}
		
      

	}
	
	view.append(viewlist);
}


</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>봉사활동 모집 리스트 페이지</title>
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
<c:if test="${email == null }">
	<%@include file="../common/sidebar.jsp"%>
</c:if>
	<%@include file="../common/header.jsp"%>
	<div class="jumbotron" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>봉사활동 신청내역</h4>
	</div>

<!-- 총 컨테이너 -->	
<div class="container-fluid"  style="margin-top: 150px">
<!-- 봉사 신청 리스트 -->
<!-- 	<!-- 첫번째 섹션 --> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-5 info-big"> -->
<!-- 				<h2>유기견 보호센터<br><strong>봉사자 급구</strong></h2> -->
<!-- 					<p>봉사활동 내용</p> -->
<!-- 					<p><strong>보호소 위치</strong><br>지도 이미지</p> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-2"></div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img class="view-img" src="https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80"> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- <br>	 -->
<!-- <hr>	 -->
<!-- <br> -->
<!-- 	<!-- 두번째 섹션 --> -->
<!-- 	 <div class="container"> -->
<!-- 		 <div class="row"> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img class="view-img" src="https://images.unsplash.com/photo-1471874276752-65e2d717604a?ixlib=rb-0.3.5&s=0b402784efed68390520aaac62175c73&auto=format&fit=crop&w=1350&q=80"> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-2"></div>				 -->
<!-- 			<div class="col-md-5 info-big"> -->
<!-- 				<h2>영덕 동물보호 센터<br><strong>대게 되게 많이 제공</strong></h2> -->
<!-- 				<p>야옹이 먹일 대게 삶으실 분</p> -->
<!-- 				<p><strong>보호소 위치</strong><br> 지도 이미지</p>				 -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- <br>	 -->
<!-- <hr>	 -->
<!-- <br> -->
<!-- 	<!-- 세번째 섹션 --> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-5 info-big"> -->
<!-- 				<h2>서울 노원 동물병원<br><strong>강아지들 똥 치우실 분</strong></h2> -->
<!-- 				<p>봉사활동 내용</p> -->
<!-- 				<p><strong>보호소 위치</strong><br>지도 이미지</p> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-2"></div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img class="view-img" src="https://images.unsplash.com/photo-1518914781460-a3ada465edec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4ef5d25894ba45b504a8335e1faf50ca&auto=format&fit=crop&w=1350&q=80"> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- <br>	 -->
<!-- <hr>	 -->
<!-- <br> -->
<!-- 	<!-- 네번째 섹션 --> -->
<!-- 	 <div class="container"> -->
<!-- 		 <div class="row"> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img class="view-img" src="https://images.unsplash.com/photo-1528460672446-1e4bc2efe804?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ee23eb0a3169907d71704d22edd42b9&auto=format&fit=crop&w=1350&q=80"> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-2"></div>				 -->
<!-- 			<div class="col-md-5 info-big"> -->
<!-- 				<h2>삼척 동물 목욕탕<br><strong>동물들 잘 씻겨주실 분</strong></h2> -->
<!-- 				<p>자기 몸은 안 씻어도 댕댕이들은 꼭 씻겨야 하는 분</p> -->
<!-- 				<p><strong>보호소 위치</strong><br> 지도 이미지</p>				 -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- <br>	 -->
<!-- <hr>	 -->
<!-- <br>	 -->
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