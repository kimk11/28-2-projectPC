<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<style>
	#btnLog, #btnLogout {
		width : 100px;

	}
</style>
</head>
<body>

<%-- 	<%@ include file="./payLogin.jsp" %> --%>
	<%@ include file="./payList.jsp" %>
	
	
	
	<%
	if(userId == null) {
	%>
	<button type="button" id="btnLog">�α���</button>
	<%
	}else {
	%>
	<button type="button" id="btnLogout"><a href="./payLogout.jsp">�α׾ƿ�</a></button>
	<%
	}
	%>
	
	<script>
	var btnLog = document.getElementById("btnLog");
	btnLog.addEventListener("click", function() {
		location.href ="./payLogin.jsp";
	});
	</script>
</body>
</html>