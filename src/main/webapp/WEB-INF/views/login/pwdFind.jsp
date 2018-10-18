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
				document.getElementById("email_check").style.color = "red";
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
							.replace("http://${myIP}/animalshelter/pwdRequest.animal?email="
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
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<div align="center">
		회원가입시 입력한 이메일을 입력해주세요. <br> 
		<input type="text" id="email" name="email"> <input type="button" id="btn" value="전송"><br>
		<p class="register_advise email_check" id="email_check"
			style="text-align: center;"></p>
	</div>
</body>
</html>