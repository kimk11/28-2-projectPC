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
		<h1>ȸ�� �� ����</h1>
			<table border = "1">
				<tr>
					<td>ȸ�����̵�</td>
					<td><%=userDto.getUserId()%></td>
				</tr>
				<tr>
					<td>ȸ����й�ȣ</td>
					<td><%=userDto.getUserPw()%></td>
				</tr>
				<tr>
					<td>ȸ������</td>
					<td><%=userDto.getUserLevel()%></td>
				</tr>
				<tr>
					<td>ȸ���̸�</td>
					<td><%=userDto.getUserName()%></td>
				</tr>
				<tr>
					<td>�ܿ��ð�</td>
					<td><%=userDto.getUserTime()%></td>
				</tr>
				<tr>
					<td>���Գ�¥</td>
					<td><%=userDto.getUserDate()%></td>
				</tr>
				<tr>
					<td>ȸ������Ʈ</td>
					<td><%=userDto.getUserPoint()%></td>
				</tr>
				<tr>
					<td>����ȸ���ڸ�</td>
					<td><%=userDto.getSeatNo()%></td>
				</tr>
			</table>
	</body>
</html>