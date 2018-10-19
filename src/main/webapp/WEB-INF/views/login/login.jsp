<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="913701006072-m83o6h66ff1f5cu966hva2k0p57g3s4e.apps.googleusercontent.com">
<title>로그인</title>
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
<%@include file="../common/header.jsp"%>
<div style="width: 600px; margin: 0 auto;">
<div class="container">
	<div class="login" align="center">
	<br>
      <div style="text-align:center"><h2><b>로그인</b></h2>
      <font color="#D5D5D5">―――――――――――――――――――――――――――――――――――――――</font><br><br></div>
		<form name="login_form" method="post" action="${root }/login.animal">
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
				<h5 style="color: red;"><%=str %></h5>
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
					<a href="${root }/register.animal" style="color:black"><b>회원가입</b></a>
				</p>
			</div>
			<div style="font-size:16px;">
				<p>
					<a href="${root }/pwdFind.animal" style="color:black"><b>비밀번호 찾기</b></a>
				</p>
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
</div>

	<!-- <div id="fb-root"></div>
	Facebook login start
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
	Facebook login end -->
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