<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- <link href="https://fonts.googleapis.com/css?family=Sunflower:300|Yeon+Sung" rel="stylesheet"> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <link rel="style.css"> -->
<style>
.sidebartop{font-family: 'Yeon Sung', cursive;}
.sidebarlist{font-family: 'Sunflower', sans-serif;}
</style>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-bar-block" style="z-index:3;width:250px;" id="mySidebar"><br>
  <div class="w3-container w3-display-container w3-padding-16 sidebartop">
  	<h3 class="w3-wide"><i class="fa fa-paw fa-lg"></i><b> 도기도기</b></h3>
  	<br><br><br>
    <h4>
    <b>{이름뿌려주기}님의 마이 메뉴</b>
    </h4>
  </div>
  <hr>
  <div class="w3-padding-64 w3-large w3-text-grey sidebarlist" style="font-weight:bold">
    <a value="infolist"  class="w3-bar-item w3-button w3-padding ">내 정보보기</a> 
    <a value="attention"  class="w3-bar-item w3-button w3-padding " pg="1">관심동물보기</a> 
    <a value="articlelist"  class="w3-bar-item w3-button w3-padding ">내가 쓴 글</a> 
    <a value="donation" class="w3-bar-item w3-button w3-padding">후원내역</a>
    <a value="parcel"  class="w3-bar-item w3-button w3-padding ">분양신청내역</a>
  </div>
  <hr>
</nav>