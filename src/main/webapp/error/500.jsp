<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setStatus(HttpServletResponse.SC_OK);
%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="reset.css">             
<style>
.img{
    position: relative;
    background-image: url(https://images.unsplash.com/photo-1455757618770-0a58b0b28ebd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=653479d4bc715c52a058e496bd75cf2a&auto=format&fit=crop&w=562&q=80);                                                               
    height: 100vh;
    background-size: cover;
}
.img-cover{
	   position: absolute;
	   height: 100%;
	   width: 100%;
	   background-color: rgba(0, 0, 0, 0.4);                                                                 
	   z-index:1;
	}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;
}
</style>                                     
</head>
<body>  
    <div class="img">
        <div class="content">
            <h1>이런!</h1>
            <h2>서버에 <br> 문제가 있어요</h2>
        </div>
        <div class="img-cover"></div>
    </div>
</body>
</html>