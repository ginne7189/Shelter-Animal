<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@include file="../common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- 썸머노트 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<!-- w3.CSS -->	
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>후원 글쓰기 페이지</title>
<style>
.allDiv{
	width:100%;
	margin-top: 50px;
}
.sumDiv, .inpDiv{
	width:80%;
	margin-top: 50px;
}
</style>
</head>
<body>
<div class="container allDiv">
	<div class="container sumDiv">
	<form id="writeForm" method="post" action="">
	<div class="w3-row-padding">
		<label>제목</label>
	    <input class="w3-input" type="text" id="subject" name="subject" palaceholder="제목을 입력해주세요">
	  <div class="w3-half">
	    <label>품종</label>
	    <input class="w3-input" type="text" id="kind" name="kind" placeholder="실종된 동물의 품종을 입력해주세요">
	  </div>
	  <div class="w3-half">
	    <label>나이</label>
	    <input class="w3-input" type="text" id="age" name="age" placeholder="실종된 동물의 나이를 입력해주세요">
	  </div>
	  
	  <div class="w3-half">
	    <label>성별</label>
	    <input class="w3-input" type="text" id="gender" name="gender" placeholder="실종된 동물의 성별을 입력해주세요">
	  </div>
	  <div class="w3-half">
	    <label>지역</label>
	    <input class="w3-input" type="text" id="location" name="location" placeholder="지역을 입력해주세요">
	  </div>
	  
	  <div class="w3-half">
	    <label>체중</label>
	    <input class="w3-input" type="text" id="weight" name="weight" placeholder="실종된 동물의 체중을 입력해주세요">
	  </div>
	  <div class="w3-half">
	    <label>특징</label>
	    <input class="w3-input" type="text" id="feature" name="feature" placeholder="실종된 동물의 특징을 입력해주세요">
	  </div>
	   <div class="w3-half">
	    <label>전화번호</label>
	    <input class="w3-input" type="text" id="tel" name="tel" placeholder="실종된 동물의 전화번호을 입력해주세요">
	  </div>
	   <div class="w3-half">
	    <label>실종날짜</label>
	    <input class="w3-input" type="text" id="date" name="date" placeholder="실종된 날짜를 입력해주세요">
	  </div>
	</div>
	<br>
	  <textarea id="summernote" name="content"></textarea>
	  <br>
	<button class="w3-button w3-block w3-teal"><span id="registerBtn" >등록하기</span></button>
	</form>
	</div>
</div>
<script>
$(document).ready(function() {

	jQuery('#summernote').summernote({
		minHeight: "500",
		focus: true,
		lang: 'ko-KR',
        callbacks: { // 콜백을 사용
            // 이미지를 업로드할 경우 이벤트를 발생
        onImageUpload: function(files, editor, welEditable) {
           sendFile(files[0], this);
       }
        }
    }); 
	
	function sendFile(file, editor) {
	    // 파일 전송을 위한 폼생성
	      data = new FormData();
	       data.append("uploadFile", file);
	       $.ajax({ // ajax를 통해 파일 업로드 처리
	           data : data,
	           type : "POST",
	           url : "${root}/parcel/photoUpload.animal",
	           cache : false,
	           contentType : false,
	           processData : false,
	           success : function(data) { // 처리가 성공할 경우
	            // 에디터에 이미지 출력
	              jQuery(editor).summernote('editor.insertImage', "${root}/upload"+data.url);
	           }
	       });     
	}
	$("#registerBtn").click(function() {
		if($("#subject").val() == '') {
			alert("제목 입력!!!");
			return;
		} else if($("#kind").val() == '') {
			alert("내용 입력!!!");
			return;
		} else if($("#age").val() == '') {
			alert("내용 입력!!!");
			return;
		} else if($("#gender").val() == '') {
			alert("내용 입력!!!");
			return;
		} else if($("#location").val() == '') {
			alert("내용 입력!!!");
			return;	
		} else if($("#weight").val() == '') {
			alert("내용 입력!!!");
			return;
		} else if($("#feature").val() == '') {
			alert("내용 입력!!!");
			return;	
		} else if($("#summernote").val() == '') {
			alert("내용 입력!!!");
			return;				
		} else {
			$("#writeForm").attr("action", "${root}/parcel/mwrite.animal").submit();
		}
	});
});
</script>
</body>
</html>