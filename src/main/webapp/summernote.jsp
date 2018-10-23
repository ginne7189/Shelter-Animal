<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
  <meta charset="UTF-8">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>


<script>
$(document).ready(function() {
		
	$("button").click(function() {
		
		if($("#subject").val().trim().length == 0) {
			alert("제목을 입력하시오!");
			return;
		}else if($("#content").val().trim().length == 0){
			alert("내용을 입력하시오!");
			return;
		}else {
			alert("실행되여?")
			$(".form").attr("action", "${root}/user/write.shelter");
			$(".form").submit();
		}
		
		
	
	});
});

function funLoad(){
	var Cheight = $(window).height();
	$('#container').css({'height':Cheight+'px'});
}
window.onload = funLoad;
window.onresize = funLoad;
</script>
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10">

<!---------------  여기까지 header 및 좌우여백  ------------------>
<div class="col-sm-9">
<!---------------  여기까지 sidebar  ------------------>
			<div class="row" style="text-align:right">
      		<div class="panel-group">
 			 	<div class="panel panel-default" style="background-color:#fff;border-radius:20px">
   					 <div class="panel-body" >
   					 
   						<!-- 글쓰기 시작-->
   						
	   					<form class="form" name="user_word" method="post">
	   					<input type="hidden" name="act" value="memberWriteArticle">
						<input type="hidden" name="bcode" value="1">
						<input type="hidden" name="pg" value="1">
						<input type="hidden" name="key" value="">
						<input type="hidden" name="word" value="">
   					 	<div class="row" style="margin:10px 10px 5px 10px ">
   					 		
   					 		<div class="col-sm-8">
									<input type="text" id="subject" class="form-control"  name="subject" style="border-radius:5px;width:100%" placeholder="제목을 입력하세요" required>
							</div>
			
							</div>
							
							<div class="row" style="margin:20px 10px 0px 10px ">
							<div class="col-sm-12" >
							<textarea class="form-control" id="content" weight="30%" placeholder="내용을 입력하세요" id="summernote" name="content">
	
							</textarea><br>
							<script>
								$('#summernote').summernote({
								  height: 600,                 // set editor height
								  minHeight: null,             // set minimum height of editor
								  maxHeight: null,             // set maximum height of editor
								  focus: true                  // set focus to editable area after initializing summernote
								});  
							</script>					
							</div>
						</div>
						
						<div class="row" style="text-align:center">
							
							<div class="input-group-btn">
							<button type="button" class="btn btn-default" style="margin:10px 0 ">글쓰기</button>
							</div>
						</div>
						</form>
	   					
   						<!-- 글쓰기 끝 -->
   					
  					</div>      		 
      			</div>
			</div>
		</div>
		<div class="row" style="height:30px"></div>
	
	
<!--------------- sidebar row close  ------------------>
	</div>
</div>
<!---------------  여기부터 footer 및 좌우여백  ------------------>
</div>
<div class="col-sm-1"></div>
</div>