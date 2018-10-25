<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<div style="width: 600px; margin: 0 auto;">
		<div class="container">
			<div class="login" align="center">
				<br>
				<div style="text-align: center">
					<h2>
						<b>로그인</b>
					</h2>
					<font color="#D5D5D5">―――――――――――――――――――――――――――――――――――――――</font><br>
					<br>
				</div>
				<form name="login_form" method="post" action="${root }/login.animal">
					<input type="text" class="form-control" id="email" name="email" size="54" placeholder="E-mail">
					<br>
					<input type="password" class="form-control" id="pwd" name="pwd" size="54" placeholder="비밀번호" style="border: 1px solid gray;">
					<br>
					<br>
					<div class="responseStr">
						<%
							String str = (String) request.getAttribute("str");
							if (str != null && str != "") {
						%>
						<h5 style="color: red;"><%=str%></h5>
						<%
							}
						%>
					</div>
					<input type="submit" class="form-control" name="btn_login" value="로그인" style="background: black; color: #FFFFFF; font-size: 18px">
				</form>
				<br>
				<div class="main">
					<div style="font-size: 16px;">
						<p>
							<a href="${root }/register.animal" style="color: black">
								<b>회원가입</b>
							</a>
						</p>
					</div>
					<div style="font-size: 16px;">
						<p>
							<a href="${root }/pwdFind.animal" style="color: black">
								<b>비밀번호 찾기</b>
							</a>
						</p>
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
	<br>
</body>
</html>