<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>상품 등록</h1>
		<div>
			<form action="<%= request.getContextPath() %>/pay/payInsertAction.jsp" method="post">
				<div>
					<label>정액권 명 : </label>
					<input type="text" name="paymentName">
				</div>
				<div>
					<label>충전 시간 : </label>
					<input type="text" name="paymentTime">
				</div>
				<div>
					<button type="submit">입력</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>