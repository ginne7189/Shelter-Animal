<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<!DOCTYPE html>
<html>
<script>

$(document).ready(function() {

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
		//getList1(1);
	}
	$("#searchBtn").click(function() {
		
		getList1(1);
		//$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	$(".w3-bar-item").click(function() {
	
		$(".acode").attr("value",$(this).attr("value"));
		if($(this).attr("value")=="infolist"){

			$(".mvform").attr("action","${root}/"+$(this).attr("value")+".animal").submit();
		}else{
		$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		}
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
	
// 		moveBoard('${bcode}', $(this).attr("mv-page-no"), '${key}', '${word}', 'list');
		if("${sidebar}" == "donation"){
			getList($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "attention"){
			getList($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "articlelist"){
			getList($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "parcel"){
			getList($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "volunteer"){
			getList($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "otherdonation"){
			getList1($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "otherattention"){
			getList1($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "otherarticlelist"){
			getList1($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "otherparcel"){
			getList1($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "othervolunteer"){
			getList1($(this).attr("mv-page-no"));
		}else if("${sidebar}" == "othermissing"){
			getList1($(this).attr("mv-page-no"));
		}else{
			getList1($(this).attr("mv-page-no"));
		}
		getList($(this).attr("mv-page-no"));
	});

	
	$(document).on("click", ".detail", function() {
		var view;
		if("${sidebar}" == "donation"){
			view="dview";
		}else if("${sidebar}" == "attention"){
			view="pview";
		}else if("${sidebar}" == "articlelist"){
			view="pview";
		}else if("${sidebar}" == "parcel"){
			view="pview";
		}else if("${sidebar}" == "volunteer"){
			view="vview";
		}else if("${sidebar}" == "otherdonation"){
			view="dview";
		}else if("${sidebar}" == "otherattention"){
			view="pview";
		}else if("${sidebar}" == "otherarticlelist"){
			view="pview";
		}else if("${sidebar}" == "otherparcel"){
			view="pview";
		}else if("${sidebar}" == "othervolunteer"){
			view="vview";
		}else if("${sidebar}" == "othermissing"){
			view="mview";
		}else{
			view="mview"
		}
		$(".acode").attr("value",$(this).attr("article-seq"));
		$(".mvform").attr("action","${root}/parcel/"+view+".animal").submit();
	});
	
	
	
// 	$(".page-item").click(function() {
// 		if("${sidebar}" == "side"){
// 			getList1(1);
// 		}else{
// 			getList(1);
// 		}
		
// 	});
});

function getList(pg) {
	var tsidebar;
	if("${sidebar}" == "donation"){
		tsidebar="donation";
	}else if("${sidebar}" == "attention"){
		tsidebar="attention";
	}else if("${sidebar}" == "articlelist"){
		tsidebar="applylist";
	}else if("${sidebar}" == "parcel"){
		tsidebar="parcel";
	}else if("${sidebar}" == "volunteer"){
		tsidebar="volunteer";
	}else if("${sidebar}" == "missinglist"){
		tsidebar="missinglist";
	}
	
	$.ajax({
		type : "POST",
		url : "${root}/sidebar/"+tsidebar +".animal",
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
			}else if("${sidebar}" == "missing"){
				makemissingList(data);
			}
		},
		error : function(e) {
			
		}
	});
}
function getList1(pg) {
	var tsidebar;
	if("${sidebar}" == "otherdonation"){
		tsidebar="donation";
	}else if("${sidebar}" == "otherattention"){
		tsidebar="attention";
	}else if("${sidebar}" == "otherarticlelist"){
		tsidebar="applylist";
	}else if("${sidebar}" == "otherparcel"){
		tsidebar="parcel";
	}else if("${sidebar}" == "othervolunteer"){
		tsidebar="volunteer";
	}else if("${sidebar}" == "othermissing"){
		tsidebar="missing";
	}
	
	$.ajax({
		type : "POST",
	
		url : "${root}/sidebar/"+tsidebar +".animal",
		dataType : "json",
		data : {"sidebar":"side","pg":pg},
		success : function(data) {
			if("${sidebar}" == "otherdonation"){
				
				makedonationList(data);
			}else if("${sidebar}" == "otherattention"){
				makeattentionList(data);
			}else if("${sidebar}" == "otherarticlelist"){
				makearticleList(data);
			}else if("${sidebar}" == "otherparcel"){
				makeparcelList(data);
			}else if("${sidebar}" == "othervolunteer"){
				makevolunteerList(data);
			}else if("${sidebar}" == "othermissing"){
				makemissingList(data);
			}
		},
		error : function(e) {
			
		}
	});
}


function makedonationList(data){
	$(".container-fluid").empty();
	var view=$(".container-fluid");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";

	for(var i=0;i<members.length ;i++){
		if(i%2==0){

			viewlist += "<div class='container' article-seq='"+members[i].seq+ "'>";
			viewlist += "<div class='row'>";
			viewlist +=	"<div class='detail col-md-5 info-big' article-seq='"+members[i].seq+"'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p style='font-size:36px;'><b> 목표 후원 금액 </b> : "+ members[i].cdonationfee + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='text-align: center;font-size:20px;'>";		
			viewlist +=	 members[i].cdonationpurpose;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=			"</div>";
			viewlist +=			"<p style='font-size:20px;'><strong>현재 모금액</strong></p>";
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
			viewlist +=	"<div class='detail col-md-5' article-seq='"+members[i].seq+"'>";
			viewlist +=	"<img class='view-img' src='https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80'>";	
			viewlist +=	"</div>";
			viewlist += "<div class='col-sm-2'></div>";
			viewlist +=	"<div class='col-md-5 info-big'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p style='font-size:36px;'><b> 목표 후원 금액 </b> : "+ members[i].cdonationfee + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='text-align: center;font-size:20px;'>";		
			viewlist +=	 members[i].cdonationpurpose;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=			"</div>";
			viewlist +=			"<p style='font-size:20px;'><strong>현재 모금액</strong></p>";
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
		viewlist += "<div class='detail col-lg-4 col-sm-6' article-seq='"+members[i].seq+"' style='padding: 10px; padding-left: 0px;' >";
		viewlist += "<div class='card h-100'>";
		viewlist +=  "<a href='#'><img class='card-img-top' src='https://images.unsplash.com/photo-1532762471988-c0d67cc3f771?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d173da6e6d69a0d8a77fbc3707088c9&auto=format&fit=crop&w=1114&q=80'></a>";
		viewlist +=  "<div class='card-body'>";
		viewlist +=   "<h4 class='card-title'>"; 
		viewlist +=      "<a href='#'>"+members[i].subject+"</a>";
		viewlist +=   "</h4>";
		viewlist +=    "<p class='card-text'>	 <b>품종 :</b> "+members[i].kind+"</p>";
		viewlist +=    "<p class='card-text'>	 <b>나이 :</b> "+members[i].age+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>체중 :</b> "+members[i].petsize+"	</p>";
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
		
		viewlist += "<div class='detail col-lg-4 col-sm-6' article-seq='"+members[i].seq+"' style='padding: 10px; padding-left: 0px;' >";
		viewlist += "<div class='card h-100'>";
		viewlist +=  "<img class='card-img-top' src='https://images.unsplash.com/photo-1532762471988-c0d67cc3f771?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d173da6e6d69a0d8a77fbc3707088c9&auto=format&fit=crop&w=1114&q=80'>";
		viewlist +=  "<div class='card-body'>";
		viewlist +=   "<h4 class='card-title' article-seq='val'>"; 
		viewlist +=    members[i].subject;
		viewlist +=   "</h4>";
		viewlist +=    "<p class='card-text'>	 <b>품종 :</b> "+members[i].kind+"</p>";
		viewlist +=    "<p class='card-text'>	 <b>나이 :</b> "+members[i].age+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>체중 :</b> "+members[i].weight+"	</p>";
		viewlist +=    "<p class='card-text'>	 <b>위치 :</b> "+members[i].location+"	</p>";
		viewlist +=  "</div>";
		viewlist += "</div>";
		viewlist +="</div>";

	}
	
	view.append(viewlist);
}


function makearticleList(data) {
	
	$("#listview").empty();
	var view=$("#listview");
	var members=data.members;//{"members" : [{}, {}, {} ...]}
	for(var i=0;i<members.length;i++) {
		var tr = $("<tr class='detail' article-seq='"+members[i].seq+"'></tr>")	
						.append($("<td></td>").text(members[i].applyemail))
						.append($("<td></td>").text(members[i].tel))
					   .append($("<td></td>").text(members[i].subject))
					   .append($("<td></td>").text(members[i].location))
		$("#listview").append(tr);
	}
}

function makeparcelList(data){
	$("#main").empty();
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
		viewlist += "<div class='detail col-lg-4 col-sm-6' article-seq='"+members[i].seq+"' style='padding: 10px; padding-left: 0px;' >";
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
	$(".container-fluid").empty();
	var view=$(".container-fluid");
	var members = data.members;
	//alert(member.length);	//회원수 출력 :120
	var viewlist="";

	for(var i=0;i<members.length ;i++){
		if(i%2==0){

			viewlist += "<div class='container'>";
			viewlist += "<div class='row'>";
			viewlist +=	"<div class='detail col-md-5 info-big' article-seq='"+members[i].seq+"'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p style='font-size:20px;'>"+ members[i].subject + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='font-size:20px;'>봉사종류 :";		
			viewlist +=	 members[i].volunteerkind;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p style='font-size:20px;'>";		
			viewlist +=	 members[i].volunteerdate;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p style='font-size:20px;'>";		
			viewlist +=	 members[i].centerlocation;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p style='font-size:20px;'>";		
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
			viewlist +=	"<div class='detail col-md-5' article-seq='"+members[i].seq+"'>";
			viewlist +=	"<img class='view-img' src='https://images.unsplash.com/photo-1538318514451-db4272ee0fc8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9645b44503489a0d6832693f91e1d48b&auto=format&fit=crop&w=1350&q=80'>";	
			viewlist +=	"</div>";
			
			
			viewlist +=	"<div class='col-sm-2'></div>";
			viewlist +=	"<div class='col-md-5 info-big'>";
			viewlist +=	"<h2>"+members[i].centername +"</h2>";
			viewlist +=	"<div class='dntContent'>";		
			viewlist +=	"<p style='font-size:20px;'>"+ members[i].subject + "</p>";		
			viewlist +=	"<hr>";		
			viewlist +=	"<p style='font-size:20px;'>봉사종류 :";		
			viewlist +=	 members[i].volunteerkind;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p style='font-size:20px;'>";		
			viewlist +=	 members[i].volunteerdate;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p style='font-size:20px;'>";		
			viewlist +=	 members[i].centerlocation;	
			viewlist +=  "</p>";
			viewlist +=		"<hr>";
			viewlist +=	"<p style='font-size:20px;'>";		
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
ul.nav li.dropdown:hover > div.dropdown-menu{display:block;margin:0;}
.loginset{
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 17px;
}
.titlecontainer{
	font-family: 'Do Hyeon', sans-serif !important;
	font-size: 24px;
}
.headermenu{
	font-family: 'Sunflower', sans-serif ;
	font-size: 20px;	
}
</style> 
</head>
<body>
<form class="mvform" >
<input type="hidden" class="acode" name="acode" value="sidebar" >
</form>
<!-- 로그인 세트 -->
<nav class="navbar navbar-expand-sm loginset" style="position: absolute;right: 3%;">
	<ul class="navbar-nav">
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
<!-- 메인 타이틀 or 이미지 -->
<div class="titlecontainer" align="center"style="margin-bottom: 50px"> 
	<i class="fa fa-dog"></i>
	<h1><a style="text-decoration:none;" href="${root }/index.jsp"><i class="fa fa-paw fa-fw"></i>  animore</a></h1>
</div>
<!-- 네비게이션 바 -->
<ul class="nav nav-tabs justify-content-center headermenu">
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
      <a class="dropdown-item" href="${root }/parcel/pwrite.animal">실종동물신청</a>
      <a class="dropdown-item" value="othermissing">실종동물목록</a>
    </div>
  </li> 
  
  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="drowdown" href="#">분양받기</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">분양소개</a>
      <a class="dropdown-item" href="${root }/parcel/pwrite.animal">개인분양신청</a>
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