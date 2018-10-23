<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Animal Shelter</title>
<meta charset="UTF-8">
</head>
<body>
	<%@include file="WEB-INF/views/common/header.jsp"%>
	<!-- content -->
	<%@include file="WEB-INF/views/main.jsp"%>
	<%@include file="WEB-INF/views/common/footer.jsp"%>
	<a href="${root}/sidebar/parcel.animal" value="parcel" id=article class="w3-bar-item">내가 쓴 글</a>

	<div id="content"></div>
</body>
</html>