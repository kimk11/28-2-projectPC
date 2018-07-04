<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO" %>
<%@ page import = "pc.DTO.UserDTO" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userList</title>
	</head>
	<body>
		<table border ="1">
			<tr>
				<td>회원아이디</td>
				<td>회원이름</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>
		
	<%
		UserDAO userDao = new UserDAO();
		
		int rowNumber = userDao.countUser();
		
		int currentPage = 1;
		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int rowPerPage = 5;
		
		int begin = (currentPage - 1) * rowPerPage;
		int end = begin + (rowPerPage - 1);
			if (end > rowNumber - 1) {
				end = rowNumber;
			}
			
		ArrayList<UserDTO> list = userDao.userSelectByPage(begin, rowPerPage);
		System.out.println(list + "<-- list");
		
		for(int i=0;i<list.size();i++){
			UserDTO user = list.get(i);
	%>
			<tr>
				<td><a href = "<%= request.getContextPath() %>/user/userDetail.jsp?userId=<%=user.getUserId()%>"><%=user.getUserId()%></a></td>
				<td><%=user.getUserName()%></td>		
				<td><a href = "<%= request.getContextPath() %>/user/userUpdateForm.jsp?userId=<%=user.getUserId()%>">수정</a></td>
				<td><a href = "<%= request.getContextPath() %>/user/userDeleteAction.jsp?userId=<%=user.getUserId()%>">삭제</a></td>
			</tr>
	<%
		}
	%>
		</table>
	<%
		if (currentPage > 1) {
	%>
		<a href="./userList.jsp?currentPage=<%=currentPage - 1%>">◀ 이전</a>
	<%
		}
		int lastPage = rowNumber / rowPerPage;
		if (rowNumber % rowPerPage != 0) {
			lastPage++;
		}
		if (currentPage < lastPage){
	%>
		<a href="./userList.jsp?currentPage=<%=currentPage + 1%>">다음 ▶</a>
	<%
		}
	%>
	</body>	
</html>