<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType = "text/html;charset=utf-8" %>

<%@include file="WEB-INF/views/common/header.jsp"%>

<div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-body">
				${board_title}
			</div>
		</div>
		<table class="table">
		<tr>
			<td style="width:70px;text-align:center;background-color:#efefef">번호</td>
			<td style="text-align:center;background-color:#efefef">제목</td>
			<td style="width:100px;text-align:center;background-color:#efefef">작성자</td>
			<td style="width:150px;text-align:center;background-color:#efefef" class="hidden-xs">작성일</td>
		</tr>
	    <c:forEach items="${list}" var="data" varStatus="idx">
	    <tr>
	      	<td align="center">  	
	      		<c:out value="${listCount}" />
	      		<c:set var="listCount" value="${listCount - 1}"/>
	      	</td>
	      	<td>
	      		<c:out value="${data.title}" />
	      		<c:if test="${!empty data.file1}"> - <i class="fa fa-file" aria-hidden="true"></i></c:if>
	      	</td>
	      	<td align="center"><c:out value="${data.member_nick}" /></td>
	      	<td align="center" class="hidden-xs">
	      		<c:set var="regDate" value="${fn:substring(data.regDate, 0, 10)}" />
	      		<c:out value="${regDate}" />
	      	</td>
		</tr>
	    </c:forEach>
		</table>
		<div style="text-align:center;">
			<nav>
			  <ul class="pagination">
			    <li>
			      <a href="javascript:goPage(${paging.firstPageNo})" aria-label="Previous">
			        <span aria-hidden="true">&laquo;&laquo;</span>
			      </a>
			    </li>
			    <li>
			      <a href="javascript:goPage(${paging.prevPageNo})" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
			    <li>
		            <c:choose>
		                <c:when test="${i eq paging.pageNo}"><a href="javascript:goPage(${i})">${i}</a></c:when>
		                <c:otherwise><a href="javascript:goPage(${i})">${i}</a></c:otherwise>
		            </c:choose>
				</li>	            
			    </c:forEach>
			    <li>
			      <a href="javascript:goPage(${paging.nextPageNo})" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			    <li>
			      <a href="javascript:goPage(${paging.finalPageNo})" aria-label="Next">
			        <span aria-hidden="true">&raquo;&raquo;</span>
			      </a>
			    </li>		    
			  </ul>
			</nav>
		</div>
		<div>
			<button type="button" class="btn btn-success" onclick="location.href='boardWrite?board_id=${param.board_id}';"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 글쓰기</button>
		</div>
	</div>
</div>

<%@include file="WEB-INF/views/common/footer.jsp"%>