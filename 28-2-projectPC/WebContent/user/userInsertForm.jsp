<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userInsertForm</title>
	</head>
	<body>
		<h1>PC방 회원가입</h1>
		<form action = "<%=request.getContextPath()%>/user/userInsertAction.jsp" method = "post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type = "text" name = userId></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type = "password" name = userPw></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type = "text" name = userName></td>
				</tr>
				<tr>
					<td><input type = "submit" value="회원가입"></td>
				</tr>
			</table>
		</form>
	</body>
</html>