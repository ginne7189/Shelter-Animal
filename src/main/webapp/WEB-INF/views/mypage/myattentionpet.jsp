<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<c:if test="${email == null }">
<script>



$(document).ready(function() {
	
	if("${sidebar}" == "side"){
		getList1(1);
	}else{
		getList(1);
	}
	$("#searchBtn").click(function() {
		
		getList1(1);
		//$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	$(".w3-bar-item").click(function() {
		
		$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});
	
	$(".movepage").click(function() {
// 		moveBoard('${bcode}', $(this).attr("mv-page-no"), '${key}', '${word}', 'list');
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
			makeList(data);
			
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
		data : {"sidebar":"side","pg":$(this).attr("pg")},
		success : function(data) {
			makeList(data);
			
		},
		error : function(e) {
			
		}
	});
}

function makeList(data){
	$("#main").empty();
	var view=$("#main");
	var members = data.members;
	
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

</script>
</c:if>

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

<%-- <c:if test="${email != null }"> --%>

	<%@include file="../common/sidebar.jsp"%>
<%-- </c:if> --%>
	<%@include file="../common/header.jsp"%>
	<div class="jumbotron toplayout" style="text-align: center;">
	    <h2>마이페이지</h2>
	    <h4>관심동물보기</h4>
	    <input type="button" id="searchBtn" value="검색" style="width:50px;">
	</div>
<!-- 동물 리스트 -->
    <!-- Page Content -->
    
    <div class="container">

      <div class="row" id="main" style="padding:0px; margin:0px;">
      
        
   </div>
      	<div class="col-sm-2" style="margin-right: 30px;float: right"></div> 
    </div>
	
	 <!-- /.container -->
    <div class="container" style="margin-top: 150px">
    
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td colspan="3" height="5"></td>
	</tr>
	<tr valign="top">
		<td width="100%" align="center" class="page"><!--PAGE--> ${navigator.navigator}</td>
		<td nowrap class="stext"><b>${navigator.pageNo}</b> / ${navigator.totalPageCount}
		pages</td>
	</tr>
		</table>
<!--     	<table> -->
<!--     	<tr> -->
<%--     	<td width="100%" align="center"><!--PAGE--> ${navigator.navigator}</td> --%>
<%-- 		<td nowrap class="stext"><b>${navigator.pageNo}</b> / ${navigator.totalPageCount} --%>
<!-- 		pages</td> -->
<!--     	</tr> -->
<!--     	</table> -->
		<!-- ㅍㅔ이징 처리 -->
<!-- 		<ul class="pagination justify-content-center" > -->
<!-- 			<li class="page-item" value="previous"> -->
<!-- 				<a class="page-link" aria-label="Previous"> -->
<!-- 					<span aria-hidden="true">&laquo;</span> -->
<!-- 					<span class="sr-only">Previous</span> -->
<!-- 				</a> -->
<!-- 			</li> -->
<!-- 			<li class="page-item" value="1"> -->
<!-- 				<a class="page-link">1</a> -->
<!-- 			</li> -->
<!-- 			<li class="page-item" pg="2"> -->
<!-- 				<a class="page-link" >2</a> -->
<!-- 			</li> -->
<!-- 			<li class="page-item" pg="3"> -->
<!-- 				<a class="page-link" >3</a> -->
<!-- 			</li> -->
<!-- 			<li class="page-item" pg="4"> -->
<!-- 				<a class="page-link">4</a> -->
<!-- 			</li> -->
<!-- 			<li class="page-item" pg="5"> -->
<!-- 				<a class="page-link">5</a> -->
<!-- 			</li>			 -->
<!-- 			<li class="page-item" pg="next"> -->
<!-- 				<a class="page-link" aria-label="Next"> -->
<!-- 					<span aria-hidden="true">&raquo;</span> -->
<!-- 					<span class="sr-only">Next</span> -->
<!-- 				</a> -->
<!-- 			</li> -->
<!-- 		</ul>  -->
	</div>	     
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>