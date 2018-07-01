<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.DTO.PayDTO" %>
<%@ page import="pc.payDAO.PayDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euckr");
	int paymentNo = Integer.parseInt(request.getParameter("paymentNo"));
	
	PayDAO payDao = new PayDAO();
	PayDTO payDto = payDao.payOneSelect(paymentNo);
%>
	<div>
		<h1>상품 수정</h1>
		<div>
			<form action="<%= request.getContextPath() %>/pay/payUpdateAction.jsp" method="post">
				<div>
					<input type="hidden" name="paymentNo" value="<%= paymentNo %>">
				</div>
				<div>
					<label>정액권 명 : </label>
					<input type="text" name="paymentName" value="<%= payDto.getPaymentName() %>">
				</div>
				<div>
					<label>충전 시간 : </label>
					<input type="text" name="paymentTime" value="<%= payDto.getPaymentTime() %>">
				</div>
				<div>
					<button type="submit">입력</button>
				</div>
			</form>
		</div>
	</div>
<%
	
%>
</body>
</html>