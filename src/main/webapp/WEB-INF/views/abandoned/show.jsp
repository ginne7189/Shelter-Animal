<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.animalshelter.dto.AnimalDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String root = request.getContextPath();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();

	String searchStartDate = "2018-09-20";
	String searchEndDate = sdf.format(cal.getTime()); // today
    %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<title>SEARCHING</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.card-img-top{
   width : 100%;
   height : 300px;
}
.fakeimg {
      height: 200px;
      background: #aaa;
  }
.navbar-brand{
     padding-left:366px !important;
  }
</style>
<script type="text/javascript" src="/free-animal/js/httpRequest.js"></script>
<script type="text/javascript">
	var isClick=0;

	function searchByDate(pageNo) {
		var searchStartDate = document.getElementById("searchStartDate").value;
		var searchEndDate = document.getElementById("searchEndDate").value;
		var params = "searchStartDate=" + searchStartDate + "&searchEndDate=" + searchEndDate +"&pageNo=" + pageNo;
		isClick++;
		sendRequest("<%=root%>/animal", params, viewResult, "GET");
	}
	
	function recentAnimal(pageNo){
		var params="pageNo="+pageNo;
		if(isClick!=0){
			searchByDate(pageNo);
		}else{
			sendRequest("<%=root%>/animal", params, viewResult, "GET");
		}
	}
	
	function viewResult() {
		var view = document.getElementById("result");
		if (httpRequest.readyState == 4 && httpRequest.status == 200) {
			var text = httpRequest.responseText;
			view.innerHTML = text;
		}
	}
</script>
</head>
<body onload="recentAnimal(1);">


<nav class="navbar navbar-expand-sm bg-yellow navbar-yellow" style="height:44px;margin:25px;">
<h1 style=" position: absolute;right: 48%;">ABC</h1>
    <ul class="navbar-nav" style=" position: absolute;right: 3%;">
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>    
    </ul>
</nav>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="height:44px;">
    <ul class="navbar-nav" style=" position: absolute;right: 43%;">
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>    
    </ul>
</nav>

   <div class="jumbotron toplayout" style="text-align: center; margin-top: 100px;">
       <h2>유기동물 리스트페이지</h2>
       <h4>유기동물 리스트가 나오는 페이지입니다</h4>
       <h5>검색 옵션창은 어디로..?</h5>
       <b>공고중</b> : 등록날짜로부터 일주일간 공고하며, 최초 공고 이후 10일이 지난 이후로는 해당 시,도지사 또는
	시장,군수,구청장이 그 동물의 소유권을 취득하게 됩니다.
	<br> 그 이후 보호 단계로 넘어가게 됩니다.
	<br>
	<br>
	<b>보호중</b> : 보호중의 경우, 최초 등록일로부터 10일이 지난 이후이며, 이 경우 새로운 주인을 찾거나 혹은 경우에
	따라 안락사가 진행되게 됩니다.
	<br> 보호중인 동물들은 새로운 주인을 간절하게 기다리고 있습니다.
	<br>
	<div class="SearchDate">
		등록날짜 <input type="date" id="searchStartDate" name="searchStartDate"
			value="<%=searchStartDate%>" max="<%=searchEndDate%>" required
			style="border: 1px solid gray;">~ <input type="date"
			id="searchEndDate" name="searchEndDate" value="<%=searchEndDate%>"
			max="<%=searchEndDate%>" required style="border: 1px solid gray;">
	</div>
	<input type="button" value="검색" onclick="javascript:searchByDate(1)">
   </div>
<!-- 동물 리스트 -->
    <!-- Page Content -->
    <div class="container">
      <div class="row" id="result"></div>
    </div>
   
<div class="jumbotron text-center" style="margin-bottom:0">
   <p>footer</p>
</div>   
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>