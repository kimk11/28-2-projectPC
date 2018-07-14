<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.seatDAO.SeatDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>seatUpdateAction</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		
		String userId = request.getParameter("userId");
		System.out.println(userId);
		
		SeatDAO seatDao = new SeatDAO();
		seatDao.seatUpdateEnd(userId);
		
		response.sendRedirect(request.getContextPath() + "/managerAllSearch.jsp");
	%>
</body>
</html>