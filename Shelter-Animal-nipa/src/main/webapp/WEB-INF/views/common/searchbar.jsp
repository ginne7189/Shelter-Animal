<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
	
<script type="text/javascript">
</script>
</head>
<body>
				<!--검색영역-->
					<form name="searchFrm" method="post" action="/portal_rnl/abandonment/protection_list.jsp">				
					<input type="hidden" id="pagecnt" name="pagecnt" value=""/>
				<div class="SearchArea02">
					<div class="searchList02">
						<span>
								<select class="selectList" id="selec" name="selec">
						                		<option value="1">이름</option>
						                		<option value="2">이메일</option>
						                		<option value="3">전화번호</option>
						                	
								</select>
						</span>		
						<span><input type="text" id="s_date" name="s_date" class="tcal" size="15" maxlength="10" placeholder="검색어를 입력하세요"/></span>
						<span class="resultBtn">
							<input type="button" style="height:30px;" class="btn btn-outline-primary" id="select_img3"  value="검색" />
						</span>
					</div>
				</div>
				</form>
				<!--//검색영역-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>