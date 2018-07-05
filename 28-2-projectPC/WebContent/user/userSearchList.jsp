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
				<td>ȸ�����̵�</td>
				<td>ȸ����й�ȣ</td>
				<td>ȸ������</td>
				<td>ȸ���̸�</td>
				<td>�ܿ����ð�</td>
				<td>ȸ�����Գ�¥</td>
				<td>ȸ������Ʈ</td>
				<td>����ȸ���ڸ�</td>
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