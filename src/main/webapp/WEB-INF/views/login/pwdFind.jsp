<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경</title>
<script type="text/javascript">
	function emailCheck(userEmail) {
		var xmlhttp = new XMLHttpRequest();
		var url = "${root}/emailChk.animal?email=" + userEmail;
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("email_check").style.color = "#f04005";
				var result = xmlhttp.responseText;
				result = result.replace(/\s+/, "");//왼쪽 공백제거
				result = result.replace(/\s+$/g, "");//오른쪽 공백제거
				result = result.replace(/\n/g, "");//행바꿈제거
				result = result.replace(/\r/g, "");//엔터제거
				var showTxt;
				if (result == "ok") {
					showTxt = "등록되지 않은 이메일 입니다.";
				} else {
					window.location
							.replace("http://${myIP}/animal/pwdRequest.animal?email="
									+ userEmail);
				}
				document.getElementById("email_check").innerHTML = showTxt;
			}
		}
		try {
			xmlhttp.open("GET", url, true);
			xmlhttp.send();
		} catch (e) {
			alert("unable to connect to server");
		}
	}
	$(document).ready(function() {
		$("#btn").click(function() {
			var userEmail = $("#email").val();
			if (userEmail.indexOf("@") == -1) {
				return;
			} else {
				emailCheck(userEmail);
			}
		})
	});
</script>
<%@include file="../common/header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|East+Sea+Dokdo|Noto+Sans+KR|Noto+Serif+KR|Sunflower:300|Yeon+Sung" rel="stylesheet">
<style>
.w3-xxlarge, h2, span, .register_advise{font-family: 'Noto Sans KR', sans-serif;}
.w3-half{
	margin-left: 23%;
}
</style>
</head>
<body>
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
<div class="w3-display-container-fluid">
  <img class="w3-image" src="https://images.unsplash.com/photo-1516139008210-96e45dccd83b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ac07676efc2ca5b11b548d8ae01301ba&auto=format&fit=crop&w=2000&q=80" width="100%" style="max-height:1000px">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-darkgrey">
	    <span class="w3-padding w3-opacity-min">
	    <b>회원가입시 입력한 이메일을 <br> 입력해주세요.</b>
	    </span>
    </h1>
	<br><br>
	<div class="w3-half">    
    <h6><input class="w3-input" type="text" id="email" name="email"></h6>
    <p class="register_advise email_check" id="email_check" style="text-align: center;"></p>
    </div>
    <br><br><br>
    <div class="w3-half">
    <button class="w3-button w3-black w3-opacity w3-hover-opacity-off" id="btn" ><span style="font-size: 16px;">전송</span></button>
    </div>
  </div>
</div>  
</header>

</body>
</html>