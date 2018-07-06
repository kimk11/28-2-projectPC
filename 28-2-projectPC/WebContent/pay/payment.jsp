
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
	<button type="button" id="btnLog">로그인</button>
	<%
	}else {
	%>
	<button type="button" id="btnLogout"><a href="./payLogout.jsp">로그아웃</a></button><br>
	
	<!-- 현재 남은 시간 -->
	<div><%=userName %> 님</div>
	<div>
		<label>현재 남은 시간 : </label>
		<span>
		<%
			if(addTime<60){
				out.print((addTime%60)+"분");
			}else if(addTime%60!=0){
				out.print((addTime/60)+"시간 "+(addTime%60)+"분");
			}else{
				out.print((addTime/60)+"시간 ");
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