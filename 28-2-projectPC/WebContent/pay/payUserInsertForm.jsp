<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userInsertForm</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/form.css" />
	</head>
	<body>
		<form action="<%=request.getContextPath()%>/pay/payUserInsertAction.jsp" method="post">
				<h2>PC방 회원가입</h2>
				<div class="group">
					<input type="text"  name="userId" size="10px" placeholder="ID"> 
					<span class="bar"></span><br>
				</div>
				<div class="group">
					<input type="password" name="userPw" size="10px" placeholder="PW">
					<span class="bar"></span>
				</div>
					<div class="group">
					<input type="text"  name="userName" size="10px" placeholder="Name">
					<span class="bar"></span>
				</div>
				<div>
					<button type="submit" class="button buttonBlue">회원가입</button>
				</div>
			</form>
	</body>
</html>

			