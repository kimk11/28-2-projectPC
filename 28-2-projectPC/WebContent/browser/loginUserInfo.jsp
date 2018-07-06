<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.userDAO.UserDAO" %>
<%@ page import="pc.DTO.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/loginUserInfo.css" />

<style type="text/css">
	table {
	margin: 0 auto;
	margin-top: 80px;
}
</style>

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
			<form action="<%= request.getContextPath() %>/seat/seatLogout.jsp" method="post">
				<table>
					<tr>
						<td>
							<input type="hidden" name="userId" value="<%= userId %>">
							<input type="image" src="<%= request.getContextPath() %>/image/logout.JPG" value="종료" width="50px" height="50px">
						</td>
					</tr>
				</table>
			</form>
		
		</div>
			
		<div id="right">
			<span id="aline1">좌석번호 : <%= userDto.getSeatNo() %></span><br>
			<span id="aline2">남은시간 : <%= userDao.userGetTime(userDto) %></span><br>
			<span id="aline3">사용자 이름 : <%= userDto.getUserName() %></span>
		</div>
	</div>
</body>
</html>