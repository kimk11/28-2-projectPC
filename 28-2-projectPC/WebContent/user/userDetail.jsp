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
		UserDTO userDto = userDao.userSelectDetail(userId);
	%>
		<h1>회원 상세 정보</h1>
			<table border = "1">
				<tr>
					<td>회원아이디</td>
					<td><%=userDto.getUserId()%></td>
				</tr>
				<tr>
					<td>회원비밀번호</td>
					<td><%=userDto.getUserPw()%></td>
				</tr>
				<tr>
					<td>회원권한</td>
					<td><%=userDto.getUserLevel()%></td>
				</tr>
				<tr>
					<td>회원이름</td>
					<td><%=userDto.getUserName()%></td>
				</tr>
				<tr>
					<td>잔여시간</td>
					<td><%=userDto.getUserTime()%></td>
				</tr>
				<tr>
					<td>가입날짜</td>
					<td><%=userDto.getUserDate()%></td>
				</tr>
				<tr>
					<td>회원포인트</td>
					<td><%=userDto.getUserPoint()%></td>
				</tr>
				<tr>
					<td>현재회원자리</td>
					<td><%=userDto.getSeatNo()%></td>
				</tr>
			</table>
	</body>
</html>