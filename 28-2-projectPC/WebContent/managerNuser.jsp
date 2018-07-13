<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/MainButton.css">
<body>
	<button type="button" id="managerBtn">관리자</button>
	<button type="button" id="userBtn">회원</button>
	
	
	
	<script>
		var managerBtn = document.getElementById("managerBtn");
		var userBtn = document.getElementById("userBtn");
		managerBtn.addEventListener("click", function() {
			location.href='./user/userLogin.jsp';
		});
		userBtn.addEventListener("click", function() {
			location.href='./payNseat.jsp';
		});
	</script>

</body>
</html>