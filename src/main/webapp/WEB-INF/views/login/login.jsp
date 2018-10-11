<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
	Cookie cookie[] = request.getCookies();

	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (request.getProtocol().equals("HTTP/1.1")) {
		response.setHeader("Cache-Control", "no-cache");
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="913701006072-m83o6h66ff1f5cu966hva2k0p57g3s4e.apps.googleusercontent.com">
<title>login</title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<style type="text/css">
A:link {
	text-decoration: none;
	color: #646464;
}

A:visited {
	text-decoration: none;
	color: #646464;
}

A:active {
	text-decoration: none;
	color: #646464;
}

A:hover {
	text-decoration: none;
	color: #646464;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="login" align="center">
		<h1>로그인</h1>
		<form name="login_form" method="post" action="<%=root%>/member">
				<input type="hidden" name="act" value="login">
		<input type="text" class="form-control" id="email" name="email" size="54" placeholder="E-mail"><br>
		<input type="password" class="form-control" id="pwd" name="pwd" size="54" placeholder="비밀번호"
			style="border: 1px solid gray;"><br>
		<!-- <div style="text-align:left">
			<input type="checkbox" name="keepLogin"><span>로그인 상태 유지</span> <br>
		</div> -->
		<br>
		<div class="responseStr">
			<%
			String str = (String)request.getAttribute("str");
			if(str!=null && str!=""){
				%>
				<%=str %>
				<%
			}
			%>
		</div>
		<input type="submit" class="form-control" name="btn_login" value="로그인" style="background:black;color:#FFFFFF;font-size:18px">
		</form>
		<br>
		<div class="main">
			<div style="font-size:16px;">
				<p>
					<a href="<%=root%>/register/register_basic.jsp" style="color:black"><b>회원가입</b></a>
				</p>
			</div>
			<div style="font-size:16px;">
				<p>
					<a href="<%=root%>/login/idsearch.jsp" style="color:black"><b>아이디 찾기</b></a>
				</p>
			</div>
			<div style="font-size:16px;">
				<p><b>비밀번호 찾기</b></p>
			</div>
		</div>
		<br>
		<table style="border-spacing: 5px;">
			<tr>
				<td>
					<div style="text-align: center;"
						class="fb-login-button" data-width="400" data-max-rows="1"
						data-size="large" data-button-type="continue_with"
						data-show-faces="false" data-auto-logout-link="false"
						data-use-continue-as="false"></div>
				</td>
			</tr>
			<tr>
				<td>
					<div style="text-align: left; " class="g-signin2"
						data-onsuccess="onSignIn" data-width="400" data-height="40"
						data-longtitle="true"></div>
				</td>
			</tr>
		</table>
	</div>
</div>
	<div id="fb-root"></div>
	<!-- Facebook login start -->
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.1&appId=2231997260364748&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- Facebook login end -->
	<!-- Google login start -->
	<script>
		function onSignIn(googleUser) {
			// Useful data for your client-side scripts:
			var profile = googleUser.getBasicProfile();
			console.log("ID: " + profile.getId()); // Don't send this directly to your server!
			console.log('Full Name: ' + profile.getName());
			console.log('Given Name: ' + profile.getGivenName());
			console.log('Family Name: ' + profile.getFamilyName());
			console.log("Image URL: " + profile.getImageUrl());
			console.log("Email: " + profile.getEmail());

			// The ID token you need to pass to your backend:
			var id_token = googleUser.getAuthResponse().id_token;
			console.log("ID Token: " + id_token);
		};
	</script>
	<!-- Google login end -->
	<br>
</body>
</html>