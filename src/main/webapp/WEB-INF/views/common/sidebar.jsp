<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="style.css">


<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style=" background-color:#EEEEEE; z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="../img/p1.jpg" style="width:45%;" class="w3-round"><br><br>
    <h4><b>kjhabc2002@naver.com</b></h4>
    <p class="w3-text-grey">Template by W3.CSS</p>
  </div>
  <div class="w3-bar-block">
    <a value="infolist"  class="w3-bar-item w3-button w3-padding ">내 정보보기</a> 
     <a value="attention"  class="w3-bar-item w3-button w3-padding " pg="1">관심동물보기</a> 
    <a value="articlelist"  class="w3-bar-item w3-button w3-padding ">내가 쓴 글</a> 
    <a value="donation" class="w3-bar-item w3-button w3-padding">후원내역</a>
    <a value="parcel"  class="w3-bar-item w3-button w3-padding ">분양신청내역</a>
  </div>

</nav>
