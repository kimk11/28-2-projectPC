<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userInsertForm</title>
	</head>
	<body>
		<h1>PC�� ȸ������</h1>
		<form action = "<%=request.getContextPath()%>/user/userInsertAction.jsp" method = "post">
			<table>
				<tr>
					<td>���̵�</td>
					<td><input type = "text" name = userId></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type = "password" name = userPw></td>
				</tr>
				<tr>
					<td>�̸�</td>
					<td><input type = "text" name = userName></td>
				</tr>
				<tr>
					<td><input type = "submit" value="ȸ������"></td>
				</tr>
			</table>
		</form>
	</body>
</html>