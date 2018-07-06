<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>정액권결제와 좌석선택 payNseat.jsp</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/MainButton.css">
</head>
<body>
	<button type="button" id="payBtn">정액권결제</button>
	<button type="button" id="seatBtn">좌석선택</button>
</body>

<script>
	var payBtn = document.getElementById("payBtn");
	var seatBtn = document.getElementById("seatBtn");
	payBtn.addEventListener("click", function() {
		location.href='./pay/payment.jsp';
	});
	seatBtn.addEventListener("click", function() {
		location.href='./seat/seatList.jsp';
	});
</script>
</html>