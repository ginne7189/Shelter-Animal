<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!--header 삽입-->
<!DOCTYPE html>
<html>
<head>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- jquery 달력(jQuery UI CSS파일 jQuery, jQuery 기본 js파일, jQuery UI 라이브러리 js파일)-->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>    
<meta charset="UTF-8">
 
<style>
.sidebar{
	position:fixed;
}
.card-img-top{
	width : 100%;
	height : 300px;
}
.container-fluid{
	width : 88%;
}
h1:after{
  content: "";
        display: block;
        width: 60px;
        border-bottom: 2px solid #bcbcbc;
        margin: 20px auto;
}
.button1 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}
.button2 {
    background-color: #008CBA;
    color: white;
 	border: none;
     padding: 12px 20px;
     text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
}
.button {
    background-color: #008CBA; 
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
}

</style>
<script>

function emptycheck(){
	if($('#summernote').summernote('isEmpty')){
		alert("내용을 입력하세요");
	}

}
function funLoad(){
	var Cheight = $(window).height();
	$('#container').css({'height':Cheight+'px'});
	
}
window.onload = funLoad;
window.onresize = funLoad;

//script구문 내부에 해당 메소드를 입력합니다.
$( function() {
    $( "#datepicker" ).datepicker();
   	 dateFormat: 'yy-mm-dd'
  } );
</script>
</head>
<body style="background-color:#EEEEEE;padding:0px; margin:0px;">
<%-- <%@include file="../common/sidebar.jsp" %> --%>
<%@include file="WEB-INF/views/common/header.jsp"%>
<!-- content -->
	<div class="" style="text-align: center;">
	    <h2>실종 동물 등록</h2>
	    <h4>회원이실종동물등록하는 페이지입니다.</h4>
	</div>
    <!-- Page Content -->
    <div class="container-fluid" style="width:48%; display:inline-block; text-align:center; margin-left: 26%;margin-top:2%;">
<!-- 		<div class="col-sm-6" style="float:left;"> -->
		      <!-- Portfolio Item Heading -->
		      <h1 class="my-4" >실종동물 등록페이지</h1>
		       
	<div style="margin-top:10%">
	  <h3>실종정보</h3>	 
<form class="form" name="user_word" method="post">
   					 	<div class="row" style="margin:10px 10px 5px 10px ">
   					 		
   					 		<div class="col-sm-6">
									제목 : <input type="text" class="form-control" name="bwsubject" style="border-radius:5px;width:80%" placeholder="제목을 입력하세요" required></br>
									날짜 : <input type="text" class="form-control" name="bwsubject" placeholder="분실날짜를 입력하세요" id="datepicker" required><br>
									이름 : <input type="text" class="form-control" name="bwsubject" style="border-radius:5px;width:80%" placeholder="강아지이름을 입력하세요" required><br>
									종류 : <input type="text" class="form-control" name="bwsubject" style="border-radius:5px;width:80%" placeholder="강아지종류를 입력하세요" required><br>
									나이 : <input type="text" class="form-control" name="bwsubject" style="border-radius:5px;width:80%" placeholder="강아지나이를 입력하세요" required><br>

							</div>
							</div>							
							<div class="row" style="margin:20px 10px 0px 10px ">
							<div class="col-sm-12" >
							<textarea class="form-control" placeholder="내용을 입력하세요" id="summernote" name="editordata"></textarea><br>
							<script>
								$('#summernote').summernote({
								  height: 400,                 // set editor height
								  minHeight: null,             // set minimum height of editor
								  maxHeight: null,             // set maximum height of editor
								  focus: true                  // set focus to editable area after initializing summernote
								});  
							</script>					
							</div>
						</div>
						
						<div class="row" style="text-align:center">
							
							<div class="input-group-btn">
							<button type="button" class="btn btn-default" style="margin:10px 0 " onclick="javascript:emptycheck();">글쓰기</button>
							</div>
						</div>
						</form>
	
	    </div>
	    <!-- -->
		<hr>
		<h3 style="margin-top:20px;"></h3>
		</div>

  </body>
  <div class="jumbotron text-center" style="margin-bottom:0"> 
  <p>footer</p>
 </div>

</html>
