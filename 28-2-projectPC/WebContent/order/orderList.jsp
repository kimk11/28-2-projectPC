<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.orderDAO.OrderDAO" %>
<%@ page import="pc.DTO.OrderDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>주문 내역 리스트</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/orderList.css" />

</head>
<body>
<br><br>
	<span id="orderTitle">현재 주문 목록</span>
<br><br>
	<%
		request.setCharacterEncoding("euckr");
		String userId = (String)session.getAttribute("sessionId");
		
		OrderDAO orderDao = new OrderDAO();
		ArrayList<OrderDTO> arOrderList= orderDao.orderOneHistory(userId);
		int allPrice = 0;
	%>
		<table id = "orderList">
			<tr>
				<th>상품명</th><th>가격</th>
			</tr>
	<%
		
		for(int i=0 ; i<arOrderList.size() ; i++){
			OrderDTO orderDto = arOrderList.get(i);
			allPrice += orderDto.getGoodsPrice();
	%>
			<tr>
				<td><%= orderDto.getGoodsName() %></td>
				<td><%= orderDto.getGoodsPrice() %></td>
			</tr>
			
	<%
		}
	%>
		</table>
		<br>
		
		<span id = "orderPrice">총 가격 : <%= allPrice %></span>
		
</body>
</html>