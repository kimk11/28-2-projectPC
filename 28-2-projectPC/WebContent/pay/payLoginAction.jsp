<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.seatDAO.SeatDAO" %>
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
	SeatDAO seatDao = new SeatDAO();
	int check = seatDao.seatLoginCheck(userDto);
	
	System.out.println(userDto.getUserId()+"<<<userid");
	System.out.println(userDto.getUserPw()+"<<<userpw");
	System.out.println(check+"<<<check");
	
	if(0 == check){
		%>
		<script type="text/javascript">
			alert('로그인에 실패했습니다. 다시 로그인 해주세요');
			location.href='<%=request.getContextPath()%>/pay/payLogin.jsp';
		</script>
		<%
	}else if(1 == check){
		%>
		<script type="text/javascript">
			alert('아이디가 틀렸습니다.');
			location.href='<%=request.getContextPath()%>/pay/payLogin.jsp';
		</script>
		<%
	}else if(2 == check){
		%>
		<script type="text/javascript">
			alert('비밀번호가 틀렸습니다.');
			location.href='<%=request.getContextPath()%>/pay/payLogin.jsp';
		</script>
		<%
	}else if(3 == check){
		userDto = seatDao.seatLoginSession(userDto);
		session.setAttribute("sessionId", userDto.getUserId());
		session.setAttribute("sessionName", userDto.getUserName());
		request.setAttribute("check", "ok");
		
		%>
		<script type="text/javascript">
			location.href='<%=request.getContextPath()%>/pay/payment.jsp?check=1';
		</script>
		<%
	}

// 	response.sendRedirect(request.getContextPath()+"/seat/seatLogin.jsp");
%>
</body>
</html>