<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<%
	String email = (String) request.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경하기</title>
<script type="text/javascript">
	function pwdLengthCheck() {
		var x = document.getElementsByClassName("pwd_advise");
		var text = document.getElementById('pwd').value;
		var result;
		if (text.length < 8) {
			result = "비밀번호가 너무 짧습니다.";
		} else {
			result = "사이즈는 적합합니다.";
		}

		pwdReset();
		x[0].innerText = result;
	}

	function pwdReset() {
		var text = document.getElementById('pwdChk');

		if (text != null) {
			document.getElementById('pwdChk').value = null;
			document.getElementsByClassName("pwd_check")[0].innerText = "";
		}
	}

	function pwdSameChk() {
		var x = document.getElementsByClassName("pwd_check");
		var result;
		if (document.getElementById("pwd").value != document
				.getElementById("pwdChk").value) {
			result = "비밀번호가 다릅니다.";
		} else {
			result = "비밀번호가 일치합니다.";
		}

		x[0].innerText = result;
	}
</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<div align="center">
		<form name="pwdReset_form" method="post" action="${root }/pwdReset.animal?email=<%=email %>" id="pwdReset_form" onsubmit="return checkResetPwd()">
			비밀번호 입력
			<input type="password" id="pwd" name="pwd" value="" maxlength="16" size="54" placeholder="패스워드" pattern=".{8,16}" required maxlength="16" title="8 to 16 characters" onkeyup="javascript:pwdLengthCheck()" style="width: 320px; height: 45px;">
			<br> 비밀번호 확인
			<input type="password" id="pwdChk" name="pwdChk" value="" maxlength="16" size="54" placeholder="비밀번호 확인" required maxlength="16" onkeyup="javascript:pwdSameChk()" style="width: 320px; height: 45px;">
			<br>
			<p class="register_advise pwd_check" style="text-align: center; color: red;"></p>
			<br>
			<button type="submit" name="btn_resetPwd" style="margin-left: 60px; width: 450px; height: 50px;">
				<font size="5"><b>비밀번호변경</b></font>
			</button>
		</form>
	</div>
</body>
</html>