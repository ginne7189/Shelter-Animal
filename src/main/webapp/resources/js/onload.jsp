<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function() {
	
$(".w3-bar-item").click(function() {
		alert("응??");
		$(".mvform").attr("action","${root}/sidebar/"+$(this).attr("value")+".animal").submit();
		
	});

