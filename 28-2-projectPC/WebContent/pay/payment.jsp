
<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="pc.DTO.UserDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pc.payDAO.PayDAO"%>
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
	/* PayDAO payDao = new PayDAO(); */
	UserDTO userDto = new UserDTO();

	%>
	
	
	<%
	if(userId == null) {
	%>
	<button type="button" id="btnLog">�α���</button>
	<%
	}else {
	%>
	<button type="button" id="btnLogout"><a href="./payLogout.jsp">�α׾ƿ�</a></button><br>
	
	<!-- ���� ���� �ð� -->
	<div><%=userName %> ��</div>
	<div>
		<label>���� ���� �ð� : </label>
		<span>
		<%
			if(addTime<60){
				out.print((addTime%60)+"��");
			}else if(addTime%60!=0){
				out.print((addTime/60)+"�ð� "+(addTime%60)+"��");
			}else{
				out.print((addTime/60)+"�ð� ");
			}
		%>
		</span>
	</div>
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