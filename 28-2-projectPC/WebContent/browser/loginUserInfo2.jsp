<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.userDAO.UserDAO" %>
<%@ page import="pc.DTO.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/loginUserInfo2.css" />




</head>
<body>
<%
	String userId = (String)session.getAttribute("sessionId");
	UserDAO userDao = new UserDAO();
	UserDTO userDto = new UserDTO();
	String info = "";
	
	if(session.getAttribute("sessionId")!= null ){
		userDto = userDao.userSelectDetail(userId);
		info = userDto.getSeatNo()+"<br>"+userDto.getUserTime()+"<br>"+userDto.getUserName();
	}
%>
	<div id="a">
		<div id="left">
			
		
		</div>
			
		<div id="right">
			<span id="aline1">�¼���ȣ : <%= userDto.getSeatNo() %></span><br>
			<span id="aline2">�����ð� : <%= userDao.userGetTime(userDto) %></span><br>
			<span id="aline3">����� �̸� : <%= userDto.getUserName() %></span>
		</div>
	</div>
</body>
</html>