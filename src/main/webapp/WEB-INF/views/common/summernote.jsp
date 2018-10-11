<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <meta charset="UTF-8">
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>


<script>
function memberWriteArticle(){


 		if(document.user_word.subject.value == ""){
 			alert("제목을 입력하세요");
 			return;
 		}else if ($('#summernote').summernote('isEmpty')) {
 			  alert('editor content is empty');
 		
 		}
 		//document.getElementById("act").value = "memberWriteArticle";
 		//document.getElementById("bcode").value = 1;
		
	
		document.user_word.action = "/board"; 
		document.user_word.submit();
}
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
									<input type="text" class="form-control"  name="subject" style="border-radius:5px;width:100%" placeholder="제목을 입력하세요" required>
							</div>
			
							</div>
							
							<div class="row" style="margin:20px 10px 0px 10px ">
							<div class="col-sm-12" >
							<textarea class="form-control" weight="30%" placeholder="내용을 입력하세요" id="summernote" name="editordata">
							<table class="table table-bordered" style="margin-left:13%; margin-top:2%; width:80%; font-size:15px;">

	    <tbody>
	     <tr>
	        <td>단체 및 시설이름</td>
	        <td>괴산보호소</td>
	      </tr>
	     <tr>
	        <td>담당자 이름</td>
	        <td>유금순</td>
	      </tr>
	      <tr>
	        <td>주소</td>
	        <td>충청북도 괴산</td>
	      </tr>
	      <tr>
	        <td>봉사종류</td>
	        <td>산책봉사</td>
	      </tr>
	   
	      <tr>
	        <td>봉사기간</td>
	        <td>2018/10/10~2018/10/12</td>
	      </tr>
	      <tr>
	        <td>담당자 전화번호</td>
	        <td>010-1341-1222</td>
	      </tr>
	      
	    </tbody>
	  </table>
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
							<button type="button" class="btn btn-default" onclick="javascript:memberWriteArticle();" style="margin:10px 0 ">글쓰기</button>
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