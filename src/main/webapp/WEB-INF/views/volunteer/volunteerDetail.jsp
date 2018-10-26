<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script> 
<link rel="stylesheet" href="main-min.css?v=1539290358437" type="text/css">
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="main-min.js?v=1539290358437" src="main-min.js?v=1539290358437"></script>
<style>
.g-font-size-48{
	font-family: 'Yeon Sung', cursive;
	font-size: 48px;
}
.g-color-white{
	font-family: 'Jua', sans-serif;
}
ul{
	font-family: 'Noto Serif KR', sans-serif;
}
li{
	font-size: 20px;
}
</style>

</head>
<body>
<c:if test="${email != null}">
	<%@include file="../common/sidebar.jsp"%>
</c:if>	
	<%@include file="../common/header.jsp"%>
	<div class="jumbotron toplayout" style="text-align: center;">
		<h2>봉사신청 소개 페이지</h2>
		<h4>도움의 손길이 필요합니다.</h4>
	</div>
<section class="container g-pb-30">   
   <div class="row no-gutters">
      <div class="col-sm-12" style="background: rgba(0,0,0,0.8) url(/front/img/patterns/gridtile.png) repeat;">      
         <div class="row">      
            <div class="col-lg-8 col-md-12">
               <img src="https://images.unsplash.com/photo-1534844404100-27259dbdc22c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fda040c3629ca96c2454666241e24049&auto=format&fit=crop&w=1351&q=80" class="img-fluid">
            </div>
            <div class="col-lg-4 col-md-12 g-pa-20">
               <p class="g-font-size-48 g-line-height-1_5 g-mt-10 g-mt-60--lg g-mb-30" style="color: #88d2f7;">바 로 여 기 ,<br> 당 신 이 <br> 필 요 합 니 다</p>
               <br/><br/><br/>
               <p class="g-color-white" style="color: #ffffff;">누구든지 돈을 주고 동물을 산다면<br>그 이면에는 죽을때까지 고통 받아야 하는<br> 또 다른 생명들이 존재해야 하는 것을<br> 기억해 주세요.</p>
            </div>
         </div>
      </div>
   </div>

   <ul class="nav nav-justified u-nav-v2-1 u-nav-primary g-mb-20" role="tablist" data-target="nav-2-1-primary-hor-justified" data-tabs-mobile-type="slide-up-down" data-btn-classes="btn btn-md btn-block u-btn-outline-primary g-mb-20">
      <li class="nav-item"><a class="nav-link g-brd-none" data-toggle="tab" href="#nav-2-1-primary-hor-justified--1" role="tab" aria-selected="false">준비 사항</a></li>
      <li class="nav-item"><a class="nav-link g-brd-none active show" data-toggle="tab" href="#nav-2-1-primary-hor-justified--2" role="tab" aria-selected="true">주의사항</a></li>
   </ul>

   <div id="nav-2-1-primary-hor-justified" class="tab-content">
      <div class="tab-pane fade" id="nav-2-1-primary-hor-justified--1" role="tabpanel">
      <br>
      	<p style="font-size:20px;">봉사 일정은 봉사 목록에서 확인하실 수 있습니다. 해당 게시글을 읽어보신 후 신청 버튼을 클릭 하시면 신청 완료!</p>
         <ul>
            <li>20세 이상의 신체 건강하신 분</li><br>
            <li>동물보호에 관심이 있고 , 동물을 사랑하시는 분</li><br>
            <li>파상풍 예방접종이 되신 분은 누구나 신청 가능합니다</li><br>
            <li>파상풍 예방접종 확인증은 필수!!</li><br>
            <li>파상풍은 화상을 입거나 흙이나 녹슨 못 , 나무조각등에 긁혀 상처부위를 통해 감염됩니다</li><br>
            <li>파상풍 균은 흙이나 동물의 분변 속에 있으며 동물에게 물리는 경우에도 감염될 수 있습니다</li><br>
            <li>파상풍은 사망률이 높은 질병입니다. 봉사대에 지원하기 전에 꼭 파상풍 예방접종을 맞아주세요</li><br>
         </ul>
      </div>
      
      <div class="tab-pane fade active show" id="nav-2-1-primary-hor-justified--2" role="tabpanel">
      <br>
         <p style="font-size:20px;">아래 주의사항을 꼭 숙지해주세요!!</p>
         <ul>
            <li>봉사 관리자의 지시사항을 따르고, 개인 활동은 최대한 자제해주세요</li><br>
            <li>편한 복장으로 봉사에 참여해 주세요. 갈아입을 수 있는 여벌의 복장도 준비해 주세요</li><br>
            <li>간식은 개체마다 알레르기 반응을 유발할 수 있고 보호소의 기준이 있을 수 있으니, 봉사대 관리자의 허락하에 주세요</li><br>
            <li>정해진 구역에서만 활동을 해주세요</li><br>
            <li>공격성이 있는 개체와의 접촉은 피해 주세요. 개인의 안전이 최우선! 사고가 있는 경우 바로 관리자에게 보고하여 즉각적인 조치를 받도록 해주세요</li><br>
            <li>봉사가 끝이 나고 혹시 모를 질병의 전염을 막기 위해 사용한 옷과 신발은 단독세탁 해주세요</li><br>
            <li>봉사 당일 취소는 앞으로 봉사참여에 제약이 있어요</li><br>
         </ul>
      </div>
   </div>
   
   <hr class="g-mb-0">
   
</section>
</body>
</html>


