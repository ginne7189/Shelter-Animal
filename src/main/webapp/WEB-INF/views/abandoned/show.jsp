<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="../common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	
	String searchEndDate = sdf.format(cal.getTime()); // today
	cal.add(Calendar.MONTH,-1);
	String searchStartDate = sdf.format(cal.getTime());
%>
<%@include file="../common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<title>SEARCHING</title>
<style>
.card-img-top {
	width: 100%;
	height: 300px;
}

/* .navbar-brand {
	padding-left: 366px !important;
} */
</style> 

<script type="text/javascript">
	var isClick = 0;

	function recentAnimal(pageNo) {
		var searchStartDate = document.getElementById("searchStartDate").value;
		var searchEndDate = document.getElementById("searchEndDate").value;
		var params = "searchStartDate=" + searchStartDate + "&searchEndDate="
				+ searchEndDate + "&pageNo=" + pageNo;
		
		sendRequest("${root}/abandoned.animal", params, viewResult, "POST");	
	}

	function viewResult() {
		var view = document.getElementById("result");
		if (httpRequest.readyState == 4 && httpRequest.status == 200) {
			var text = httpRequest.responseText;
			view.innerHTML = text;	
		}
	}	
	
	function continueView(pageNo){		
		var offset = $("#result").offset();
		$('html, body').animate({scrollTop: offset.top}, 200);
		recentAnimal(pageNo);
	}
</script>
</head>
<body onload="recentAnimal(1)">
	
	<div class="jumbotron toplayout" style="text-align: center;">
		<h2>유기동물 리스트페이지</h2>
		<h4>유기동물 리스트가 나오는 페이지입니다</h4>
		<h5>검색 옵션창은 어디로..?</h5>
		<b>공고중</b> : 등록날짜로부터 일주일간 공고하며, 최초 공고 이후 10일이 지난 이후로는 해당 시,도지사 또는
		시장,군수,구청장이 그 동물의 소유권을 취득하게 됩니다. <br> 그 이후 보호 단계로 넘어가게 됩니다. <br>
		<br> <b>보호중</b> : 보호중의 경우, 최초 등록일로부터 10일이 지난 이후이며, 이 경우 새로운 주인을
		찾거나 혹은 경우에 따라 안락사가 진행되게 됩니다. <br> 보호중인 동물들은 새로운 주인을 간절하게 기다리고
		있습니다. <br>
		<div class="SearchDate">
			등록날짜 <input type="date" id="searchStartDate" name="searchStartDate"
				value="<%=searchStartDate%>" max="<%=searchEndDate%>" required
				style="border: 1px solid gray;"> ~ <input type="date"
				id="searchEndDate" name="searchEndDate" value="<%=searchEndDate%>"
				max="<%=searchEndDate%>" required style="border: 1px solid gray;">
		</div>
		<input type="button" value="검색" onclick="javascript:recentAnimal(1)">
	</div>
	<!-- Page Content -->
	<div class="container">
		<div class="row" id="result"></div>
	</div>	
</body>
</html>