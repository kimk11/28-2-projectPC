<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="<%= request.getContextPath() %>/seat/seatInsertAction.jsp" method="post">
			<button type="submit">추가</button>
		</form>
	</div>
</body>
</html>