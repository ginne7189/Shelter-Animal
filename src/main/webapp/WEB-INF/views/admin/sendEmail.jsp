<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메일 보내기</title>
<!-- Summernote start -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<!-- Summernote End -->
<script type="text/javascript">
$(document).ready(function() {
	$("#btnSend").click(function() {
		var receiver = $("#selectReceiver option:selected").val();
		var title = $("#emailSubject").val();
		var content = jQuery('#summernote').summernote('code');
		
		$("#content").val(content);		
		$("#title").val(title);		
		$("#receiver").val(receiver);		
		//$.post("http://${myIP}/animalshelter/sendEmail.animal", {receiver:receiver,title:title, content:content}); // 단순전송
		$("#form").submit();
	});	
});
</script>
</head>
<%@include file="../common/header.jsp"%>
<body>
	<div style="width: 800px; margin:0 auto;">
	<form style="display: hidden" action="http://${myIP}/animalshelter/sendEmail.animal" method="POST" id="form">
	<select id="selectReceiver" name="selectReceiver">
			<option value="5000" selected="selected">전체회원</option>
			<option value="2000">관계자</option>
			<option value="1000">일반회원</option>
		</select> <input id="emailSubject" type="text" placeholder="이메일 제목을 입력해주세요" value="" size="80"><br><br>
		<textarea class="form-control" placeholder="내용을 입력하세요" id="summernote"
			name="editordata"></textarea>
		<br>
		<script>
		$.noConflict(true);
		jQuery('#summernote').summernote({
				height : 400, // set editor height
				minHeight : null, // set minimum height of editor
				maxHeight : null, // set maximum height of editor
				focus : true,
				disableDragAndDrop: true
			// set focus to editable area after initializing summernote
			});
		</script>
		<input type="button" id="btnSend" value="전송하기">		
 		 	<input type="hidden" id="content" name="content" value=""/>
 		 	<input type="hidden" id="receiver" name="receiver" value=""/>
 		 	<input type="hidden" id="title" name="title" value=""/>
		</form>
	</div>
</body>
</html>