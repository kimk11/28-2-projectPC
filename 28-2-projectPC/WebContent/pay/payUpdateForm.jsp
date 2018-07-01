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
		<h1>��ǰ ����</h1>
		<div>
			<form action="<%= request.getContextPath() %>/pay/payUpdateAction.jsp" method="post">
				<div>
					<input type="hidden" name="paymentNo" value="<%= paymentNo %>">
				</div>
				<div>
					<label>���ױ� �� : </label>
					<input type="text" name="paymentName" value="<%= payDto.getPaymentName() %>">
				</div>
				<div>
					<label>���� �ð� : </label>
					<input type="text" name="paymentTime" value="<%= payDto.getPaymentTime() %>">
				</div>
				<div>
					<button type="submit">�Է�</button>
				</div>
			</form>
		</div>
	</div>
<%
	
%>
</body>
</html>