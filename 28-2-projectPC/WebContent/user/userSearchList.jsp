<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.userDAO.UserDAO" %>
<%@ page import ="pc.DTO.UserDTO"%>
<%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userSearchAction</title>
		
		<style type="text/css">
			table {
				margin: 0 auto;
			}
		</style>
		
	</head>
	<%@ include file="../AllSearch/AllSearch.jsp" %><br><br>
	<%@ include file="../user/userSearchForm.jsp" %><br><br>
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
				<td>����</td>
				<td>����</td>
			</tr>
	<%
		request.setCharacterEncoding("euc-kr");
		
	
		int currentPage = 1;
		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		String searchKey = request.getParameter("searchKey");
		if(searchKey == null){
			searchKey = "";
		}
		String searchValue = request.getParameter("searchValue");
		if(searchValue == null){
			searchValue = "";
		}
		
		UserDAO userDao = new UserDAO();
		
		int rowNumber = userDao.userCountSearch(searchKey, searchValue);

		
		int rowPerPage = 5;
		
		int begin = (currentPage - 1) * rowPerPage;
		int end = begin + (rowPerPage - 1);
			if (end > rowNumber - 1) {
				end = rowNumber;
			}
			
		
		ArrayList<UserDTO> list = userDao.userSelectSearch(searchKey, searchValue, begin, rowPerPage);
		
		for(int i = 0; i < list.size(); i++){
			UserDTO userDto = list.get(i);
	%>
			<tr>
				<td><%=userDto.getUserId()%></td>
				<td><%=userDto.getUserPw()%></td>
				<td><%=userDto.getUserLevel()%></td>
				<td><%=userDto.getUserName()%></td>
				<td><%=userDto.getUserTime()%></td>
				<td><%=userDto.getUserDate()%></td>
				<td><%=userDto.getUserPoint()%></td>
				<td><%=userDto.getSeatNo()%></td>
				<td><a href = "<%= request.getContextPath() %>/user/userUpdateForm.jsp?userId=<%=userDto.getUserId()%>">����</a></td>
				<td><a href = "<%= request.getContextPath() %>/user/userDeleteAction.jsp?userId=<%=userDto.getUserId()%>">����</a></td>
			</tr>
	<%
		}
	%>
		</table>
	<%
		if (currentPage > 1) {
	%>
		<a href="../AllSearch/AllSearchList.jsp?currentPage=<%=currentPage - 1%>&searchKey=<%=searchKey%>&searchValue=<%=searchValue%>&search=ȸ���˻�">�� ����</a>
	<%
		}
		int lastPage = rowNumber / rowPerPage;
		if (rowNumber % rowPerPage != 0) {
			lastPage++;
		}
		if (currentPage < lastPage){
	%>
		<a href="../AllSearch/AllSearchList.jsp?currentPage=<%=currentPage + 1%>&searchKey=<%=searchKey%>&searchValue=<%=searchValue%>&search=ȸ���˻�">���� ��</a>
	<%
		}
	%>
	</body>
</html>