<!-- 2018.07.04 송유빈 -->
<!-- goodsDeleteAction.jsp -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.goodsDAO.GoodsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int code = Integer.parseInt(request.getParameter("code"));
	GoodsDAO goodsDao = new GoodsDAO();
	goodsDao.deleteGoods(code);
	
	response.sendRedirect(request.getContextPath()+"/managerAllSearch.jsp");
%>
</body>
</html>