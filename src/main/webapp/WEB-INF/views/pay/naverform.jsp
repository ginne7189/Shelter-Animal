<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>

<html>
<head></head>
<body>
	<input type="number" id="money" value="" placeholder="기부할 금액" />
	원 기부하기
	<br>
	<br>
	<!--// mode : development or production-->
	<button style="background-color: white;" onclick="javascript:naverPay();">
		<img class="btn-img" src="${root }/resources/img/naverPayBtn.jpg" width="100">
	</button>
	<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
	<script>
		var oPay = Naver.Pay.create({
			"mode" : "production", // development or production
			"clientId" : "u86j4ripEt8LRfPGzQ8" // clientId
		});

		//직접 만드신 네이버페이 결제버튼에 click Event를 할당하세요  
		function naverPay() {
			var money = document.getElementById("money").value;
			if (money == null || money == "") {
				return;
			}
			oPay.open({
					"merchantUserKey" : "assdf",
					"merchantPayKey" : "1001",
					"productName" : "기부하기",
					"totalPayAmount" : money,
					"taxScopeAmount" : money,
					"taxExScopeAmount" : "0",
					"returnUrl" : "http://${myIP}/animalshelter/payment.animal?money=" + money
			});
		}
	</script>
</body>
</html>