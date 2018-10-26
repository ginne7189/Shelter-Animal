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
.jumbotron{
	color: white;
}
.g-font-size-48{
	font-family: 'Yeon Sung', cursive;
	font-size: 48px;
}
.g-color-white{
	font-family: 'Jua', sans-serif;
	font-size: 20px;
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
		<h2>분양신청 소개 페이지</h2>
		<h4>당신의 온도를 필요합니다.</h4>
	</div>
<section class="container g-pb-30">   
   <div class="row no-gutters">
      <div class="col-sm-12" style="background: rgba(0,0,0,0.8) url(/front/img/patterns/gridtile.png) repeat;">      
         <div class="row">      
            <div class="col-lg-8 col-md-12">
               <img src="https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8cfec93c89f00ae9bbc2e96a0e4bbd01&auto=format&fit=crop&w=1450&q=80" class="img-fluid">
            </div>
            <div class="col-lg-4 col-md-12 g-pa-20">
               <p class="g-font-size-48 g-line-height-1_5 g-mt-10 g-mt-60--lg g-mb-30" style="color: #88d2f7;">사 지 말 고 ,<br> 입 양 하 세 요</p>
               <br/><br/><br/>
               <p class="g-color-white" style="color: #ffffff;">누구든지 돈을 주고 동물을 산다면<br>그 이면에는 죽을때까지 고통 받아야 하는<br> 또 다른 생명들이 존재해야 하는 것을<br> 기억해 주세요.</p>
            </div>
         </div>
      </div>
   </div>

   <ul class="nav nav-justified u-nav-v2-1 u-nav-primary g-mb-20" role="tablist" data-target="nav-2-1-primary-hor-justified" data-tabs-mobile-type="slide-up-down" data-btn-classes="btn btn-md btn-block u-btn-outline-primary g-mb-20">
      <li class="nav-item"><a class="nav-link g-brd-none" data-toggle="tab" href="#nav-2-1-primary-hor-justified--1" role="tab" aria-selected="false">입양신청</a></li>
      <li class="nav-item"><a class="nav-link g-brd-none active show" data-toggle="tab" href="#nav-2-1-primary-hor-justified--2" role="tab" aria-selected="true">입양절차</a></li>
   </ul>

   <div id="nav-2-1-primary-hor-justified" class="tab-content">
      <div class="tab-pane fade" id="nav-2-1-primary-hor-justified--1" role="tabpanel">
      <br>
         <ul>
            <li>입양신청 시 animore 입양원칙에 동의 하셔야 합니다.</li><br>
            <li>[입양신청하기]게시판의 입양신청서를 제출해주셔야 등록이 됩니다.</li><br>
            <li>입양동의서를 꼼꼼히 확인해주시고 모든 항목들에 동의하신다면 입양신청서를 작성해주세요.</li><br>
            <li>animore에서는 유기견과 개인간의 입양만 할 수 있습니다.</li><br>
            <li>내용을 확인하시고, 원하시는 입양하는 사람에게 연락을해주세요.</li><br>
            <li>맞음비는 유기동물 치료비, 동물보호소 후원금으로 전액 사용됩니다.</li><br>
         </ul>
      </div>
      
      <div class="tab-pane fade active show" id="nav-2-1-primary-hor-justified--2" role="tabpanel">
      <br>
         <p style="font-size:20px;">새로운 가족을 입양하는 일입니다. 소요기간이 길어지더라도 양해부탁드립니다.</p>
         <ul>
            <li>animore 분양동의서 동의 후, 분양신청 양식을 빠짐없이 기입해주세요.</li><br>
            <li>미성년자는 보호자의 동의 및 직접적인 보호자와의 인터뷰 절차를 거치게 됩니다.</li><br>
            <li>분양 상태에 따라 분양비가 7만원 지불될 수 있으며 전액 유기동물의 치료비와 사설보호소 후원금으로 사용됩니다.</li><br>
            <li>분양 시에는 신분증 사본과 도장을 지참하셔야 합니다.</li><br>
            <li>분양이 결정되면 담당자가 직접 신청자의 댁을 방문하게 됩니다.(서울, 경기지역 거주자 분들께 분양의 우선권이 있습니다.)</li><br>
            <li>분양된 이후에 분양인은 반드시 단체의 모니터링에 응해주셔야 합니다.</li><br>
         </ul>
      </div>
   </div>
   
   <hr class="g-mb-0">
   
</section>
</body>
</html>


