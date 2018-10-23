<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
	String t1width = "30%";
	String t2width = "70%";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=root%>/css/style.css" type="text/css"
	media="all">
<title>이메일로 찾기</title>
</head>
<body>
	<div style="width: 500px">
		<table style="width: 100%;">
			<tbody>
				<tr style="height: 25px;">
					<td style="width: <%=t1width%>; height: 21px;"><div
							class="register_form_txt">
							<h2>이름</h2>
						</div></td>
					<td style="width:<%=t2width%>; height: 21px;"><input
						type="text" id="name" value="" size="54" placeholder="홍길동"
						name="name" required maxlength="5" style="border: 1px solid gray;"></td>
				</tr>
				<tr style="height: 25px;">
					<td style="width: <%=t1width%>; height: 21px;"><div
							class="register_form_txt">
							<h2>E-mail</h2>
						</div></td>
					<td style="width: <%=t2width%>; height: 21px;"><input
						type="email" id="email" value="" size="54" required name="id"
						maxlength="30" placeholder="spam@nipa0711.net"
						style="border: 1px solid gray;"></td>
				</tr>
				<tr style="height: 25px;">
					<td style="width: <%=t1width%>; height: 21px;"><h2></h2></td>
					<td style="width: <%=t2width%>; height: 21px;"><input
						type="submit" name="btn_findID" value="아이디 찾기"><br></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>