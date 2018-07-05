<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>seatSearchList</title>
</head>
<body>
<%@ include file="../AllSearch/AllSearch.jsp" %>
<%
request.setCharacterEncoding("euc-kr");

String search = request.getParameter("search");
if(search.equals("상품검색")){
	%>
	<%@ include file="../goods/goodsSearchList.jsp"%>
	<%
}else{
	%>
	<%@ include file="../user/userSearchList.jsp"%>
	<%
}
%>
</body>
</html>