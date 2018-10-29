<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="../common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();

	String searchEndDate = sdf.format(cal.getTime()); // today
	cal.add(Calendar.MONTH, -1);
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
		var animalKind = document.getElementById("animalKind").value;
		var kindDetail = document.getElementById("kindDetail").value;
		var cityCode = document.getElementById("city").value;
		var districtCode = document.getElementById("district").value;
		var shelterCode = document.getElementById("shelterList").value;
		/* var state = document.getElementById("searchEndDate").value;
		var neuter_yn = document.getElementById("searchEndDate").value; */

		var params = "searchStartDate=" + searchStartDate + "&searchEndDate="
				+ searchEndDate + "&pageNo=" + pageNo;
		params += "&animalKind=" + animalKind;
		params += "&kindDetail=" + kindDetail;
		params += "&cityCode=" + cityCode;
		params += "&districtCode=" + districtCode;
		params += "&shelterCode=" + shelterCode;

		sendRequest("${root}/abandoned.animal", params, viewResult, "POST");
	}

	function viewResult() {
		var view = document.getElementById("result");
		if (httpRequest.readyState == 4 && httpRequest.status == 200) {
			var text = httpRequest.responseText;
			view.innerHTML = text;
		}
	}

	function continueView(pageNo) {
		var offset = $("#result").offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 200);
		recentAnimal(pageNo);
	}

	$.ajax({
		type : "POST",
		url : "http://${myIP}${root}/getCity.animal",
		dataType : "json",
		success : function(data) {
			$.each(data.city, function(key, value) {
				var orgCd = value.orgCd;
				var orgdownNm = value.orgdownNm;
				$('#city').append($('<option>', {
					value : orgCd,
					text : orgdownNm
				}));
			});
		},
		error : function(e) {
			alert("처리중 장애가 발생하였습니다.");
		}
	});

	$(document).ready(function() {
		$("#city").change(function() {

			$("select[name='district'] option").remove();
			$('#district').append($('<option>', {
				value : "",
				text : "전체"
			}));

			$("select[name='shelterList'] option").remove();
			$('#shelterList').append($('<option>', {
				value : "",
				text : "전체"
			}));

			var cityCode = $("#city option:selected").val();

			$.ajax({
				type : "POST",
				url : "http://${myIP}${root}/getDistrict.animal",
				data : {
					upr_cd : cityCode
				},
				dataType : "json",
				success : function(data) {
					$.each(data.district, function(key, value) {
						var orgCd = value.orgCd;
						var orgdownNm = value.orgdownNm;
						$('#district').append($('<option>', {
							value : orgCd,
							text : orgdownNm
						}));
					});
				},
				error : function(e) {
					alert("처리중 장애가 발생하였습니다.");
				}
			});
		});

		$("#district").change(function() {

			$("select[name='shelterList'] option").remove();
			$('#shelterList').append($('<option>', {
				value : "",
				text : "전체"
			}));

			var cityCode = $("#city option:selected").val();
			var districtCode = $("#district option:selected").val();

			$.ajax({
				type : "POST",
				url : "http://${myIP}${root}/getShelter.animal",
				data : {
					upr_cd : cityCode,
					org_cd : districtCode
				},
				dataType : "json",
				success : function(data) {
					$.each(data.shelterList, function(key, value) {
						var careNm = value.careNm;
						var careRegNo = value.careRegNo;
						$('#shelterList').append($('<option>', {
							value : careRegNo,
							text : careNm
						}));
					});
				},
				error : function(e) {
					alert("처리중 장애가 발생하였습니다.");
				}
			});
		});

		$("#animalKind").change(function() {

			$("select[name='kindDetail'] option").remove();
			$('#kindDetail').append($('<option>', {
				value : "",
				text : "전체"
			}));

			var animalCode = $("#animalKind option:selected").val();
			$.ajax({
				type : "POST",
				url : "http://${myIP}${root}/kindDetail.animal",
				data : {
					up_kind_cd : animalCode
				},
				dataType : "json",
				success : function(data) {
					$.each(data.kindDetail, function(key, value) {
						var nameOfKind = value.nameOfKind;
						var kindCode = value.kindCode;
						$('#kindDetail').append($('<option>', {
							value : kindCode,
							text : nameOfKind
						}));
					});
				},
				error : function(e) {
					alert("처리중 장애가 발생하였습니다.");
				}
			});
		});
	});
</script>
<style>
.jumbotron{
	font-family: 'Noto Serif KR', sans-serif;
	font-size: medium;
}
.abandshow{
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<body onload="recentAnimal(1)">
<div class="jumbotron toplayout" style="text-align: center;background-color: #ffffff;">
<h4>상세검색 기능을 이용하여 원하는 날짜, 지역, 품종의 유기 동물을 검색해보세요</h4>
<!-- <b>공고중</b> : 등록날짜로부터 일주일간 공고하며, 최초 공고 이후 10일이 지난 이후로는 해당 시,도지사 또는 -->
<!-- 시장,군수,구청장이 그 동물의 소유권을 취득하게 됩니다. <br> 그 이후 보호 단계로 넘어가게 됩니다. <br> -->
<!-- <br> <b>보호중</b> : 보호중의 경우, 최초 등록일로부터 10일이 지난 이후이며, 이 경우 새로운 주인을 -->
<!-- 찾거나 혹은 경우에 따라 안락사가 진행되게 됩니다. <br> 보호중인 동물들은 새로운 주인을 간절하게 기다리고 -->
<!-- 있습니다. <br> -->
<br>
<div class="SearchDate">
	등록날짜 
	<input type="date" id="searchStartDate" name="searchStartDate"
	value="<%=searchStartDate%>" max="<%=searchEndDate%>" required
	style="border: 1px solid gray;"> ~ <input type="date"
	id="searchEndDate" name="searchEndDate" value="<%=searchEndDate%>"
	max="<%=searchEndDate%>" required style="border: 1px solid gray;">
</div>
<br>
<div class="SearchByLocation">
	시도 
	<select id="city" name="city">
		<option value="">전체</option>
	</select> 
	구군 
	<select id="district" name ="district">
		<option value="">전체</option>
	</select> 
	보호센터 
	<select id= "shelterList" name = "shelterList">
		<option value=""> 전체 </option>
	</select>
</div>
<br>
<div class="SearchByKind">
	품종 
	<select id="animalKind" name ="animalKind">
		<option value="">전체</option>
		<option value="417000">개</option>
		<option value="422400">고양이</option>
		<option value="429900">기타</option>
	</select>
	상세 
	<select id="kindDetail" name ="kindDetail">
		<option value="">전체</option>
	</select>
</div>
<button class="w3-button w3-section w3-black w3-ripple w3-padding"><span id="btnSearch" onclick="javascript:recentAnimal(1)">검색</span></button>
<!-- <input type="button" id="btnSearch" value="검색" onclick="javascript:recentAnimal(1)"> -->
</div>
<!-- Page Content -->
<div class="container abandshow">
<div class="row" id="result"></div>
</div>
</body>
</html>