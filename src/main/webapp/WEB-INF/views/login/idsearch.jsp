<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
	String t1width = "50%";
	String t2width = "50%";

	int select = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=root%>/css/style.css" type="text/css"
	media="all">
<title>아이디 찾기</title>
<style>
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
	<div>
		<table style="width: 60%; border-spacing: 100px; text-align: center;">
			<tbody>
				<tr>
					<td style="width:<%=t1width%>;"><div
							class="register_form_txt">

							<a href="<%=root%>/login/searchbytel.jsp"><img
								src="<%=root%>/img/tel.png" width="250px" height="250px"></a><br>
							<h2 >
								<a href="<%=root%>/login/searchbytel.jsp">휴대폰 번호로 찾기</a>
							</h2>
						</div></td>
					<td style="width:<%=t2width%>;"><a
						href="<%=root%>/login/searchbyemail.jsp"><img
							src="<%=root%>/img/email.png" width="250px" height="250px"></a><br>
						<h2>
							<a href="<%=root%>/login/searchbyemail.jsp">이메일로 찾기</a>
						</h2></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>