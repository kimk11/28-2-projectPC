<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>��ǰ ���</h1>
		<div>
			<form action="<%= request.getContextPath() %>/pay/payInsertAction.jsp" method="post">
				<div>
					<label>���ױ� �� : </label>
					<input type="text" name="paymentName">
				</div>
				<div>
					<label>���� �ð� : </label>
					<input type="text" name="paymentTime">
				</div>
				<div>
					<button type="submit">�Է�</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>