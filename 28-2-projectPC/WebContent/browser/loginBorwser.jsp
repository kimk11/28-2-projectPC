<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/button.css" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/loginBrowser.css" />

</head>
<body>
	<div id="wrapper">
		<div id="topright"></div>
		<div id="orderbtn">
			<div class="bluelight">
				<a href="#">주문하기</a>
			</div>
		</div>
		<div id="orderlist"></div>
	</div>
</body>
</html>