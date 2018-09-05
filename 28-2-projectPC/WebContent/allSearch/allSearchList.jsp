<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>AllSearchList</title>
</head>
<body>
<%
System.out.println("allSearch/allSearchList.jsp");
request.setCharacterEncoding("euc-kr");
%>
		<%@ include file="../allSearch/allSearch.jsp" %><br><br>
<%
String search = request.getParameter("search");

System.out.println(search+"<<<<<<search");
System.out.println(request.getParameter("search")+"request search");

if(request.getParameter("search")==null){
	search="";
}

if(search=="" || search ==null){
	%>
	
	<%@ include file="../user/userSearchList.jsp"%>
	
	<%
	
}else if(search.equals("상품검색")){
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