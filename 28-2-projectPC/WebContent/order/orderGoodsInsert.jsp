<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.DTO.OrderDTO" %>
<%@ page import="pc.DTO.GoodsDTO" %>
<%@ page import="pc.DTO.UserDTO" %>
<%@ page import="pc.orderDAO.OrderDAO" %>
<%@ page import="pc.userDAO.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String userId = (String)session.getAttribute("sessionId");
	int goodsCode = Integer.parseInt(request.getParameter("goodsCode"));

	OrderDAO orderDao = new OrderDAO();
	GoodsDTO goodsDto = orderDao.orderOneSelect(goodsCode);
	
	UserDAO userDao = new UserDAO();
	UserDTO userDto = userDao.userSelectForm(userId);
	
	int check = orderDao.orderInsert(goodsDto, userDto);
	if(0 == check){
		%>
		<script type="text/javascript">
			alert('주문에 실패했습니다.');
			location.href='<%=request.getContextPath()%>/browser/loginBrowserOrder.jsp';
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
			location.href='<%=request.getContextPath()%>/browser/loginBrowserOrder.jsp';
		</script>
		<%
	}
%>
</body>
</html>