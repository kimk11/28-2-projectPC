<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euckr");
%>
	<jsp:useBean id="userDto" class="pc.DTO.UserDTO"/>
	<jsp:setProperty property="*" name="userDto"/>
<%

%>
</body>
</html>