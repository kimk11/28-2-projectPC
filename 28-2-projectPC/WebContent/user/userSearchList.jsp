<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.userDAO.UserDAO" %>
<%@ page import ="pc.DTO.UserDTO"%>
<%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userSearchAction</title>
	</head>
	<%@ include file="../user/userSearchForm.jsp" %><br>
	<body>
		<table border ="1">
			<tr>
				<td>회원아이디</td>
				<td>회원비밀번호</td>
				<td>회원권한</td>
				<td>회원이름</td>
				<td>잔여사용시간</td>
				<td>회원가입날짜</td>
				<td>회원포인트</td>
				<td>현재회원자리</td>
			</tr>
	<%
		request.setCharacterEncoding("euc-kr");
		
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
		UserDAO userDao = new UserDAO();
		
		int rowNumber = userDao.userCountSearch(searchKey, searchValue);
		
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
			
		
		ArrayList<UserDTO> list = userDao.userSelectSearch(searchKey, searchValue, begin, rowPerPage);
		
		for(int i = 0; i < list.size(); i++){
			UserDTO userDTO = list.get(i);
	%>
			<tr>
				<td><%=userDTO.getUserId()%></td>
				<td><%=userDTO.getUserPw()%></td>
				<td><%=userDTO.getUserLevel()%></td>
				<td><%=userDTO.getUserName()%></td>
				<td><%=userDTO.getUserTime()%></td>
				<td><%=userDTO.getUserDate()%></td>
				<td><%=userDTO.getUserPoint()%></td>
				<td><%=userDTO.getSeatNo()%></td>
			</tr>
	<%
		}
	%>
		</table>
	<%
		if (currentPage > 1) {
	%>
		<a href="./userSearchList.jsp?currentPage=<%=currentPage - 1%>&searchKey=<%=searchKey%>&searchValue=<%=searchValue%>">◀ 이전</a>
	<%
		}
		int lastPage = rowNumber / rowPerPage;
		if (rowNumber % rowPerPage != 0) {
			lastPage++;
		}
		if (currentPage < lastPage){
	%>
		<a href="./userSearchList.jsp?currentPage=<%=currentPage + 1%>&searchKey=<%=searchKey%>&searchValue=<%=searchValue%>">다음 ▶</a>
	<%
		}
	%>
	</body>
</html>