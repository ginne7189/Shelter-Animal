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
<script type="text/javascript" src="<%=root %>/js/httpRequest.js"></script>
<style type="text/css">
.f_size{
font-size:18px;
text-align:center;
}
</style>
<script type="text/javascript">
	var goodToGo = false;

	function nameCheck(){
		var text = document.getElementById('name').value;
		text = text.replace(/[^ㄱ-ㅎ|^ㅏ-ㅣ|^가-힣]$/, ''); // 한글아니면 제거
		document.getElementById("name").value = text;
	}

	function pwdLengthCheck() {
		var x = document.getElementsByClassName("pwd_advise");
		var text = document.getElementById('pwd').value;
		var result;
		if (text.length < 8) {
			result = "비밀번호가 너무 짧습니다.";
		} else {
			result = "사이즈는 적합합니다.";
		}

		pwdReset();
		x[0].innerText = result;
	}

	function pwdReset() {
		var text = document.getElementById('pwdChk');

		if (text != null) {
			document.getElementById('pwdChk').value = null;
			document.getElementsByClassName("pwd_check")[0].innerText = "";
		}
	}

	function pwdSameChk() {
		var x = document.getElementsByClassName("pwd_check");
		var result;
		if (document.getElementById("pwd").value != document
				.getElementById("pwdChk").value) {
			result = "비밀번호가 다릅니다.";
		} else {
			result = "비밀번호가 일치합니다.";
		}

		x[0].innerText = result;
	}

	function telChk() {
		var text = document.getElementById('tel').value;
		document.getElementById('tel').value = phone_format(text);
	}

	function phone_format(num) {
		num = num.replace(/[^0-9]/g, '');
		return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,
				"$1-$2-$3");
	}

	function emailCheck(){
	    var xmlhttp = new XMLHttpRequest();
	    var userEmail = document.forms["register_form"]["email"].value;
	    if(userEmail.indexOf("@")==-1){
	    	return;
	    }
	    var url = "<%=root%>/register/emailexist.jsp?email=" + userEmail;
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("email_check").style.color = "red";
				var result = xmlhttp.responseText;
				result = result.replace(/\s+/, "");//왼쪽 공백제거
				result = result.replace(/\s+$/g, "");//오른쪽 공백제거
				result = result.replace(/\n/g, "");//행바꿈제거
				result = result.replace(/\r/g, "");//엔터제거
				var showTxt;
				if(result == "ok"){
					showTxt = "이 이메일은 사용이 가능합니다.";
					goodToGo = true;
				}else{
					showTxt = "이미 등록된 이메일 입니다.";
					goodToGo = false;
				}
				document.getElementById("email_check").innerHTML = showTxt;
			}
		}
		try {
			xmlhttp.open("GET", url, true);
			xmlhttp.send();
		} catch (e) {
			alert("unable to connect to server");
		}
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
</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
   <div class="container-fluid hm_register">
      <br>
      <div style="text-align:center"><h2><b>회원가입</b></h2>
      <font color="#D5D5D5">―――――――――――――――――――――――――――――――――――――――</font><br><br></div>
      <form name="register_form" method="post" action="<%=root%>/member" id="register_form"
         onsubmit="return checkRegister()">
         <input type="hidden" name="act" value="register_basic">
         <table style="margin-left:auto; margin-right:auto; cellspacing:20">
               
               <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">E-mail</div>
                     </div></td>
                  <td >
                  <input   class="form-control" type="email" id="email" value="" size="54" required onblur="javascript:emailCheck()"
                     placeholder="abc123@naver.com" name="email" maxlength="30" style="width:320px; height:45px;"></td>
               </tr>
               <tr>
                  <td colspan="2">
                  <p class="register_advise email_check" id="email_check" style="text-align:right"></p></td>
                  </tr>  
               
            <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">PW</div>
                     </div></td>
                  <td>
                  <input class="form-control" type="password" id="pwd" name="pwd" value="" maxlength="16" size="54"
                     placeholder="패스워드" pattern=".{8,16}" required maxlength="16" title="8 to 16 characters" onkeyup="javascript:pwdLengthCheck()"
                  style="width:320px; height:45px;">
                  </td>
               </tr>   
                  <tr>
                  <td colspan="2">
                  <p class="register_advise pwd_advise" style="text-align:right; color: red;"></p></td>
                  </tr>
                  
            <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">PW 확인</div>
                     </div></td>
                  <td>
                  <input class="form-control" type="password" id="pwdChk" name="pwd" value="" maxlength="16" size="54"
                     placeholder="비밀번호 확인" required maxlength="16" onkeyup="javascript:pwdSameChk()"
                  style="width:320px; height:45px;">
                  </td>
               </tr>   
                  <tr>
                  <td colspan="2">
                  <p class="register_advise pwd_check" style="text-align:right; color: red;"></p></td>
                  </tr>            
               <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">이름</div>
                     </div></td>
                  <td >
                  <input   class="form-control" type="text" id="name" value="" size="54" onkeyup="javascript:nameCheck()"
                     placeholder="홍길동" name="name" required maxlength="5"   style="width:320px; height:45px;"></td>
               </tr>
               <tr>
                  <td colspan="2">
                  <p class="register_advise" ></p></td>
                  </tr>   
               <tr style="height: 25px;">
                  <td style="vertical-align:middle"><div
                        class="register_form_txt">
                        <div class="f_size">연락처</div>
                     </div></td>
                  <td ><input
                     class="form-control" type="tel" class="tel" id="tel" value=""
                     size="54" placeholder="01012345678" onkeyup="javascript:telChk()"
                     required name="tel" maxlength="13" style="width:320px; height:45px;"
                     ></td>
               </tr>
         </table>
         <div style="text-align:center"><font color="#D5D5D5">―――――――――――――――――――――――――――――――――――――――</font><br><br>
         <button class="form-control" type="submit" name="btn_register" style="margin-left:60px; width:450px; height:50px;"><font size="5"><b>회원가입</b></font></button></div>
      </form>
   </div>
</body>
</html>