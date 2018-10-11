<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
   String t1width = "30%";
   String t2width = "70%";
   String adviseHeight = "10px";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<style type="text/css">
.f_size{
font-size:18px;
/* font-weight:bold; */
/* vertical-align:center; */
text-align:center;
}
</style>
<script type="text/javascript">
var goodToGo = false;
	
	function goPopup(){
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	    var pop = window.open("<%=root%>/register/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	
	function checkRegister() {
		if (document.getElementById("pwd").value.length < 8) {
			return false;
		} else if (document.getElementById("pwd").value != document
				.getElementById("pwdChk").value) {
			alert("비밀번호를 확인하세요!!!");
			return false;
		} else if(goodToGo==false){
			return false;
		} 
	}

	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.register_form.zipCode.value = zipNo;
		document.register_form.addr1.value = roadAddrPart1 + " "
				+ roadAddrPart2;
		document.register_form.addr2.value = addrDetail;
	}
</script>
</head>
<body>
   <div class="container-fluid hm_register">
      <br>
      <!-- <p style="text-align: center; font-size: 30px">
         <b>회원가입</b>
      </p> -->
      <div style="text-align:center"><h2><b>상세정보기입</b></h2>
      <font color="#D5D5D5">―――――――――――――――――――――――――――――――――――――――</font><br><br></div>
      <form name="register_form" method="post" action="<%=root%>/member" id="register_form"
         onsubmit="return checkRegister()">
         <input type="hidden" name="act" value="register">
         <table style="margin-left:auto; margin-right:auto; cellspacing:20">
               
            <tr>
                  <td colspan="2">
                  <p class="register_advise pwd_advise" ></p></td>
                  </tr>   
               <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">우편번호</div>
                     </div></td>
                  <td><input
                     class="form-control" type="text" id="zipCode" value="" size="54"
                     placeholder="검색" name="zipCode" required maxlength="5" readonly onclick="javascript:goPopup();"
                     style="width:150px; height:45px;"></td>
               </tr>
               <tr>
                  <td colspan="2">
                  <p class="register_advise pwd_advise" ></p></td>
                  </tr>   
               <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">주소</div>
                     </div></td>
                  <td><input
                     class="form-control" type="text" id="addr1" value="" size="54" readonly onclick="javascript:goPopup();"
                     placeholder="" name="addr1" required maxlength="50"
                     style="width:320px; height:45px;"></td>
               </tr>
               
               <tr style="height: 25px;" >
                  <td style="width: <%=t1width%>; height: 21px;"><div
                        class="register_form_txt">
                        <h2></h2>
                     </div></td>
                  <td><input
                     class="form-control" type="text" id="addr2" value="" size="54"
                     placeholder="" name="addr2" required maxlength="50" readonly onclick="javascript:goPopup();"
                     style="width:320px; height:45px;"></td>
               </tr>
         </table>
         <div style="text-align:center"><font color="#D5D5D5">―――――――――――――――――――――――――――――――――――――――</font><br><br>
         <button class="form-control" type="submit" name="btn_register" style="margin-left:60px; width:450px; height:50px;"><font size="5"><b>JOIN</b></font></button></div>
      </form>
   </div>
</body>
</html>