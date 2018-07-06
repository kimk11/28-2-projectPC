<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userUpdateAction</title>
	</head>
	<body>
		<% request.setCharacterEncoding("euc-kr"); %>
		<jsp:useBean id="userDto" class="pc.DTO.UserDTO"/>
		<jsp:setProperty name="userDto" property="*"/>
		
		<%
			UserDAO userDao = new UserDAO();
			userDao.userUpdate(userDto);
			
			response.sendRedirect(request.getContextPath()+"/managerAllSearch.jsp");
		%>
	</body>
</html>