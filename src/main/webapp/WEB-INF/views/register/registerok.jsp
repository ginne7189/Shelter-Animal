<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최종가입이 완료되었습니다.</title>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<h1>최종가입이 완료되었습니다.</h1>
	<h5 style="text-decoration: line-through">추후 로그인 단에서 이메일 미인증자는 그냥 걸러낼겁니다.</h5>
	<h5 style="text-decoration: line-through">회원가입시 member 테이블의 valid는 X이며, 이메일 인증이 확인시 O로 변경됩니다.</h5>
	<br>
	<h5 style="text-decoration: line-through">로그인시에는 아이디 존재를 확인하고</h5>
	<h5 style="text-decoration: line-through">있다면, VALID를 조회하여 O,X를 체크 후</h5>
	<h5 style="text-decoration: line-through">O에 한해서 로그인을 시킬겁니다.</h5>
	<br>
	<h5>처리완료</h5>

	<h4>db에 트리거인가 이용하면 일정시간 이후에는 회원가입을 무효처리 할 수 있다던데 귀찮습니다 ㅇㅇ</h4>

</body>
</html>