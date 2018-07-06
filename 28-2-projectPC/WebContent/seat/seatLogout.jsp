<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.seatDAO.SeatDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	
	String userId = request.getParameter("userId");
	SeatDAO seatDao = new SeatDAO();
	seatDao.seatUpdateEnd(userId);

	session.invalidate();	//세션 종료
	response.sendRedirect(request.getContextPath()+"/PCseatChoice.jsp");
%>
</body>
</html>