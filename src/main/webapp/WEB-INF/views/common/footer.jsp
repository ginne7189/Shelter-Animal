<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String root2 = request.getContextPath(); 


%>
<!-- #0 하단메뉴 -->

<script>

function memberArticleList(){
	
	document.getElementById("act").value = "memberArticleList";
	document.getElementById("bcode").value = 1;
	document.getElementById("pg").value = "";
	document.getElementById("key").value = "";
	document.getElementById("word").value = "";
	
	
	document.commonform.action = "<%=root2%>/board";
	document.commonform.submit();
	
}
</script>
<%
%>
<div class="row" style="background-color:#eee;color:#444;height:100px;padding:25px 20px" >
<div class="col-sm-10" align="left">
	<table>
	<tr>
	<td><a href="<%=root2 %>/index.jsp">메인으로 / </a></td>
	<td><a href="<%=root2 %>/store/storemain.jsp">가게상세 / </a></td>
	<td><a href="<%=root2 %>/register/register_store.jsp">가게등록 / </a></td>
	<a href="javascript:memberArticleList();"> 마이페이지 / </a></td>
	<td><a href="<%=root2 %>/admin/main.jsp">관리자 </a></td>
	</tr>
	
	</table>
</div>
<div class="col-md-2" align="right" >
	<b>copyright.</b> team FOODING
</div>
</div>


</body>
</html>