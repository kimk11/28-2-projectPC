<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userDeleteAction</title>
	</head>
	<body>
	<%
		request.setCharacterEncoding("euc-kr");
	
		String userId = request.getParameter("userId");
		
		UserDAO userDao = new UserDAO();
		userDao.userDelete(userId);
		
		response.sendRedirect(request.getContextPath() + "/user/userList.jsp");
	%>
	</body>
</html>