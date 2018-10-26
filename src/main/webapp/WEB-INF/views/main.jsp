<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메인 페이지</title>
<style>
body, html {height: 100%}
.mainheader{
font-family: 'Yeon Sung', cursive;
}
.menu {display: none}
/* 슬라이드 버튼 */
.w3-left, .w3-right {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 24px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}
a{text-decoration: none;color:#333333;}
/* 슬라이드 버튼 hover 백그라운드 컬러 이펙트 */
.w3-left:hover, .w3-right:hover {
  background-color: rgb(224, 224, 235);
}
</style>
<script>
$(document).ready(function() {
	$("#abandonedanim").click(function() {
		$("#linkForm").attr("action", "${root}/sidebar/missing.animal").submit();
	});
});
</script>
</head>
<body>
<header class="w3-display-container w3-content w3-wide mainheader" style="max-width:1500px;" id="home">
<div class="w3-display-container-fluid">
<form id="linkForm" name="linkForm" method="get">
<!-- 1번 슬라이드 -->
  <img class="w3-image" src="https://images.unsplash.com/photo-1518815068914-038920b6f0c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=38f02f628dfcc539764a05b5bc42a419&auto=format&fit=crop&w=1012&q=80" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center mySlides">
    <h1 class="w3-xxlarge w3-text-grey"><span class="w3-padding w3-black w3-opacity-min">
    <i class="fa fa-quote-left"></i>
    바로 여기 당신을 기다리는 유기견들이 있습니다
    <i class="fa fa-quote-right"></i>
    </span>
    <br><br>
    </h1>    
    <div class="w3-display-topleft w3-container w3-padding-32"></div>  
  </div>
<!-- 2번 슬라이드 -->  
  <div class="w3-display-middle w3-margin-top w3-center mySlides">
    <h1 class="w3-xxlarge w3-text-grey"><span class="w3-padding w3-black w3-opacity-min">
    <i class="fa fa-quote-left"></i>
    바로 여기 <br>당신을 기다리는 당신의 식구가 있습니다
    <i class="fa fa-quote-right"></i>
    </span>
    <br><br>
    </h1>    
    <div class="w3-display-topleft w3-container w3-padding-32"></div>  
  </div>
<!-- 3번 슬라이드 -->
  <div class="w3-display-middle w3-margin-top w3-center mySlides">
    <h1 class="w3-xxlarge w3-text-grey"><span class="w3-padding w3-black w3-opacity-min">
    <i class="fa fa-quote-left"></i>
    새로운 가족을 찾으신다면 <br>바로 이곳입니다
    <i class="fa fa-quote-right"></i>
    </span>
    <br><br>
    </h1>    
    <div class="w3-display-topleft w3-container w3-padding-32"></div>  
  </div>
<!-- 4번 슬라이드 -->
  <div class="w3-display-middle w3-margin-top w3-center mySlides">
    <h1 class="w3-xxlarge w3-text-grey"><span class="w3-padding w3-black w3-opacity-min">
    <i class="fa fa-quote-left"></i>
    Animal 사지마세요
    <i class="fa fa-quote-right"></i>
    </span>
    <br><br>
    </h1>    
    <div class="w3-display-topleft w3-container w3-padding-32"></div>  
  </div>  
</form>  
<!-- 슬라이드 버튼 -->
  <div class="w3-left w3-padding w3-display-left w3-xlarge" onclick="plusDivs(-1)"><i class="fa fa-arrow-left"></i></div>
  <div class="w3-right w3-padding w3-display-right w3-xlarge" onclick="plusDivs(1)"><i class="fa fa-arrow-right"></i></div>
<!-- 화면전환 -->
  <div style="text-align:center">
   <span class="dot"></span> 
   <span class="dot"></span> 
   <span class="dot"></span> 
  </div>
</div>  
</header>


















     <!--블로그,인스타그램봉사이야기주인님어디있나요? Grid -->
<!--   <div class="w3-row w3-container"id="intro"> -->
<!--     <div class="w3-center w3-padding-64"> -->
<!--       <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"></span> -->
<!--     </div> -->
<!--     <div class="w3-col l3 m6 w3-container w3-pale-red w3-padding-16 " > -->
<!--       <h3>BLOG</h3> -->
<!--       <p>동물이야기를 보러갈래요</p> -->
<!--         <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()">GoGo</button></p> -->

<!--     </div> -->

<!--     <div class="w3-col l3 m6 w3-pale-green w3-container w3-padding-16"> -->
<!--        <h3>Instagram</h3> -->
<!--       <p>동물이야기를 보러갈래요</p> -->
<!--        <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()">GoGo</button></p> -->

<!--     </div> -->

<!--     <div class="w3-col l3 m6 w3-pale-yellow w3-container w3-padding-16"> -->
<!--          <h3>봉사이야기</h3> -->
<!--       <p>보호소 봉사이야기 보러갈래요</p> -->
<!--        <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()">GoGo</button></p> -->
<!--     </div> -->

<!--     <div class="w3-col l3 m12 w3-pale-blue w3-container w3-padding-16"> -->
<!--            <h3>주인님어디있나요?</h3> -->
<!--       <p>분양받으러갈래요</p> -->
<!--  <p class="w3-padding-16"><button class="w3-button w3-black" onclick="myFunction()">GoGo</button></p> -->
<!--     </div> -->
<!--         <div class="w3-col 16 m6 w3-black w3-container w3-padding-19"style="height:800"> -->
<!--         <iframe src="https://www.youtube.com/embed/jSJM9iOiQ1g"  frameborder="0" allowfullscreen></iframe> -->
<!--         <p>.</p> -->
<!--         <p>.</p> -->
        
<!--         </div> -->
<!--    <div class="w3-col 16 m6 lg3 w3-light-gray w3-container w3-padding-19"> -->
<!--    <h3>주인님어디있나요?</h3> -->
<!--       <p>주인에게 버려지고,</p> -->
<!--       <p>사랑받지 못하던 아이들</p> -->
<!--       <br> -->
<!--       <p>주인을 찾도록</p> -->
<!--       <p>도와주세요</p> -->
      
<!--    </div> -->
         
<!--     </div> -->
<!--     Grid -->
<!--   <div class="w3-row w3-container"> -->
<!--     <div class="w3-center w3-padding-64"> -->
<!--       <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"></span> -->
<!--     </div>공백 -->
    
<!--     <div class="w3-col lg9 w3-light-grey w3-container w3-padding-19"> -->
<!--       <p>실시간 실종동물 등록 현황을 확인해보세요!</p> -->
<!--       <h3>000000000000마리 / 000000000000마리 / 000000000000마리</h3> -->
<!--       <h5>오늘까지신고된실종동물 / 분양된동물 / 안락사동물</h5> -->
<!--     </div> -->
<!--   </div> -->
<!--     Grid -->
<!--   <div class="w3-row-padding" id="about"> -->
<!--     <div class="w3-center w3-padding-64"> -->
<!--       <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">실종동물찾기</span> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team1.jpg" alt="John" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Jane Doe</h3> -->
<!--           <p class="w3-opacity">CEO & Founder</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">Contact</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team2.jpg" alt="Mike" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Mike Ross</h3> -->
<!--           <p class="w3-opacity">Art Director</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">Contact</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team3.jpg" alt="Jane" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>John Doe</h3> -->
<!--           <p class="w3-opacity">Designer</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">Contact</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team1.jpg" alt="John" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Jane Doe</h3> -->
<!--           <p class="w3-opacity">CEO & Founder</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">Contact</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team2.jpg" alt="Mike" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Mike Ross</h3> -->
<!--           <p class="w3-opacity">Art Director</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">Contact</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team3.jpg" alt="Jane" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>John Doe</h3> -->
<!--           <p class="w3-opacity">Designer</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">Contact</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
    
<!--     Grid -->
<!--   <div class="w3-row w3-container"> -->
<!--     <div class="w3-center w3-padding-64"> -->
<!--       <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"></span> -->
<!--     </div>공백 -->
    
<!--     <div class="w3-col lg9 w3-light-grey w3-container w3-padding-19"> -->
<!--       <p>실시간 실종동물 등록 현황을 확인해보세요!(여기서는 어떤걸로 할까? jquery/ajax)</p> -->
<!--       <h3>000000000000마리 / 000000000000마리 / 000000000000마리</h3> -->
<!--       <h5>오늘까지신고된실종동물 / 분양된동물 / 안락사동물</h5> -->
<!--     </div> -->
<!--   </div> -->
  
<!--    <!-- Grid --> -->
<!--   <div class="w3-row-padding" id="about"> -->
<!--     <div class="w3-center w3-padding-64"> -->
<!--       <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">자원봉사</span> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team1.jpg" alt="John" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Jane Doe</h3> -->
<!--           <p class="w3-opacity">CEO & Founder</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">보러갈래요</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team2.jpg" alt="Mike" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Mike Ross</h3> -->
<!--           <p class="w3-opacity">Art Director</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">보러갈래요</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team3.jpg" alt="Jane" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>John Doe</h3> -->
<!--           <p class="w3-opacity">Designer</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">보러갈래요</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team1.jpg" alt="John" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Jane Doe</h3> -->
<!--           <p class="w3-opacity">CEO & Founder</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">보러갈래요</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team2.jpg" alt="Mike" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>Mike Ross</h3> -->
<!--           <p class="w3-opacity">Art Director</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">보러갈래요</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <div class="w3-card-4"> -->
<!--         <img src="/w3images/team3.jpg" alt="Jane" style="width:100%"> -->
<!--         <div class="w3-container"> -->
<!--           <h3>John Doe</h3> -->
<!--           <p class="w3-opacity">Designer</p> -->
<!--           <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p> -->
<!--           <p><button class="w3-button w3-light-grey w3-block">보러갈래요</button></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
  
 
<!-- </div>  -->
<!-- </div> -->
<!-- </div> -->
<!-- <!--감싸는 화면 div--> -->
<!-- <!-- Footer --> -->

<!-- <footer class="w3-container w3-padding-32 w3-light-grey w3-center"> -->
<!--   <h4>Footer</h4> -->
<!--   <a href="#" class="w3-button w3-black w3-margin"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a> -->
<!--   <div class="w3-xlarge w3-section"> -->
<!--     <i class="fa fa-facebook-official w3-hover-opacity"></i> -->
<!--     <i class="fa fa-instagram w3-hover-opacity"></i> -->
<!--     <i class="fa fa-snapchat w3-hover-opacity"></i> -->
<!--     <i class="fa fa-pinterest-p w3-hover-opacity"></i> -->
<!--     <i class="fa fa-twitter w3-hover-opacity"></i> -->
<!--     <i class="fa fa-linkedin w3-hover-opacity"></i> -->
<!--   </div> -->
<!--   <p>Powered by <a href="#" title="W3.CSS" target="_blank" class="w3-hover-text-green">shelter animal</a></p> -->
<!-- </footer> -->
<script>
//자동화면전환
var slideIndex = 0;
showSlides();
function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 3000);
}
//클릭시 화면 전환
function plusDivs(n) {
	showDivs(slideIndex += n);
}
function currentDiv(n) {
	showDivs(slideIndex = n);
}
function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
</body>
</html>