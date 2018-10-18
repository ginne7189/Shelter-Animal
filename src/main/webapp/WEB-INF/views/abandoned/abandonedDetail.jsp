<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@page import="java.util.ArrayList"%>
<%@page import="com.animalshelter.dto.AnimalDto"%>
<%@page import="java.util.List"%>
<%@include file="../common/common.jsp"%>
<%
List<AnimalDto> list = (List<AnimalDto>) session.getAttribute("animalInfo");
int index = Integer.parseInt(request.getParameter("index"));
%>
<!DOCTYPE html>
<html>
<head>
<style>
.sidebar{
	position:fixed;
}
.card-img-top{
	width : 100%;
	height : 300px;
}
</style>
</head>
<body style="background-color:#EEEEEE; padding:0px; margin:0px;">
<%
if(list!=null){
%>
<!-- 동물 리스트 -->
	
    <!-- Page Content -->
    <div style="margin-top:3%; text-align: center;">
	  <h3>공고번호 : <%=list.get(index).getNoticeNo() %></h3>	 
  	  <table class="table table-bordered" style="margin-left:13%; margin-top:2%; width:80%; font-size:15px;">
	    <tbody>
	    <tr>
	    <td colspan="2">
	    <img src=" <%=list.get(index).getPopfile() %>" width="600px"/>
	    </td>
	    </tr>
	     <tr>
	        <td>유기번호</td>
	        <td><%=list.get(index).getDesertionNo() %></td>
	      </tr>
	      <tr>
	        <td>접수일</td>
	        <td><%=list.get(index).getHappenDt()%></td>
	      </tr>
	    <tr>
	        <td>발견장소</td>
	        <td><%=list.get(index).getHappenPlace() %></td>
	      </tr>
	      <tr>
	        <td>품종</td>
	        <td><%=list.get(index).getKindCd() %></td>
	      </tr>
	      <tr>
	        <td>색상</td>
	        <td><%=list.get(index).getColorCd() %></td>
	      </tr>
	      <tr>
	        <td>나이</td>
	        <td><%=list.get(index).getAge() %></td>
	      </tr>
	     <tr>
	        <td>체중</td>
	        <td><%=list.get(index).getWeight() %></td>
	      </tr>
	      <tr>
	        <td>공고시작일</td>
	        <td><%=list.get(index).getNoticeSdt() %></td>
	      </tr>
	      <tr>
	        <td>공고종료일</td>
	        <td><%=list.get(index).getNoticeEdt() %></td>
	      </tr>
	      <tr>
	        <td>상태</td>
	        <td><%=list.get(index).getProcessState() %></td>
	      </tr>
	      <tr>
	        <td>성별</td>
	        <td><%=list.get(index).getSexCd() %></td>
	      </tr>
	      <tr>
	      <td>중성화여부</td>
	      <td><%=list.get(index).getNeuterYn() %></td>
	      </tr>
	      <tr>
	      <td>특징</td>
	      <td><%=list.get(index).getSpecialMark() %></td>
	      </tr>
	      <tr>
	      <td>관할기관</td>
	      <td><%=list.get(index).getOrgNm() %></td>
	      </tr>
	      <tr>
	      <td>담당자</td>
	      <td><%=list.get(index).getChargeNm() %></td>
	      </tr>
	      <tr>
	      <td>담당자연락처</td>
	      <td><%=list.get(index).getOfficetel() %></td>
	      </tr>
	      <tr>
	      <td>특이사항</td>
	      <td><%=list.get(index).getNoticeComment() %></td>
	      </tr>
	    </tbody>
	  </table>
	  
	  </div>		  	
		  
		<hr>
		<h3 style="margin-top:20px;">보호소 정보</h3>
		<div style="margin:5%;">		
		<div id="map" style="width:100%;height:400px;"></div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4bfd5c9518e4c10e2e8621f362038713&libraries=services,clusterer,drawing"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('<%=list.get(index).getCareAddr() %>', function(result, status) {
	    // 정상적으로 검색이 완료됐으면 
	     if (status === daum.maps.services.Status.OK) {
	        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: coords
	        });
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new daum.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;"><%=list.get(index).getCareNm() %></div>'
	        });
	        infowindow.open(map, marker);
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    	
		
		</script>		
	    </div>	   
	    <table class="table table-bordered" style="margin-left:13%; margin-top:2%; width:80%; font-size:15px;">
	    <tbody>
	    <tr>
	      <td>보호소 이름</td>
	      <td><%=list.get(index).getCareNm() %></td>
	      </tr>
	      <tr>
	      <td>보호소 전화번호</td>
	      <td><%=list.get(index).getCareTel() %></td>
	      </tr>
	      <tr>
	      <td>보호소 위치</td>
	      <td><%=list.get(index).getCareAddr() %></td>
	      </tr>
	    </tbody>
	    </table>
		<div style="margin-top:10px">
		<hr>
		<br>
		<br>
		<br>
		<br>
</div>	
	<% 
}else{
	%>
	Fuck!
	<%
}
%>
  </body>
</html>


