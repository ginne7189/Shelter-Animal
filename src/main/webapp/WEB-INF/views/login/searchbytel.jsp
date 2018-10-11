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
<title>전화번호로 찾기</title>
<script type="text/javascript">
function telChk(){
	var text = document.getElementById('tel').value;	
	document.getElementById('tel').value=phone_format(text);
}

function phone_format(num){
	num = num.replace(/[^0-9]/g, '');
    return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
}
</script>
</head>
<body>
	<div style="width: 500px">
		<table>
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
							<h2>연락처</h2>
						</div></td>
					<td style="width: <%=t2width%>; height: 21px;"><input
						type="tel" class="tel" id="tel" value="" size="54"
						placeholder="01012345678" onkeyup="javascript:telChk()" required
						name="tel" maxlength="13" style="border: 1px solid gray;"></td>
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