<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>AllSearchList</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");

String search = request.getParameter("search");

if(search.equals("상품검색")){
	%>
	<%@ include file="../goods/goodsSearchList.jsp"%>
	<%
}else if(search.equals("회원검색")){
	%>
	<%@ include file="../user/userSearchList.jsp"%>
	<%
}
%>
</body>
</html>