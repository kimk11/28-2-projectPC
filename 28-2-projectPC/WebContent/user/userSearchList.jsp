<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.userDAO.UserDAO" %>
<%@ page import ="pc.DTO.UserDTO"%>
<%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userSearchAction</title>
	</head>
	<body>
		<table border ="1">
			<tr>
				<td>회원아이디</td>
				<td>회원비밀번호</td>
				<td>회원권한</td>
				<td>회원이름</td>
				<td>잔여사용시간</td>
				<td>회원가입날짜</td>
				<td>회원포인트</td>
				<td>현재회원자리</td>
			</tr>
	<%
		request.setCharacterEncoding("euc-kr");
		
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
			
		UserDAO userDao = new UserDAO();
		ArrayList<UserDTO> list = userDao.userSelectSearch(searchKey, searchValue);
		
		for(int i = 0; i < list.size(); i++){
			UserDTO userDTO = list.get(i);
	%>
			<tr>
				<td><%=userDTO.getUserId()%></td>
				<td><%=userDTO.getUserPw()%></td>
				<td><%=userDTO.getUserLevel()%></td>
				<td><%=userDTO.getUserName()%></td>
				<td><%=userDTO.getUserTime()%></td>
				<td><%=userDTO.getUserDate()%></td>
				<td><%=userDTO.getUserPoint()%></td>
				<td><%=userDTO.getSeatNo()%></td>
			</tr>
	<%
	}
	%>
		</table>
	</body>
</html>