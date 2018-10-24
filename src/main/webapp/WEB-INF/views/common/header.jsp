<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>

<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>

$(document).ready(function() {
		alert("${sidebar}");
	if("${sidebar}" == "donation"){
		getList(1);
	}else if("${sidebar}" == "attention"){
		getList(1);
	}else if("${sidebar}" == "articlelist"){
		getList(1);
	}else if("${sidebar}" == "parcel"){
		getList(1);
	}else if("${sidebar}" == "volunteer"){
		getList(1);
	}else if("${sidebar}" == "otherdonation"){
		getList1(1);
	}else if("${sidebar}" == "otherattention"){
		getList1(1);
	}else if("${sidebar}" == "otherarticlelist"){
		getList1(1);
	}else if("${sidebar}" == "otherparcel"){
		getList1(1);
	}else if("${sidebar}" == "othervolunteer"){
		getList1(1);
	}else if("${sidebar}" == "othermissing"){
		getList1(1);
	}else{
		getList1(1);
	}
	$("#searchBtn").click(function() {
		
		getList1(1);
		//$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	$(".w3-bar-item").click(function() {
		$(".acode").attr("value",$(this).attr("value"));
		$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	
	
	$(".dropdown-item").click(function() {
		$(".acode").attr("value",$(this).attr("value"));
		if($(this).attr("value")=="otherarticlelist"){
			
			$(".mvform").attr("action","${root}/sidebar/articlelist.animal").submit();
		}else if($(this).attr("value")=="otherattention"){
			
			$(".mvform").attr("action","${root}/sidebar/attention.animal").submit();
		}else if($(this).attr("value")=="otherdonation"){
			
			$(".mvform").attr("action","${root}/sidebar/donation.animal").submit();
		}else if($(this).attr("value")=="otherparcel"){
			
			$(".mvform").attr("action","${root}/sidebar/parcel.animal").submit();
		}else if($(this).attr("value")=="othervolunteer"){
			
			$(".mvform").attr("action","${root}/sidebar/volunteer.animal").submit();
		}else if($(this).attr("value")=="othermissing"){
			
			$(".mvform").attr("action","${root}/sidebar/missing.animal").submit();
		}
		
		
		
		
	});
	
	
	$(".page-item").click(function() {
		moveBoard('${bcode}', $(this).attr("mv-page-no"), '${key}', '${word}', 'list');
		getList($(this).attr("mv-page-no"));
	});

	$(".detail").click(function() {
		alert($(this).attr("article-seq"));
		getList($(this).attr("mv-page-no"));
	});
	
	$(".page-item").click(function() {
		if("${sidebar}" == "side"){
			getList1(1);
		}else{
			getList(1);
		}
		
	});
});

function getList(pg) {
	$.ajax({
		type : "POST",
		url : "${root}/sidebar/attention.animal",
		dataType : "json",
		data : {"sidebar": "sidebar","pg":pg},
		success : function(data) {
			if("${sidebar}" == "donation"){
				makedonationList(data);
			}else if("${sidebar}" == "attention"){
				makeattentionList(data);
			}else if("${sidebar}" == "articlelist"){
				makearticleList(data);
			}else if("${sidebar}" == "parcel"){
				makeparcelList(data);
			}else if("${sidebar}" == "volunteer"){
				makevolunteerList(data);
			}
			
			
		},
		error : function(e) {
			
		}
	});
}
function getList1(pg) {

	$.ajax({
		type : "POST",
		url : "${root}/sidebar/attention.animal",
		dataType : "json",
		data : {"sidebar":"side","pg":pg},
		success : function(data) {
			if("${sidebar}" == "donation"){
				makedonationList(data);
			}else if("${sidebar}" == "attention"){
				makeattentionList(data);
			}else if("${sidebar}" == "articlelist"){
				makearticleList(data);
			}else if("${sidebar}" == "parcel"){
				makeparcelList(data);
			}else if("${sidebar}" == "volunteer"){
				makevolunteerList(data);
			}
		},
		error : function(e) {
			
		}
	});
}


function makedonationList(data){
	var view=$(".container-fluid");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";

	for(var i=0;i<members.length ;i++){
		if(i%2==0){

			viewlist += "<div class='container' article-seq='"+members[i].seq+ "'>";
			viewlist += "<div class='row'>";
			viewlist +=	"<div class='col-md-5 info-big'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p><b> 목표 후원 금액 </b> : "+ members[i].cdonationfee + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='text-align: center;'>";		
			viewlist +=	 members[i].cdonationpurpose;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=			"</div>";
			viewlist +=			"<p><strong>현재 모금액</strong></p>";
			viewlist +=			"<div class='progress'>";
			viewlist +=			"<div class='progress-bar progress-bar-striped progress-bar-animated' style='width:"+members[i].gatheringfee/members[i].cdonationfee*100 +"%'>"+members[i].gatheringfee +"</div>";	
			viewlist +=			"</div>";
			viewlist +=	"</div>";
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
			viewlist += "<div class='col-sm-2'></div>";
			viewlist +=	"<div class='col-md-5 info-big'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p><b> 목표 후원 금액 </b> : "+ members[i].cdonationfee + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='text-align: center;'>";		
			viewlist +=	 members[i].cdonationpurpose;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=			"</div>";
			viewlist +=			"<p><strong>현재 모금액</strong></p>";
			viewlist +=			"<div class='progress'>";
			viewlist +=			"<div class='progress-bar progress-bar-striped progress-bar-animated' style='width:"+members[i].gatheringfee/members[i].cdonationfee*100 +"%'>"+members[i].gatheringfee +"</div>";	
			viewlist +=			"</div>";
			viewlist +=	"</div>";
			viewlist +=	"</div>";			
			viewlist += "</div>";
			viewlist +="</div>";
			viewlist +="<br>";	
			viewlist +="<hr>";	
			viewlist +="<br>";
			 
		}
		
      

	}
	
	view.append(viewlist);
}

function makemissingList(data){
	$("#main").empty();
	var view=$("#main");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";
	
	for(var i=0;i<members.length ;i++){
		viewlist +="<table>";	
		viewlist +="</table>";
		viewlist +="</div>";
		viewlist += "<div class='col-lg-4 col-sm-6' style='padding: 10px; padding-left: 0px;' >";
		viewlist += "<div class='card h-100'>";
		viewlist +=  "<a href='#'><img class='card-img-top' src='https://images.unsplash.com/photo-1532762471988-c0d67cc3f771?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d173da6e6d69a0d8a77fbc3707088c9&auto=format&fit=crop&w=1114&q=80'></a>";
		viewlist +=  "<div class='card-body'>";
		viewlist +=   "<h4 class='card-title'>"; 
		viewlist +=      "<a href='#'>"+members[i].subject+"</a>";
		viewlist +=   "</h4>";
		viewlist +=    "<p class='card-text'>	 <b>품종 :</b> "+members[i].kind+"</p>";
		viewlist +=    "<p class='card-text'>	 <b>나이 :</b> "+members[i].age+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>체중 :</b> "+members[i].weight+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>위치 :</b> "+members[i].location+"	</p>";
		viewlist +=  "</div>";
		viewlist += "</div>";
      

	}
	
	view.append(viewlist);
}
function makeattentionList(data){
	$("#main").empty();
	var view=$("#main");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";
	
	for(var i=0;i<members.length ;i++){
		viewlist +="<table>";	
		viewlist +="</table>";
		viewlist +="</div>";
		viewlist += "<div class='col-lg-4 col-sm-6' style='padding: 10px; padding-left: 0px;' >";
		viewlist += "<div class='card h-100'>";
		viewlist +=  "<a href='#'><img class='card-img-top' src='https://images.unsplash.com/photo-1532762471988-c0d67cc3f771?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d173da6e6d69a0d8a77fbc3707088c9&auto=format&fit=crop&w=1114&q=80'></a>";
		viewlist +=  "<div class='card-body'>";
		viewlist +=   "<h4 class='card-title'>"; 
		viewlist +=      "<a href='#'>"+members[i].subject+"</a>";
		viewlist +=   "</h4>";
		viewlist +=    "<p class='card-text'>	 <b>품종 :</b> "+members[i].kind+"</p>";
		viewlist +=    "<p class='card-text'>	 <b>나이 :</b> "+members[i].age+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>체중 :</b> "+members[i].weight+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>위치 :</b> "+members[i].location+"	</p>";
		viewlist +=  "</div>";
		viewlist += "</div>";
      

	}
	
	view.append(viewlist);
}
function makearticleList(data) {
	$("#listview").empty();
	var view=$("#listview");
	var members=data.members;//{"members" : [{}, {}, {} ...]}
	for(var i=0;i<members.length;i++) {
		var tr = $("<tr></tr>").						
						append($("<td></td>").text(members[i].email)).
					   append($("<td></td>").text(members[i].seq)).
					   append($("<td></td>").text(members[i].subject)).
					   append($("<td></td>").text(members[i].boardtype)).
					   append($("<td></td>").text(members[i].joindate)).
					   append($("<td></td>").text(members[i].hit));
		
		
		$("#listview").append(tr);
	}
}
function makeparcelList(data){
	var view=$("#main");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";
// 	$("#main").empty();
// 	var members = data.members;
	for(var i=0;i<members.length ;i++){
		viewlist +="<table>";	
		viewlist +="</table>";
		viewlist +="</div>";
		viewlist += "<div class='col-lg-4 col-sm-6' style='padding: 10px; padding-left: 0px;' >";
		viewlist += "<div class='card h-100'>";
		viewlist +=  "<a href='#'><img class='card-img-top' src='https://images.unsplash.com/photo-1532762471988-c0d67cc3f771?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d173da6e6d69a0d8a77fbc3707088c9&auto=format&fit=crop&w=1114&q=80'></a>";
		viewlist +=  "<div class='card-body'>";
		viewlist +=   "<h4 class='card-title'>"; 
		viewlist +=      "<a href='#'>"+members[i].subject+"</a>";
		viewlist +=   "</h4>";
		viewlist +=    "<p class='card-text'>	 <b>품종 :</b> "+members[i].kind+"</p>";
		viewlist +=    "<p class='card-text'>	 <b>나이 :</b> "+members[i].age+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>체중 :</b> "+members[i].weight+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>위치 :</b> "+members[i].location+"	</p>";
		viewlist +=  "</div>";
		viewlist += "</div>";
      

	}
	
	view.append(viewlist);
}
function makevolunteerList(data){
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
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<style>
ul.nav li.dropdown:hover > div.dropdown-menu{display:block;margin:0;}
</style> 
</head>
<body>
<form class="mvform" >
<input type="hidden" class="acode" name="acode" value="sidebar" >
<!-- <input type="hidden" class="acode" name="acode" value="aa" > -->
</form>
<!-- header1 -->
<nav class="navbar navbar-expand-sm bg-yellow navbar-yellow" style="height:44px;">
    <ul class="navbar-nav" style=" position: absolute;right: 3%;">
    <c:if test="${empty sessionScope.user}" > 
      <li class="nav-item">
        <a class="nav-link" href="${root}/login.animal">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${root}/register.animal">회원가입</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${root}/pwdFind.animal">비밀번호 찾기</a>
      </li>
      </c:if>
      <c:if test="${not empty sessionScope.user }"> 
      <li class="nav-item">
      		<a class="nav-link" href="${root}/mypage.animal">${sessionScope.user }님</a> 
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${root}/logout.animal">로그아웃</a>
      </li>
</c:if> 
    </ul>
</nav>
<!-- img : logo -->
<div class="imgcontainer" align="center"style="margin-bottom: 10px"> 
<a href="index.jsp"><img src="https://images.unsplash.com/photo-1520038410233-7141be7e6f97?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9af3b2bb5fbb37be767fbe40967c14b1&auto=format&fit=crop&w=1353&q=80" width="200px"height="100px"></a>
</div>
<!--  -->
<ul class="nav nav-tabs justify-content-center">
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">봉사활동</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/volunteerDetail.animal">봉사소개</a>
      <a class="dropdown-item" value="othervolunteer" >봉사목록</a>
    </div>
  </li> 
  
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">유기동물</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/abandonedNotice.animal">유기동물소개</a>
      <a class="dropdown-item" href="${root}/abandoned.animal">유기동물목록</a>
    </div>
  </li> 
  
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">실종동물</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/missingDetail.animal">실종동물소개</a>
      <a class="dropdown-item" value="othermissing">실종동물목록</a>
    </div>
  </li> 
  
  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">분양받기</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">분양소개</a>
      <a class="dropdown-item" href="${root }/parcel/pwrite.animal"">개인분양등록</a>
      <a class="dropdown-item" value="otherparcel">분양신청목록</a>
    </div>
  </li> 
  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">후원</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="${root}/donation.animal">후원소개</a>
        <a class="dropdown-item" value="otherdonation">후원목록</a>
    </div>
  </li> 
  </ul>
</body>
</html>