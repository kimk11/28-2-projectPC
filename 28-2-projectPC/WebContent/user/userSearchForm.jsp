<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>userSearchForm</title>
	</head>
	<body>
		<form action = "<%=request.getContextPath()%>/managerAllSearch.jsp" method = "post">
			<select name = "searchKey">
				<option value = "userAll">��ü</option>
				<option value = "userId">ȸ�����̵�</option>
				<option value = "userName">ȸ���̸�</option>
			</select>
			<input type = "text" name = "searchValue">
			<input type = "submit" value = "�˻�">
		</form>
	</body>
</html>