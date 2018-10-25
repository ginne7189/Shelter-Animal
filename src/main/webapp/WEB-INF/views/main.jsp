<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <style> -->
<!-- /* html,body,h1,h2,h3,h4,h5,h6 {font-family:"Karma", sans-serif} */ -->
<!-- /* .mySlides {display:none} */ -->
<!-- /* .w3-tag, .fa {cursor:pointer} */ -->
<!-- /* .w3-tag {height:15px;width:15px;padding:0;margin-top:6px} */ -->
<!-- </style> -->
<title>JSP</title>
<style>
body, html {
	height: 100%
}

body, h1, h2, h3, h4, h5, h6 {
	font-family: "Amatic SC", sans-serif
}

.menu {
	display: none
}

.bgimg {
	background-repeat: no-repeat;
	background-size: cover;
	background-image: url("/w3images/pizza.jpg");
	min-height: 90%;
}
</style>
</head>
<body>
	<div class="w3-content" style="max-width: 1100px; margin-top: 80px; margin-bottom: 80px">
		<!-- Slideshow -->
		<div class="w3-container">

			<div class="w3-display-container mySlides">
				<img src="http://newsimg.hankookilbo.com/2016/06/03/201606031285187848_1.jpg" width="1068px" height="600px">
				<div class="w3-display-topleft w3-container w3-padding-32"></div>
			</div>

			<div class="w3-display-container mySlides">
				<img src="http://t1.daumcdn.net/liveboard/happypet/69dde5f0eb634956babab18a3dc3650b.JPG" width="1068px" height="600px">
				<div class="w3-display-middle w3-container w3-padding-32"></div>
			</div>

			<div class="w3-display-container mySlides">
				<img src="http://www.petzzi.com/data/editor/1511/b295f47e14d164839f15670d23519991_1446520983_6457.jpg" width="1068px" height="600px">
				<div class="w3-display-topright w3-container w3-padding-32"></div>
			</div>

			<div class="w3-display-container mySlides">
				<img src="http://img.visualdive.co.kr/sites/2/2015/09/12.jpg" width="1068px" height="600px">
				<div class="w3-display-topright w3-container w3-padding-32"></div>
			</div>
			<!-- Slideshow next/previous buttons -->
			<div class="w3-container w3-dark-grey w3-padding w3-xlarge">
				<div class="w3-left" onclick="plusDivs(-1)">
					<i class="fa fa-arrow-circle-left w3-hover-text-teal"></i>
				</div>
				<div class="w3-right" onclick="plusDivs(1)">
					<i class="fa fa-arrow-circle-right w3-hover-text-teal"></i>
				</div>

				<div class="w3-center">
					<span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
					<span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
					<span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
					<span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
				</div>
			</div>
		</div>
		<!--블로그,인스타그램봉사이야기주인님어디있나요? Grid -->
		<div class="w3-row w3-container" id="intro">
			<div class="w3-center w3-padding-64">
				<span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"></span>
			</div>
			<div class="w3-col l3 m6 w3-container w3-pale-red w3-padding-16 ">
				<h3>BLOG</h3>
				<p>동물이야기를 보러갈래요</p>
				<p class="w3-padding-16">
					<button class="w3-button w3-black" onclick="myFunction()">GoGo</button>
				</p>

			</div>

			<div class="w3-col l3 m6 w3-pale-green w3-container w3-padding-16">
				<h3>Instagram</h3>
				<p>동물이야기를 보러갈래요</p>
				<p class="w3-padding-16">
					<button class="w3-button w3-black" onclick="myFunction()">GoGo</button>
				</p>

			</div>

			<div class="w3-col l3 m6 w3-pale-yellow w3-container w3-padding-16">
				<h3>봉사이야기</h3>
				<p>보호소 봉사이야기 보러갈래요</p>
				<p class="w3-padding-16">
					<button class="w3-button w3-black" onclick="myFunction()">GoGo</button>
				</p>
			</div>

			<div class="w3-col l3 m12 w3-pale-blue w3-container w3-padding-16">
				<h3>주인님어디있나요?</h3>
				<p>분양받으러갈래요</p>
				<p class="w3-padding-16">
					<button class="w3-button w3-black" onclick="myFunction()">GoGo</button>
				</p>
			</div>
			<div class="w3-col 16 m6 w3-black w3-container w3-padding-19" style="height: 800">
				<iframe src="https://www.youtube.com/embed/jSJM9iOiQ1g" frameborder="0" allowfullscreen></iframe>
				<p>.</p>
				<p>.</p>

			</div>
			<div class="w3-col 16 m6 lg3 w3-light-gray w3-container w3-padding-19">
				<h3>주인님어디있나요?</h3>
				<p>주인에게 버려지고,</p>
				<p>사랑받지 못하던 아이들</p>
				<br>
				<p>주인을 찾도록</p>
				<p>도와주세요</p>

			</div>

		</div>
		<!-- Grid -->
		<div class="w3-row w3-container">
			<div class="w3-center w3-padding-64">
				<span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"></span>
			</div>
			<!--공백-->

			<div class="w3-col lg9 w3-light-grey w3-container w3-padding-19">
				<p>실시간 실종동물 등록 현황을 확인해보세요!</p>
				<h3>000000000000마리 / 000000000000마리 / 000000000000마리</h3>
				<h5>오늘까지신고된실종동물 / 분양된동물 / 안락사동물</h5>
			</div>
		</div>
		<!-- Grid -->
		<div class="w3-row-padding" id="about">
			<div class="w3-center w3-padding-64">
				<span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">실종동물찾기</span>
			</div>

			<div class="w3-third w3-margin-bottom">
				<div class="w3-card-4">
					<img src="/w3images/team1.jpg" alt="John" style="width: 100%">
					<div class="w3-container">
						<h3>Jane Doe</h3>
						<p class="w3-opacity">CEO & Founder</p>
						<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">Contact</button>
						</p>
					</div>
				</div>
			</div>

			<div class="w3-third w3-margin-bottom">
				<div class="w3-card-4">
					<img src="/w3images/team2.jpg" alt="Mike" style="width: 100%">
					<div class="w3-container">
						<h3>Mike Ross</h3>
						<p class="w3-opacity">Art Director</p>
						<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">Contact</button>
						</p>
					</div>
				</div>
			</div>

			<div class="w3-third w3-margin-bottom">
				<div class="w3-card-4">
					<img src="/w3images/team3.jpg" alt="Jane" style="width: 100%">
					<div class="w3-container">
						<h3>John Doe</h3>
						<p class="w3-opacity">Designer</p>
						<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">Contact</button>
						</p>
					</div>
				</div>
			</div>
			<div class="w3-third w3-margin-bottom">
				<div class="w3-card-4">
					<img src="/w3images/team1.jpg" alt="John" style="width: 100%">
					<div class="w3-container">
						<h3>Jane Doe</h3>
						<p class="w3-opacity">CEO & Founder</p>
						<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">Contact</button>
						</p>
					</div>
				</div>
			</div>

			<div class="w3-third w3-margin-bottom">
				<div class="w3-card-4">
					<img src="/w3images/team2.jpg" alt="Mike" style="width: 100%">
					<div class="w3-container">
						<h3>Mike Ross</h3>
						<p class="w3-opacity">Art Director</p>
						<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">Contact</button>
						</p>
					</div>
				</div>
			</div>

			<div class="w3-third w3-margin-bottom">
				<div class="w3-card-4">
					<img src="/w3images/team3.jpg" alt="Jane" style="width: 100%">
					<div class="w3-container">
						<h3>John Doe</h3>
						<p class="w3-opacity">Designer</p>
						<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">Contact</button>
						</p>
					</div>
				</div>
			</div>

			<!-- Grid -->
			<div class="w3-row w3-container">
				<div class="w3-center w3-padding-64">
					<span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16"></span>
				</div>
				<!--공백-->

				<div class="w3-col lg9 w3-light-grey w3-container w3-padding-19">
					<p>실시간 실종동물 등록 현황을 확인해보세요!(여기서는 어떤걸로 할까? jquery/ajax)</p>
					<h3>000000000000마리 / 000000000000마리 / 000000000000마리</h3>
					<h5>오늘까지신고된실종동물 / 분양된동물 / 안락사동물</h5>
				</div>
			</div>

			<!-- Grid -->
			<div class="w3-row-padding" id="about">
				<div class="w3-center w3-padding-64">
					<span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">자원봉사</span>
				</div>

				<div class="w3-third w3-margin-bottom">
					<div class="w3-card-4">
						<img src="/w3images/team1.jpg" alt="John" style="width: 100%">
						<div class="w3-container">
							<h3>Jane Doe</h3>
							<p class="w3-opacity">CEO & Founder</p>
							<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
							<p>
								<button class="w3-button w3-light-grey w3-block">보러갈래요</button>
							</p>
						</div>
					</div>
				</div>

				<div class="w3-third w3-margin-bottom">
					<div class="w3-card-4">
						<img src="/w3images/team2.jpg" alt="Mike" style="width: 100%">
						<div class="w3-container">
							<h3>Mike Ross</h3>
							<p class="w3-opacity">Art Director</p>
							<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
							<p>
								<button class="w3-button w3-light-grey w3-block">보러갈래요</button>
							</p>
						</div>
					</div>
				</div>

				<div class="w3-third w3-margin-bottom">
					<div class="w3-card-4">
						<img src="/w3images/team3.jpg" alt="Jane" style="width: 100%">
						<div class="w3-container">
							<h3>John Doe</h3>
							<p class="w3-opacity">Designer</p>
							<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
							<p>
								<button class="w3-button w3-light-grey w3-block">보러갈래요</button>
							</p>
						</div>
					</div>
				</div>
				<div class="w3-third w3-margin-bottom">
					<div class="w3-card-4">
						<img src="/w3images/team1.jpg" alt="John" style="width: 100%">
						<div class="w3-container">
							<h3>Jane Doe</h3>
							<p class="w3-opacity">CEO & Founder</p>
							<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
							<p>
								<button class="w3-button w3-light-grey w3-block">보러갈래요</button>
							</p>
						</div>
					</div>
				</div>

				<div class="w3-third w3-margin-bottom">
					<div class="w3-card-4">
						<img src="/w3images/team2.jpg" alt="Mike" style="width: 100%">
						<div class="w3-container">
							<h3>Mike Ross</h3>
							<p class="w3-opacity">Art Director</p>
							<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
							<p>
								<button class="w3-button w3-light-grey w3-block">보러갈래요</button>
							</p>
						</div>
					</div>
				</div>

				<div class="w3-third w3-margin-bottom">
					<div class="w3-card-4">
						<img src="/w3images/team3.jpg" alt="Jane" style="width: 100%">
						<div class="w3-container">
							<h3>John Doe</h3>
							<p class="w3-opacity">Designer</p>
							<p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
							<p>
								<button class="w3-button w3-light-grey w3-block">보러갈래요</button>
							</p>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!--감싸는 화면 div-->
	<!-- Footer -->

	<footer class="w3-container w3-padding-32 w3-light-grey w3-center">
		<h4>Footer</h4>
		<a href="#" class="w3-button w3-black w3-margin">
			<i class="fa fa-arrow-up w3-margin-right"></i>To the top
		</a>
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i class="fa fa-instagram w3-hover-opacity"></i> <i class="fa fa-snapchat w3-hover-opacity"></i> <i class="fa fa-pinterest-p w3-hover-opacity"></i> <i class="fa fa-twitter w3-hover-opacity"></i> <i class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Powered by
			<a href="#" title="W3.CSS" target="_blank" class="w3-hover-text-green">shelter animal</a>
		</p>
	</footer>
	<script>
		// Slideshow
		var slideIndex = 1;
		showDivs(slideIndex);

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
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			;
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-white";
		}
	</script>
</body>
</html>