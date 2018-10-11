<%@page import="java.util.ArrayList"%>
<%@page import="com.animalshelter.dto.AnimalDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
List<AnimalDto> list = (List<AnimalDto>) session.getAttribute("animalInfo");
int index = Integer.parseInt(request.getParameter("index"));
%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Animal Detail</title>
</head>
<body>
<%
if(list!=null){
	%>
공고번호 : <%=list.get(index).getNoticeNo() %> <br>
유기번호 : <%=list.get(index).getDesertionNo() %> <br>
thumbnail : <img src=" <%=list.get(index).getFilename() %>"/> <br>
접수일 : <%=list.get(index).getHappenDt()%> <br>
발견장소 : <%=list.get(index).getHappenPlace() %> <br>
품종 : <%=list.get(index).getKindCd() %> <br>
색상 : <%=list.get(index).getColorCd() %> <br>
나이 : <%=list.get(index).getAge() %> <br>
체중 : <%=list.get(index).getWeight() %> <br>
공고시작일 : <%=list.get(index).getNoticeSdt() %> <br>
공고종료일 : <%=list.get(index).getNoticeEdt() %> <br>
Full size Image : <img src=" <%=list.get(index).getPopfile() %>"/> <br>
상태 : <%=list.get(index).getProcessState() %> <br>
성별 : <%=list.get(index).getSexCd() %> <br>
중성화여부 : <%=list.get(index).getNeuterYn() %> <br>
특징 : <%=list.get(index).getSpecialMark() %> <br>
보호소이름 : <%=list.get(index).getCareNm() %> <br>
보호소전화번호 : <%=list.get(index).getCareTel() %> <br>
보호장소 : <%=list.get(index).getCareAddr() %> <br>
관할기관 : <%=list.get(index).getOrgNm() %> <br>
담당자 : <%=list.get(index).getChargeNm() %> <br>
담당자연락처 : <%=list.get(index).getOfficetel() %> <br>
특이사항 : <%=list.get(index).getNoticeComment() %> <br>
<h1>밑에 지도 큼직막하게 해서 호출하기</h1>

	
	<% 
}else{
	%>
	Fuck!
	<%
}
%>
</body>
</html>