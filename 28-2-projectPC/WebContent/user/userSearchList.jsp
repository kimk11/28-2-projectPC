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
				<td>ȸ�����̵�</td>
				<td>ȸ����й�ȣ</td>
				<td>ȸ������</td>
				<td>ȸ���̸�</td>
				<td>�ܿ����ð�</td>
				<td>ȸ�����Գ�¥</td>
				<td>ȸ������Ʈ</td>
				<td>����ȸ���ڸ�</td>
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
		<a href="./userSearchList.jsp?currentPage=<%=currentPage - 1%>&searchKey=<%=searchKey%>&searchValue=<%=searchValue%>">�� ����</a>
	<%
		}
		int lastPage = rowNumber / rowPerPage;
		if (rowNumber % rowPerPage != 0) {
			lastPage++;
		}
		if (currentPage < lastPage){
	%>
		<a href="./userSearchList.jsp?currentPage=<%=currentPage + 1%>&searchKey=<%=searchKey%>&searchValue=<%=searchValue%>">���� ��</a>
	<%
		}
	%>
	</body>
</html>