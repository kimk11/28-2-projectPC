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
			<option value="all">전체</option>
			<optgroup label="-------"></optgroup>
			<option value="goods1" >과자</option>
			<option value="goods2" >음료</option>
			<option value="goods3" >간식</option>
			<option value="goods4" >식품</option>

			
		</select>
		<input type="text" name="sv">
		<input type="submit" value="검색">
	</form>
</body>
</html> 