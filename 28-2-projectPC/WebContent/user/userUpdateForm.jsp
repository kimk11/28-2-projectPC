<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO"%>
<%@ page import = "pc.DTO.UserDTO"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userDetail</title>
	</head>
	<body>
	<%
		request.setCharacterEncoding("euc-kr");
		
		String userId = request.getParameter("userId");
		
		UserDAO userDao = new UserDAO();
		UserDTO userDto = userDao.userSelectForm(userId);
	%>
		<h1>회원 정보 수정</h1>
		<form action="<%= request.getContextPath() %>/user/userUpdateAction.jsp" method = "post">
			<table border = "1">
				<tr>
					<td>회원아이디</td>
					<td><input type = "text" name = userId value = "<%=userDto.getUserId()%>" readonly></td>
				</tr>
				<tr>
					<td>회원비밀번호</td>
					<td><input type = "text" name = userPw value = "<%=userDto.getUserPw()%>"></td>
				</tr>
				<tr>
					<td>회원권한</td>
					<td><input type = "text" name = userLevel value = "<%=userDto.getUserLevel()%>" readonly></td>
				</tr>
				<tr>
					<td>회원이름</td>
					<td><input type = "text" name = userName value = "<%=userDto.getUserName()%>" readonly></td>
				</tr>
				<tr>
					<td>잔여시간</td>
					<td><input type = "text" name = userTime value = "<%=userDto.getUserTime()%>"></td>
				</tr>
				<tr>
					<td>가입날짜</td>
					<td><input type = "text" name = userDate value = "<%=userDto.getUserDate()%>" readonly></td>
				</tr>
				<tr>
					<td>회원포인트</td>
					<td><input type = "text" name = userPoint value = "<%=userDto.getUserPoint()%>"></td>
				</tr>
				<tr>
					<td>현재회원자리</td>
					<td><input type = "text" name = seatNo value = "<%=userDto.getSeatNo()%>"></td>
				</tr>
			</table>
			<div>
				<input type = "submit" value = "회원 정보 수정">
			</div>
		</form>
	</body>
</html>