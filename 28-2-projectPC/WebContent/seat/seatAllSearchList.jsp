<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>seatSearchList</title>
</head>
<body>
<%
	String goods = request.getParameter("goods");
	String user = request.getParameter("user");
	String order = request.getParameter("order");
	
	if(goods != null && user == null && order == null){
		out.print(request.getParameter("goods"));
		%>
		<%@ include file="../goods/goodsUpdateForm.jsp"%>
		<%
	}else if(goods == null && user !=null && order == null){
		out.print(request.getParameter("user"));
		%>
		<%@ include file="../seat/seatAllSearchList.jsp"%>
		<%
	}else{
		out.print(request.getParameter("order"));
		%>
		<%@ include file="../seat/seatAllSearchList.jsp"%>
		<%
	}
%>
	<%@ include file="../seat/seatAllSearch.jsp" %>


</body>
</html>