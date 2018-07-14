<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.userDAO.UserDAO"%>
<%@ page import="pc.DTO.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("euc-kr");%>
	<jsp:useBean id="userDto" class="pc.DTO.UserDTO"/>
	<jsp:setProperty property="*" name="userDto"/>
<%
	UserDAO userDao = new UserDAO();
	int check = userDao.userLoginCheck(userDto);
	
	System.out.println(userDto.getUserId()+"<<<userid");
	System.out.println(userDto.getUserPw()+"<<<userpw");
	System.out.println(check+"<<<check");
	
	if(0 == check){
		%>
		<script type="text/javascript">
			alert('로그인에 실패했습니다. 다시 로그인 해주세요');
			location.href='<%=request.getContextPath()%>/user/userLogin.jsp';
		</script>
		<%
	}else if(1 == check){
		%>
		<script type="text/javascript">
			alert('아이디가 틀렸습니다.');
			location.href='<%=request.getContextPath()%>/user/userLogin.jsp';
		</script>
		<%
	}else if(2 == check){
		%>
		<script type="text/javascript">
			alert('비밀번호가 틀렸습니다.');
			location.href='<%=request.getContextPath()%>/user/userLogin.jsp';
		</script>
		<%
	}else if(3 == check){
		userDto = userDao.seatLoginSession(userDto);
		session.setAttribute("sessionId", userDto.getUserId());
		session.setAttribute("sessionName", userDto.getUserName());
		session.setAttribute("sessionLevel", userDto.getUserLevel());
		
		response.sendRedirect(request.getContextPath()+"/user/userLogin.jsp");
	}else if(4 == check){
		%>
		<script type="text/javascript">
 		alert('접근 권한이 없습니다. 다시 로그인 해주세요');
 		location.href='<%=request.getContextPath()%>/user/userLogin.jsp'; 
 		</script>
 		<%
	}

%>
</body>
</html>