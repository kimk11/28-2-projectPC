<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action = "<%=request.getContextPath()%>/goods/goodsSearchList.jsp" method = "post">
		<select name="sk">
			<option value="all">��ü</option>
			<optgroup label="-------"></optgroup>
			<option value="goods1" >����</option>
			<option value="goods2" >����</option>
			<option value="goods3" >����</option>
			<option value="goods4" >��ǰ</option>

			
		</select>
		<input type="text" name="sv">
		<input type="submit" value="�˻�">
	</form>
</body>
</html> 